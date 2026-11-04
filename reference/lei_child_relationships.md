# Fetch the child relationship records of a LEI

Fetches the relationship records that link a LEI to its direct or
ultimate children. Where
[`lei_children()`](https://m-muecke.github.io/gleifr/reference/lei_children.md)
returns the children's own LEI records, this returns the relationships
themselves: their type, status, the periods they cover, and how they
were corroborated.

## Usage

``` r
lei_child_relationships(id, type = c("direct", "ultimate"), limit = 200L)
```

## Arguments

- id:

  (`character(1)`)  
  The Legal Entity Identifier (LEI) to fetch the child relationships
  for.

- type:

  (`character(1)`)  
  The type of child relationships to fetch. One of `"direct"` or
  `"ultimate"`. Default is `"direct"`.

- limit:

  (`NULL` \| `integer(1)`)  
  Maximum number of records to return. Default `200L`. Use `NULL` to
  fetch all.

## Value

A [`data.frame()`](https://rdrr.io/r/base/data.frame.html) with one row
per relationship and the same columns as
[`lei_parent_relationship()`](https://m-muecke.github.io/gleifr/reference/lei_parent_relationship.md),
where **start_node** is the child and **end_node** is `id`.

When the LEI has no children, `NULL`.

## See also

[`lei_parent_relationship()`](https://m-muecke.github.io/gleifr/reference/lei_parent_relationship.md)
for the relationship to the parent of a LEI,
[`lei_children()`](https://m-muecke.github.io/gleifr/reference/lei_children.md)
for the children's LEI records.

## Examples

``` r
# \donttest{
lei_child_relationships("O2RNE8IBXP4R0TD8PU41", limit = 5)
#>             start_node             end_node           relationship_type
#> 1 549300XOHLO9G78P6819 O2RNE8IBXP4R0TD8PU41 IS_DIRECTLY_CONSOLIDATED_BY
#> 2 549300R5KWVK6X3WAP35 O2RNE8IBXP4R0TD8PU41 IS_DIRECTLY_CONSOLIDATED_BY
#> 3 549300QV9DX9XDXFUI91 O2RNE8IBXP4R0TD8PU41 IS_DIRECTLY_CONSOLIDATED_BY
#> 4 549300ND75H8476SLO73 O2RNE8IBXP4R0TD8PU41 IS_DIRECTLY_CONSOLIDATED_BY
#> 5 549300LQ5CXFSZ26RJ04 O2RNE8IBXP4R0TD8PU41 IS_DIRECTLY_CONSOLIDATED_BY
#>   relationship_status relationship_period_start relationship_period_end
#> 1              ACTIVE                2017-12-21                    <NA>
#> 2              ACTIVE                2018-02-15                    <NA>
#> 3              ACTIVE                2017-11-27                    <NA>
#> 4              ACTIVE                2017-12-13                    <NA>
#> 5              ACTIVE                2021-11-26                    <NA>
#>   accounting_period_start accounting_period_end document_filing_period_start
#> 1              2021-01-01            2021-12-31                         <NA>
#> 2              2017-01-01            2017-12-31                         <NA>
#> 3              2017-01-01            2017-12-31                         <NA>
#> 4              2021-01-01            2021-12-31                         <NA>
#> 5              2020-01-01            2020-12-31                         <NA>
#>   document_filing_period_end initial_registration_date    last_update_date
#> 1                       <NA>       2016-01-07 02:33:00 2023-07-31 17:11:36
#> 2                       <NA>       2014-06-19 01:50:00 2023-07-31 17:11:36
#> 3                       <NA>       2015-09-22 02:17:00 2023-07-31 17:11:36
#> 4                       <NA>       2014-06-21 01:41:00 2023-07-31 17:11:36
#> 5                       <NA>       2014-06-25 01:44:00 2023-07-31 17:11:36
#>   registration_status   next_renewal_date         managing_lou
#> 1              LAPSED 2022-09-22 18:00:00 213800WAVVOPS85N2205
#> 2              LAPSED 2020-02-19 00:18:00 213800WAVVOPS85N2205
#> 3              LAPSED 2019-11-20 00:30:00 213800WAVVOPS85N2205
#> 4              LAPSED 2023-01-06 22:44:00 213800WAVVOPS85N2205
#> 5              LAPSED 2022-03-04 18:00:00 213800WAVVOPS85N2205
#>    corroboration_level corroboration_documents corroboration_reference
#> 1 ENTITY_SUPPLIED_ONLY    SUPPORTING_DOCUMENTS                    <NA>
#> 2 ENTITY_SUPPLIED_ONLY    SUPPORTING_DOCUMENTS                    <NA>
#> 3 ENTITY_SUPPLIED_ONLY    SUPPORTING_DOCUMENTS                    <NA>
#> 4 ENTITY_SUPPLIED_ONLY    SUPPORTING_DOCUMENTS                    <NA>
#> 5 ENTITY_SUPPLIED_ONLY    SUPPORTING_DOCUMENTS                    <NA>
#>   valid_from valid_to
#> 1 2023-08-10     <NA>
#> 2 2023-08-10     <NA>
#> 3 2023-08-10     <NA>
#> 4 2023-08-10     <NA>
#> 5 2023-08-11     <NA>

lei_child_relationships("O2RNE8IBXP4R0TD8PU41", type = "ultimate", limit = 5)
#>             start_node             end_node             relationship_type
#> 1 549300XOHLO9G78P6819 O2RNE8IBXP4R0TD8PU41 IS_ULTIMATELY_CONSOLIDATED_BY
#> 2 549300BKKCO12VBQBO45 O2RNE8IBXP4R0TD8PU41 IS_ULTIMATELY_CONSOLIDATED_BY
#> 3 549300ZWPEP00IULYV74 O2RNE8IBXP4R0TD8PU41 IS_ULTIMATELY_CONSOLIDATED_BY
#> 4 549300MW31Z3IK0WRG66 O2RNE8IBXP4R0TD8PU41 IS_ULTIMATELY_CONSOLIDATED_BY
#> 5 549300ND75H8476SLO73 O2RNE8IBXP4R0TD8PU41 IS_ULTIMATELY_CONSOLIDATED_BY
#>   relationship_status relationship_period_start relationship_period_end
#> 1              ACTIVE                2017-12-21                    <NA>
#> 2              ACTIVE                2017-10-19                    <NA>
#> 3              ACTIVE                2017-10-14                    <NA>
#> 4              ACTIVE                2018-03-13                    <NA>
#> 5              ACTIVE                2017-12-13                    <NA>
#>   accounting_period_start accounting_period_end document_filing_period_start
#> 1              2021-01-01            2021-12-31                         <NA>
#> 2              2016-01-01            2016-12-31                         <NA>
#> 3              2021-01-01            2021-12-31                         <NA>
#> 4              2017-01-01            2017-12-31                   2017-01-01
#> 5              2021-01-01            2021-12-31                   2021-01-01
#>   document_filing_period_end initial_registration_date    last_update_date
#> 1                       <NA>       2016-01-07 02:33:00 2023-07-31 17:11:36
#> 2                       <NA>       2015-11-06 02:27:00 2023-07-31 17:11:36
#> 3                       <NA>       2014-06-24 02:23:00 2023-07-31 17:11:36
#> 4                 2017-12-31       2023-08-08 18:57:51 2023-08-08 18:57:52
#> 5                 2021-12-31       2014-06-21 01:41:00 2023-07-31 17:11:36
#>   registration_status   next_renewal_date         managing_lou
#> 1              LAPSED 2022-09-22 18:00:00 213800WAVVOPS85N2205
#> 2              LAPSED 2019-10-20 00:30:00 213800WAVVOPS85N2205
#> 3              LAPSED 2023-03-07 18:00:00 213800WAVVOPS85N2205
#> 4              LAPSED 2021-03-09 20:53:00 529900F6BNUR3RJ2WH29
#> 5              LAPSED 2023-01-06 22:44:00 213800WAVVOPS85N2205
#>    corroboration_level corroboration_documents
#> 1 ENTITY_SUPPLIED_ONLY    SUPPORTING_DOCUMENTS
#> 2 ENTITY_SUPPLIED_ONLY    SUPPORTING_DOCUMENTS
#> 3 ENTITY_SUPPLIED_ONLY    SUPPORTING_DOCUMENTS
#> 4   FULLY_CORROBORATED         ACCOUNTS_FILING
#> 5   FULLY_CORROBORATED         ACCOUNTS_FILING
#>                                                                                                                                                                                                                       corroboration_reference
#> 1                                                                                                                                                                                                                                        <NA>
#> 2                                                                                                                                                                                                                                        <NA>
#> 3                                                                                                                                                                                                                                        <NA>
#> 4                                                                                                                                                                                       https://web3.cmvm.pt/sdi/emitentes/docs/fsd469442.pdf
#> 5 https://www.societegenerale.com/sites/default/files/documents/2021-03/Document%20d%27enregistrement%20universel%20relatif%20%C3%A0%20l%27ann%C3%A9e%202020%2C%20d%C3%A9pos%C3%A9%20le%2017%20mars%20sous%20le%20num%C3%A9ro%20D.21-0138.pdf
#>            valid_from valid_to
#> 1 2023-08-10 00:00:00     <NA>
#> 2 2023-08-10 00:00:00     <NA>
#> 3 2023-08-10 00:00:00     <NA>
#> 4 2023-08-09 16:00:00     <NA>
#> 5 2023-08-10 00:00:00     <NA>
# }
```

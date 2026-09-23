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
#> 1 9695005AOHA6YFDPA591 O2RNE8IBXP4R0TD8PU41 IS_DIRECTLY_CONSOLIDATED_BY
#> 2 529900JPBT27QMNAB514 O2RNE8IBXP4R0TD8PU41 IS_DIRECTLY_CONSOLIDATED_BY
#> 3 549300F26DMWR825QV41 O2RNE8IBXP4R0TD8PU41 IS_DIRECTLY_CONSOLIDATED_BY
#> 4 549300FLB3N456MV5T14 O2RNE8IBXP4R0TD8PU41 IS_DIRECTLY_CONSOLIDATED_BY
#> 5 549300LQ5CXFSZ26RJ04 O2RNE8IBXP4R0TD8PU41 IS_DIRECTLY_CONSOLIDATED_BY
#>   relationship_status relationship_period_start relationship_period_end
#> 1              ACTIVE       2019-07-18 22:00:00                    <NA>
#> 2              ACTIVE       2017-06-05 22:00:00                    <NA>
#> 3              ACTIVE       2022-04-19 00:00:00                    <NA>
#> 4              ACTIVE       2017-08-09 00:00:00                    <NA>
#> 5              ACTIVE       2021-11-26 00:00:00                    <NA>
#>   accounting_period_start accounting_period_end document_filing_period_start
#> 1     2019-07-18 22:00:00   2019-07-31 22:00:00          2019-07-18 22:00:00
#> 2     2017-12-31 23:00:00   2018-12-30 23:00:00          2019-03-07 23:00:00
#> 3     2021-01-01 00:00:00   2021-12-31 00:00:00                         <NA>
#> 4     2022-01-01 00:00:00   2022-12-31 00:00:00                         <NA>
#> 5     2020-01-01 00:00:00   2020-12-31 00:00:00                         <NA>
#>   document_filing_period_end initial_registration_date    last_update_date
#> 1                       <NA>       2019-08-01 22:00:00 2022-07-06 21:29:55
#> 2                       <NA>       2017-06-16 08:53:59 2021-11-25 08:15:04
#> 3                       <NA>       2017-12-19 15:34:00 2023-11-02 00:10:49
#> 4                       <NA>       2017-08-10 01:52:00 2024-03-07 10:14:15
#> 5                       <NA>       2014-06-25 01:44:00 2023-07-31 17:11:36
#>   registration_status   next_renewal_date         managing_lou
#> 1              LAPSED 2022-07-06 02:19:48 969500Q2MA9VBQ8BG884
#> 2              LAPSED 2020-07-07 13:31:08 5299000J2N45DDNE4Y28
#> 3              LAPSED 2023-11-01 00:00:00 213800WAVVOPS85N2205
#> 4              LAPSED 2024-03-07 18:00:00 52990034RLKT0WSOAM90
#> 5              LAPSED 2022-03-04 18:00:00 213800WAVVOPS85N2205
#>      corroboration_level corroboration_documents
#> 1 PARTIALLY_CORROBORATED       REGULATORY_FILING
#> 2     FULLY_CORROBORATED         ACCOUNTS_FILING
#> 3   ENTITY_SUPPLIED_ONLY         ACCOUNTS_FILING
#> 4   ENTITY_SUPPLIED_ONLY    SUPPORTING_DOCUMENTS
#> 5   ENTITY_SUPPLIED_ONLY    SUPPORTING_DOCUMENTS
#>                                                                                                                       corroboration_reference
#> 1 https://www.societegenerale.com/sites/default/files/documents/Document%20de%20r%C3%A9f%C3%A9rence/2019/sg_ddr2019_document_de_reference.pdf
#> 2                                                                                                                                        <NA>
#> 3                                                                      URL not publicly available, validated from document provided by client
#> 4                                                                                                                                        <NA>
#> 5                                                                                                                                        <NA>
#>            valid_from valid_to
#> 1 2022-07-07 08:00:00     <NA>
#> 2 2022-03-30 08:00:00     <NA>
#> 3 2023-11-02 08:00:00     <NA>
#> 4 2024-03-07 16:00:00     <NA>
#> 5 2023-08-11 00:00:00     <NA>

lei_child_relationships("O2RNE8IBXP4R0TD8PU41", type = "ultimate", limit = 5)
#>             start_node             end_node             relationship_type
#> 1 9695005AOHA6YFDPA591 O2RNE8IBXP4R0TD8PU41 IS_ULTIMATELY_CONSOLIDATED_BY
#> 2 529900JPBT27QMNAB514 O2RNE8IBXP4R0TD8PU41 IS_ULTIMATELY_CONSOLIDATED_BY
#> 3 529900DXO2KW4VXW0A69 O2RNE8IBXP4R0TD8PU41 IS_ULTIMATELY_CONSOLIDATED_BY
#> 4 549300F26DMWR825QV41 O2RNE8IBXP4R0TD8PU41 IS_ULTIMATELY_CONSOLIDATED_BY
#> 5 549300B9XU81CS4CFB75 O2RNE8IBXP4R0TD8PU41 IS_ULTIMATELY_CONSOLIDATED_BY
#>   relationship_status relationship_period_start relationship_period_end
#> 1              ACTIVE       2019-07-18 22:00:00                    <NA>
#> 2              ACTIVE       2017-06-05 22:00:00                    <NA>
#> 3              ACTIVE       2016-12-31 00:00:00                    <NA>
#> 4              ACTIVE       2022-04-19 00:00:00                    <NA>
#> 5              ACTIVE       2023-02-28 00:00:00                    <NA>
#>   accounting_period_start accounting_period_end document_filing_period_start
#> 1     2019-07-18 22:00:00   2019-07-31 22:00:00          2019-07-18 22:00:00
#> 2     2017-12-31 23:00:00   2018-12-30 23:00:00          2019-03-07 23:00:00
#> 3     2016-01-01 00:00:00   2016-12-31 00:00:00                         <NA>
#> 4     2021-01-01 00:00:00   2021-12-31 00:00:00                         <NA>
#> 5     2022-01-01 00:00:00   2022-12-31 00:00:00                         <NA>
#>   document_filing_period_end initial_registration_date    last_update_date
#> 1                       <NA>       2019-08-01 22:00:00 2022-07-06 21:29:55
#> 2                       <NA>       2017-06-16 08:53:59 2021-11-25 08:15:04
#> 3                       <NA>       2018-05-09 00:00:00 2021-05-19 00:00:00
#> 4                       <NA>       2017-12-19 15:34:00 2023-11-02 00:10:49
#> 5                       <NA>       2018-12-27 15:31:00 2024-03-07 10:14:08
#>   registration_status   next_renewal_date         managing_lou
#> 1              LAPSED 2022-07-06 02:19:48 969500Q2MA9VBQ8BG884
#> 2              LAPSED 2020-07-07 13:31:08 5299000J2N45DDNE4Y28
#> 3              LAPSED 2021-05-19 00:00:00 48510000JZ17NWGUA510
#> 4              LAPSED 2023-11-01 00:00:00 213800WAVVOPS85N2205
#> 5              LAPSED 2024-03-07 18:00:00 52990034RLKT0WSOAM90
#>      corroboration_level corroboration_documents
#> 1 PARTIALLY_CORROBORATED       REGULATORY_FILING
#> 2     FULLY_CORROBORATED         ACCOUNTS_FILING
#> 3   ENTITY_SUPPLIED_ONLY         ACCOUNTS_FILING
#> 4   ENTITY_SUPPLIED_ONLY         ACCOUNTS_FILING
#> 5   ENTITY_SUPPLIED_ONLY    SUPPORTING_DOCUMENTS
#>                                                                                                                       corroboration_reference
#> 1 https://www.societegenerale.com/sites/default/files/documents/Document%20de%20r%C3%A9f%C3%A9rence/2019/sg_ddr2019_document_de_reference.pdf
#> 2                                                                                                                                        <NA>
#> 3                                                                                                                                      report
#> 4                                                                      URL not publicly available, validated from document provided by client
#> 5                                                                                                                                        <NA>
#>            valid_from valid_to
#> 1 2022-07-07 08:00:00     <NA>
#> 2 2022-03-30 08:00:00     <NA>
#> 3 2022-03-30 08:00:00     <NA>
#> 4 2023-11-02 08:00:00     <NA>
#> 5 2024-03-07 16:00:00     <NA>
# }
```

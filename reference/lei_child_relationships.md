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
#> 2 969500FJQZF0ESN91W41 O2RNE8IBXP4R0TD8PU41 IS_DIRECTLY_CONSOLIDATED_BY
#> 3 5493007CD14TLLOHFX18 O2RNE8IBXP4R0TD8PU41 IS_DIRECTLY_CONSOLIDATED_BY
#> 4 529900JPBT27QMNAB514 O2RNE8IBXP4R0TD8PU41 IS_DIRECTLY_CONSOLIDATED_BY
#> 5 7890007OR8CO4CJUE245 O2RNE8IBXP4R0TD8PU41 IS_DIRECTLY_CONSOLIDATED_BY
#>   relationship_status relationship_period_start relationship_period_end
#> 1              ACTIVE       2019-07-18 22:00:00                    <NA>
#> 2              ACTIVE       2017-12-20 23:00:00                    <NA>
#> 3              ACTIVE       2021-12-01 00:00:00                    <NA>
#> 4              ACTIVE       2017-06-05 22:00:00                    <NA>
#> 5              ACTIVE       2018-12-04 10:03:25                    <NA>
#>   accounting_period_start accounting_period_end document_filing_period_start
#> 1     2019-07-18 22:00:00   2019-07-31 22:00:00          2019-07-18 22:00:00
#> 2     2015-12-31 23:00:00   2016-12-30 23:00:00          2017-03-12 23:00:00
#> 3     2020-01-01 00:00:00   2020-12-31 00:00:00                         <NA>
#> 4     2017-12-31 23:00:00   2018-12-30 23:00:00          2019-03-07 23:00:00
#> 5     2018-12-04 10:03:25   2019-12-03 22:00:00                         <NA>
#>   document_filing_period_end initial_registration_date    last_update_date
#> 1                       <NA>       2019-08-01 22:00:00 2022-07-06 21:29:55
#> 2                       <NA>       2018-03-28 22:00:00 2021-02-24 22:08:53
#> 3                       <NA>       2014-08-02 02:23:00 2023-07-31 17:34:15
#> 4                       <NA>       2017-06-16 08:53:59 2021-11-25 08:15:04
#> 5                       <NA>       2018-12-04 12:03:25 2018-12-10 17:35:02
#>   registration_status   next_renewal_date         managing_lou
#> 1              LAPSED 2022-07-06 02:19:48 969500Q2MA9VBQ8BG884
#> 2              LAPSED 2019-03-29 08:08:58 969500Q2MA9VBQ8BG884
#> 3              LAPSED 2018-06-30 19:34:00 5493001KJTIIGC8Y1R12
#> 4              LAPSED 2020-07-07 13:31:08 5299000J2N45DDNE4Y28
#> 5           PUBLISHED 2019-12-04 21:59:59 789000TVSB96MCOKSB52
#>      corroboration_level  corroboration_documents
#> 1 PARTIALLY_CORROBORATED        REGULATORY_FILING
#> 2     FULLY_CORROBORATED OTHER_OFFICIAL_DOCUMENTS
#> 3   ENTITY_SUPPLIED_ONLY     SUPPORTING_DOCUMENTS
#> 4     FULLY_CORROBORATED          ACCOUNTS_FILING
#> 5   ENTITY_SUPPLIED_ONLY OTHER_OFFICIAL_DOCUMENTS
#>                                                                                                                            corroboration_reference
#> 1      https://www.societegenerale.com/sites/default/files/documents/Document%20de%20r%C3%A9f%C3%A9rence/2019/sg_ddr2019_document_de_reference.pdf
#> 2 https://www.societegenerale.com/sites/default/files/documents/Document%20de%20référence/2017/Societe-Generale-DDR-2017-depot-amf-08032017-FR.pdf
#> 3                                                                                                                                             <NA>
#> 4                                                                                                                                             <NA>
#> 5                                                                                                                                             <NA>
#>            valid_from valid_to
#> 1 2022-07-07 08:00:00     <NA>
#> 2 2022-03-29 16:00:00     <NA>
#> 3 2023-08-05 00:00:00     <NA>
#> 4 2022-03-30 08:00:00     <NA>
#> 5 2018-12-10 16:00:00     <NA>

lei_child_relationships("O2RNE8IBXP4R0TD8PU41", type = "ultimate", limit = 5)
#>             start_node             end_node             relationship_type
#> 1 529900JPBT27QMNAB514 O2RNE8IBXP4R0TD8PU41 IS_ULTIMATELY_CONSOLIDATED_BY
#> 2 529900DXO2KW4VXW0A69 O2RNE8IBXP4R0TD8PU41 IS_ULTIMATELY_CONSOLIDATED_BY
#> 3 969500FJQZF0ESN91W41 O2RNE8IBXP4R0TD8PU41 IS_ULTIMATELY_CONSOLIDATED_BY
#> 4 549300YBX5WAFBREYJ86 O2RNE8IBXP4R0TD8PU41 IS_ULTIMATELY_CONSOLIDATED_BY
#> 5 5493007CD14TLLOHFX18 O2RNE8IBXP4R0TD8PU41 IS_ULTIMATELY_CONSOLIDATED_BY
#>   relationship_status relationship_period_start relationship_period_end
#> 1              ACTIVE       2017-06-05 22:00:00                    <NA>
#> 2              ACTIVE       2016-12-31 00:00:00                    <NA>
#> 3              ACTIVE       2017-12-20 23:00:00                    <NA>
#> 4              ACTIVE       2017-07-22 01:46:15                    <NA>
#> 5              ACTIVE       2017-07-22 00:00:00                    <NA>
#>   accounting_period_start accounting_period_end document_filing_period_start
#> 1     2017-12-31 23:00:00   2018-12-30 23:00:00          2019-03-07 23:00:00
#> 2     2016-01-01 00:00:00   2016-12-31 00:00:00                         <NA>
#> 3     2015-12-31 23:00:00   2016-12-30 23:00:00          2017-03-12 23:00:00
#> 4     2017-01-01 00:00:00   2017-12-31 00:00:00                         <NA>
#> 5     2020-01-01 00:00:00   2020-12-31 00:00:00                         <NA>
#>   document_filing_period_end initial_registration_date    last_update_date
#> 1                       <NA>       2017-06-16 08:53:59 2021-11-25 08:15:04
#> 2                       <NA>       2018-05-09 00:00:00 2021-05-19 00:00:00
#> 3                       <NA>       2018-03-28 22:00:00 2019-06-27 17:04:05
#> 4                       <NA>       2014-08-02 02:23:00 2020-07-28 15:37:00
#> 5                       <NA>       2014-08-02 02:23:00 2023-07-31 17:34:15
#>   registration_status   next_renewal_date         managing_lou
#> 1              LAPSED 2020-07-07 13:31:08 5299000J2N45DDNE4Y28
#> 2              LAPSED 2021-05-19 00:00:00 48510000JZ17NWGUA510
#> 3              LAPSED 2019-03-29 08:08:58 969500Q2MA9VBQ8BG884
#> 4              LAPSED 2018-06-30 19:29:00 5493001KJTIIGC8Y1R12
#> 5              LAPSED 2018-06-30 19:34:00 5493001KJTIIGC8Y1R12
#>    corroboration_level  corroboration_documents
#> 1   FULLY_CORROBORATED          ACCOUNTS_FILING
#> 2 ENTITY_SUPPLIED_ONLY          ACCOUNTS_FILING
#> 3   FULLY_CORROBORATED OTHER_OFFICIAL_DOCUMENTS
#> 4 ENTITY_SUPPLIED_ONLY     SUPPORTING_DOCUMENTS
#> 5 ENTITY_SUPPLIED_ONLY     SUPPORTING_DOCUMENTS
#>                                                                                                                            corroboration_reference
#> 1                                                                                                                                             <NA>
#> 2                                                                                                                                           report
#> 3 https://www.societegenerale.com/sites/default/files/documents/Document%20de%20référence/2017/Societe-Generale-DDR-2017-depot-amf-08032017-FR.pdf
#> 4                                                                                                                                             <NA>
#> 5                                                                                                                                             <NA>
#>            valid_from valid_to
#> 1 2022-03-30 08:00:00     <NA>
#> 2 2022-03-30 08:00:00     <NA>
#> 3 2022-03-29 16:00:00     <NA>
#> 4 2023-08-05 00:00:00     <NA>
#> 5 2023-08-05 00:00:00     <NA>
# }
```

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
#> 1 969500FJQZF0ESN91W41 O2RNE8IBXP4R0TD8PU41 IS_DIRECTLY_CONSOLIDATED_BY
#> 2 529900JPBT27QMNAB514 O2RNE8IBXP4R0TD8PU41 IS_DIRECTLY_CONSOLIDATED_BY
#> 3 5493007CD14TLLOHFX18 O2RNE8IBXP4R0TD8PU41 IS_DIRECTLY_CONSOLIDATED_BY
#> 4 549300XOHLO9G78P6819 O2RNE8IBXP4R0TD8PU41 IS_DIRECTLY_CONSOLIDATED_BY
#> 5 549300QV9DX9XDXFUI91 O2RNE8IBXP4R0TD8PU41 IS_DIRECTLY_CONSOLIDATED_BY
#>   relationship_status relationship_period_start relationship_period_end
#> 1              ACTIVE       2017-12-20 23:00:00                    <NA>
#> 2              ACTIVE       2017-06-05 22:00:00                    <NA>
#> 3              ACTIVE       2021-12-01 00:00:00                    <NA>
#> 4              ACTIVE       2017-12-21 00:00:00                    <NA>
#> 5              ACTIVE       2017-11-27 00:00:00                    <NA>
#>   accounting_period_start accounting_period_end document_filing_period_start
#> 1     2015-12-31 23:00:00   2016-12-30 23:00:00          2017-03-12 23:00:00
#> 2     2017-12-31 23:00:00   2018-12-30 23:00:00          2019-03-07 23:00:00
#> 3     2020-01-01 00:00:00   2020-12-31 00:00:00                         <NA>
#> 4     2021-01-01 00:00:00   2021-12-31 00:00:00                         <NA>
#> 5     2017-01-01 00:00:00   2017-12-31 00:00:00                         <NA>
#>   document_filing_period_end initial_registration_date    last_update_date
#> 1                       <NA>       2018-03-28 22:00:00 2021-02-24 22:08:53
#> 2                       <NA>       2017-06-16 08:53:59 2021-11-25 08:15:04
#> 3                       <NA>       2014-08-02 02:23:00 2023-07-31 17:34:15
#> 4                       <NA>       2016-01-07 02:33:00 2023-07-31 17:11:36
#> 5                       <NA>       2015-09-22 02:17:00 2023-07-31 17:11:36
#>   registration_status   next_renewal_date         managing_lou
#> 1              LAPSED 2019-03-29 08:08:58 969500Q2MA9VBQ8BG884
#> 2              LAPSED 2020-07-07 13:31:08 5299000J2N45DDNE4Y28
#> 3              LAPSED 2018-06-30 19:34:00 5493001KJTIIGC8Y1R12
#> 4              LAPSED 2022-09-22 18:00:00 213800WAVVOPS85N2205
#> 5              LAPSED 2019-11-20 00:30:00 213800WAVVOPS85N2205
#>    corroboration_level  corroboration_documents
#> 1   FULLY_CORROBORATED OTHER_OFFICIAL_DOCUMENTS
#> 2   FULLY_CORROBORATED          ACCOUNTS_FILING
#> 3 ENTITY_SUPPLIED_ONLY     SUPPORTING_DOCUMENTS
#> 4 ENTITY_SUPPLIED_ONLY     SUPPORTING_DOCUMENTS
#> 5 ENTITY_SUPPLIED_ONLY     SUPPORTING_DOCUMENTS
#>                                                                                                                            corroboration_reference
#> 1 https://www.societegenerale.com/sites/default/files/documents/Document%20de%20référence/2017/Societe-Generale-DDR-2017-depot-amf-08032017-FR.pdf
#> 2                                                                                                                                             <NA>
#> 3                                                                                                                                             <NA>
#> 4                                                                                                                                             <NA>
#> 5                                                                                                                                             <NA>
#>            valid_from valid_to
#> 1 2022-03-29 16:00:00     <NA>
#> 2 2022-03-30 08:00:00     <NA>
#> 3 2023-08-05 00:00:00     <NA>
#> 4 2023-08-10 00:00:00     <NA>
#> 5 2023-08-10 00:00:00     <NA>

lei_child_relationships("O2RNE8IBXP4R0TD8PU41", type = "ultimate", limit = 5)
#>             start_node             end_node             relationship_type
#> 1 549300SS3C8W3K6NTF72 O2RNE8IBXP4R0TD8PU41 IS_ULTIMATELY_CONSOLIDATED_BY
#> 2 529900JPBT27QMNAB514 O2RNE8IBXP4R0TD8PU41 IS_ULTIMATELY_CONSOLIDATED_BY
#> 3 529900DXO2KW4VXW0A69 O2RNE8IBXP4R0TD8PU41 IS_ULTIMATELY_CONSOLIDATED_BY
#> 4 969500FJQZF0ESN91W41 O2RNE8IBXP4R0TD8PU41 IS_ULTIMATELY_CONSOLIDATED_BY
#> 5 222100RVKRQIZ3UVBB77 O2RNE8IBXP4R0TD8PU41 IS_ULTIMATELY_CONSOLIDATED_BY
#>   relationship_status relationship_period_start relationship_period_end
#> 1              ACTIVE       2016-12-13 00:00:00                    <NA>
#> 2              ACTIVE       2017-06-05 22:00:00                    <NA>
#> 3              ACTIVE       2016-12-31 00:00:00                    <NA>
#> 4              ACTIVE       2017-12-20 23:00:00                    <NA>
#> 5              ACTIVE       2018-02-02 00:00:00                    <NA>
#>   accounting_period_start accounting_period_end document_filing_period_start
#> 1     2016-01-01 00:00:00   2016-12-31 00:00:00                         <NA>
#> 2     2017-12-31 23:00:00   2018-12-30 23:00:00          2019-03-07 23:00:00
#> 3     2016-01-01 00:00:00   2016-12-31 00:00:00                         <NA>
#> 4     2015-12-31 23:00:00   2016-12-30 23:00:00          2017-03-12 23:00:00
#> 5     2017-01-01 00:00:00   2017-12-31 00:00:00          2017-01-01 00:00:00
#>   document_filing_period_end initial_registration_date    last_update_date
#> 1                       <NA>       2018-05-09 00:00:00 2021-05-18 00:00:00
#> 2                       <NA>       2017-06-16 08:53:59 2021-11-25 08:15:04
#> 3                       <NA>       2018-05-09 00:00:00 2021-05-19 00:00:00
#> 4                       <NA>       2018-03-28 22:00:00 2019-06-27 17:04:05
#> 5                 2017-12-31       2015-10-01 00:00:00 2023-08-09 09:31:00
#>   registration_status   next_renewal_date         managing_lou
#> 1              LAPSED 2021-05-18 00:00:00 48510000JZ17NWGUA510
#> 2              LAPSED 2020-07-07 13:31:08 5299000J2N45DDNE4Y28
#> 3              LAPSED 2021-05-19 00:00:00 48510000JZ17NWGUA510
#> 4              LAPSED 2019-03-29 08:08:58 969500Q2MA9VBQ8BG884
#> 5              LAPSED 2021-01-07 18:00:00 549300O897ZC5H7CY412
#>    corroboration_level  corroboration_documents
#> 1 ENTITY_SUPPLIED_ONLY          ACCOUNTS_FILING
#> 2   FULLY_CORROBORATED          ACCOUNTS_FILING
#> 3 ENTITY_SUPPLIED_ONLY          ACCOUNTS_FILING
#> 4   FULLY_CORROBORATED OTHER_OFFICIAL_DOCUMENTS
#> 5   FULLY_CORROBORATED          ACCOUNTS_FILING
#>                                                                                                                            corroboration_reference
#> 1                                                                                                                                           report
#> 2                                                                                                                                             <NA>
#> 3                                                                                                                                           report
#> 4 https://www.societegenerale.com/sites/default/files/documents/Document%20de%20référence/2017/Societe-Generale-DDR-2017-depot-amf-08032017-FR.pdf
#> 5                                                                                            https://web3.cmvm.pt/sdi/emitentes/docs/fsd469442.pdf
#>            valid_from valid_to
#> 1 2022-03-30 00:00:00     <NA>
#> 2 2022-03-30 08:00:00     <NA>
#> 3 2022-03-30 08:00:00     <NA>
#> 4 2022-03-29 16:00:00     <NA>
#> 5 2023-08-09 16:00:00     <NA>
# }
```

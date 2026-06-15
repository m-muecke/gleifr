# Fuzzy search for LEI records

Performs a typo-tolerant, approximate search against the GLEIF API.
Unlike the filters in
[`lei_records()`](https://m-muecke.github.io/gleifr/reference/lei_records.md),
which match literal substrings, this matches on edit distance and
returns candidate values together with their LEI. Useful for resolving
messy or misspelled entity names to a LEI, which can then be passed to
[`lei_record_by_id()`](https://m-muecke.github.io/gleifr/reference/lei_record_by_id.md).

## Usage

``` r
lei_fuzzy(q, field = c("fulltext", "entity.legalName", "owns", "ownedBy"))
```

## Source

<https://www.gleif.org/en/lei-data/gleif-api>

## Arguments

- q:

  (`character(1)`)  
  The search query.

- field:

  (`character(1)`)  
  The field to search. One of `"fulltext"`, `"entity.legalName"`,
  `"owns"`, or `"ownedBy"`. Default is `"fulltext"`.

## Value

A [`data.frame()`](https://rdrr.io/r/base/data.frame.html) with columns:

- **value**: The matched value

- **lei**: The Legal Entity Identifier of the matched record, or `NA` if
  none is linked

## See also

[`lei_autocomplete()`](https://m-muecke.github.io/gleifr/reference/lei_autocomplete.md)
for prefix-based completion,
[`lei_record_by_id()`](https://m-muecke.github.io/gleifr/reference/lei_record_by_id.md)
for full records.

## Examples

``` r
# \donttest{
lei_fuzzy("Deutsch Bank", field = "entity.legalName")
#>                         value                  lei
#> 1            DEUTSCHE BANK SA 529900J2KCFIPEYJIE34
#> 2        DEUTSCHE BANK S.P.A. 529900SS7ZWCX82U3W60
#> 3      Deutsche Bank Stiftung 391200PCHLV827FDCB76
#> 4   Deutsche Bank (Chile) S.A 549300B4Z1JOQPQSVA53
#> 5   Deutsche Bank Europe GmbH 213800QILIUD4ROSUO03
#> 6   Deutsche Bank (Perú) S.A. 529900N94W687OHXIV81
#> 7   DEUTSCHE BANK SA ESPAÑOLA 529900SICIK5OVMVY186
#> 8   Deutsche Bank (Suisse) SA 529900BXKPMXQTRE1V05
#> 9  Deutsche Bank (Chile) S.A. 529900S441FVQLZIRQ90
#> 10 DEUTSCHE BANK MUTUI S.P.A. 8156006ACD5E92B0C985
# }
```

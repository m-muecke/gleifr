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
if (FALSE) { # \dontrun{
lei_fuzzy("Deutsch Bank", field = "entity.legalName")
} # }
```

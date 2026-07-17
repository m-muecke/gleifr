# Autocomplete LEI records

Performs a prefix-based completion against the GLEIF API, returning
candidate values together with their LEI. Useful for typeahead-style
lookups. For typo-tolerant matching, see
[`lei_fuzzy()`](https://m-muecke.github.io/gleifr/reference/lei_fuzzy.md).

## Usage

``` r
lei_autocomplete(q, field = c("fulltext", "owns"))
```

## Source

<https://www.gleif.org/en/lei-data/gleif-api>

## Arguments

- q:

  (`character(1)`)  
  The search query.

- field:

  (`character(1)`)  
  The field to search. One of `"fulltext"` or `"owns"`. Default is
  `"fulltext"`.

## Value

A [`data.frame()`](https://rdrr.io/r/base/data.frame.html) with columns:

- **value**: The matched value

- **lei**: The Legal Entity Identifier of the matched record, or `NA` if
  none is linked

## See also

[`lei_fuzzy()`](https://m-muecke.github.io/gleifr/reference/lei_fuzzy.md)
for typo-tolerant matching,
[`lei_record_by_id()`](https://m-muecke.github.io/gleifr/reference/lei_record_by_id.md)
for full records.

## Examples

``` r
# \donttest{
lei_autocomplete("Appl")
#>        value                  lei
#> 1   AppLogic 724500S2JQ8M9Q67N911
#> 2   AT APPLI 254900RKVKGKPHAN8C29
#> 3   APPLE 12 969500RDBEVTUKOLE690
#> 4   APPLISOL 969500QR5XNTB9QQIQ09
#> 5   APPLITEC                 <NA>
#> 6   APPLY AS 636700DQ0JLHIXYKLG19
#> 7  Apple Ltd 529900RYTCJRAG2BSI79
#> 8  BIG APPLE 9845002756D91F74C846
#> 9  APPLE INN 64886E905REV38LP9S76
#> 10 APPLE-WAY 969500QV2N8IIVULLH93
# }
```

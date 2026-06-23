# Fetch ISINs for a LEI

Fetches the ISINs associated with a given LEI.

## Usage

``` r
lei_isins(id, limit = 200L)
```

## Arguments

- id:

  (`character(1)`)  
  The Legal Entity Identifier (LEI) to fetch ISINs for.

- limit:

  (`NULL` \| `integer(1)`)  
  Maximum number of records to return. Default `200L`. Use `NULL` to
  fetch all.

## Value

A [`data.frame()`](https://rdrr.io/r/base/data.frame.html) with columns:

- **lei**: The Legal Entity Identifier

- **isin**: The ISIN

## Examples

``` r
# \donttest{
head(lei_isins("529900W18LQJJN6SJ336", limit = 10))
#>                    lei         isin
#> 1 529900W18LQJJN6SJ336 DE000SU11L81
#> 2 529900W18LQJJN6SJ336 DE000SQ3RXJ0
#> 3 529900W18LQJJN6SJ336 DE000SQ3RSW3
#> 4 529900W18LQJJN6SJ336 DE000SU9V0S2
#> 5 529900W18LQJJN6SJ336 DE000SQ389L5
#> 6 529900W18LQJJN6SJ336 DE000SV0CS09
# }
```

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

When the LEI has no ISINs, `NULL`.

## Examples

``` r
# \donttest{
head(lei_isins("529900W18LQJJN6SJ336", limit = 10))
#>                    lei         isin
#> 1 529900W18LQJJN6SJ336 DE000FA1JNL1
#> 2 529900W18LQJJN6SJ336 DE000FA1P1Z0
#> 3 529900W18LQJJN6SJ336 DE000FA0CPD0
#> 4 529900W18LQJJN6SJ336 DE000FA57T95
#> 5 529900W18LQJJN6SJ336 DE000FA0D5Z6
#> 6 529900W18LQJJN6SJ336 DE000CL9MAL5
# }
```

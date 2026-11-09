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
#> 1 529900W18LQJJN6SJ336 DE000SX1Q436
#> 2 529900W18LQJJN6SJ336 DE000SY9P3L1
#> 3 529900W18LQJJN6SJ336 DE000SX72YZ5
#> 4 529900W18LQJJN6SJ336 DE000SW2MDR0
#> 5 529900W18LQJJN6SJ336 DE000SY4N4F8
#> 6 529900W18LQJJN6SJ336 DE000SX0K5Z2
# }
```

# Fetch a LEI record

Fetch a single LEI record by its Legal Entity Identifier. To fetch
records by attribute filters, see
[`lei_records()`](https://m-muecke.github.io/gleifr/reference/lei_records.md).

## Usage

``` r
lei_record_by_id(id, simplify = TRUE)
```

## Arguments

- id:

  (`character(1)`)  
  The Legal Entity Identifier (LEI) to fetch.

- simplify:

  (`logical(1)`)  
  Should the output be simplified? Default `TRUE`.

## Value

When `simplify = TRUE`, a long-format
[`data.frame()`](https://rdrr.io/r/base/data.frame.html) with columns:

- **lei**: The Legal Entity Identifier

- **name**: The attribute name

- **value**: The attribute value

When `simplify = FALSE`, a named
[`list()`](https://rdrr.io/r/base/list.html) containing the raw API
response.

## See also

[`lei_records()`](https://m-muecke.github.io/gleifr/reference/lei_records.md)
to fetch records by attribute filters.

## Examples

``` r
if (FALSE) { # \dontrun{
# get simplified long-format data.frame
lei_record_by_id("529900W18LQJJN6SJ336")

# get raw API response as named list
lei_record_by_id("529900W18LQJJN6SJ336", simplify = FALSE)
} # }
```

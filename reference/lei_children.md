# Fetch LEI child records

Fetches the direct or ultimate child records of a given LEI.

## Usage

``` r
lei_children(id, type = c("direct", "ultimate"), simplify = TRUE)
```

## Arguments

- id:

  (`character(1)`)  
  The Legal Entity Identifier (LEI) to fetch the children for.

- type:

  (`character(1)`)  
  The type of children to fetch. One of `"direct"` or `"ultimate"`.
  Default is `"direct"`.

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

## Examples

``` r
if (FALSE) { # \dontrun{
# get direct children
lei_children("529900W18LQJJN6SJ336")

# get ultimate children
lei_children("529900W18LQJJN6SJ336", type = "ultimate")
} # }
```

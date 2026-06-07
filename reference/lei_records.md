# Fetch LEI records

Fetch LEI records from the GLEIF database, optionally filtered by
attribute. The filters are combined with logical AND, so each one you
supply narrows the results further. To fetch a single record by its LEI,
see
[`lei_record_by_id()`](https://m-muecke.github.io/gleifr/reference/lei_record_by_id.md).

## Usage

``` r
lei_records(
  legal_name = NULL,
  jurisdiction = NULL,
  status = NULL,
  fulltext = NULL,
  ...,
  page_size = 200L,
  page_number = NULL,
  simplify = TRUE
)
```

## Arguments

- legal_name:

  (`NULL` \| `character(1)`)  
  Filter by legal name.

- jurisdiction:

  (`NULL` \| `character(1)`)  
  Filter by jurisdiction.

- status:

  (`NULL` \| `character(1)`)  
  Filter by entity status.

- fulltext:

  (`NULL` \| `character(1)`)  
  Full-text search query.

- ...:

  Additional filter parameters passed to the GLEIF API. These are
  appended as query parameters, e.g.
  `"filter[entity.legalAddress.country]" = "DE"`.

- page_size:

  (`NULL` \| `integer(1)`)  
  The number of records per page. Default `200L`.

- page_number:

  (`NULL` \| `integer(1)`)  
  The page number to fetch. When `NULL` (the default), all pages are
  fetched automatically.

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

[`lei_record_by_id()`](https://m-muecke.github.io/gleifr/reference/lei_record_by_id.md)
to fetch a single record by its LEI.

## Examples

``` r
if (FALSE) { # \dontrun{
# search by legal name
lei_records(legal_name = "Deutsche Bank")

# filter by jurisdiction and status
lei_records(jurisdiction = "DE", status = "ACTIVE")
} # }
```

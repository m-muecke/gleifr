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
  fulltext = NULL,
  country = NULL,
  jurisdiction = NULL,
  registration_status = NULL,
  entity_status = NULL,
  category = NULL,
  isin = NULL,
  ...,
  limit = 200L,
  simplify = TRUE
)
```

## Arguments

- legal_name:

  (`NULL` \| `character(1)`)  
  Filter by legal name.

- fulltext:

  (`NULL` \| `character(1)`)  
  Full-text search query.

- country:

  (`NULL` \| `character(1)`)  
  Filter by legal address country (ISO 3166-1 alpha-2 code), e.g.
  `"DE"`.

- jurisdiction:

  (`NULL` \| `character(1)`)  
  Filter by jurisdiction (ISO 3166-1 alpha-2 code), e.g. `"DE"`.

- registration_status:

  (`NULL` \| `character(1)`)  
  Filter by LEI registration status, e.g. `"ISSUED"` or `"LAPSED"`.

- entity_status:

  (`NULL` \| `character(1)`)  
  Filter by entity status, one of `"ACTIVE"` or `"INACTIVE"`.

- category:

  (`NULL` \| `character(1)`)  
  Filter by entity category, e.g. `"FUND"`, `"BRANCH"`, or `"GENERAL"`.

- isin:

  (`NULL` \| `character(1)`)  
  Filter by ISIN.

- ...:

  Additional filter parameters passed to the GLEIF API. These are
  appended as query parameters, e.g.
  `"filter[entity.subCategory]" = "CENTRAL_GOVERNMENT"`.

- limit:

  (`NULL` \| `integer(1)`)  
  Maximum number of records to return. Default `200L`. Use `NULL` to
  fetch all matching records.

- simplify:

  (`logical(1)`)  
  Should the output be simplified? Default `TRUE`.

## Value

When `simplify = TRUE`, a long-format
[`data.frame()`](https://rdrr.io/r/base/data.frame.html) with columns:

- **lei**: The Legal Entity Identifier

- **name**: The attribute name

- **value**: The attribute value

When `simplify = FALSE`, a [`list()`](https://rdrr.io/r/base/list.html)
of the raw record objects from the API.

## See also

[`lei_record_by_id()`](https://m-muecke.github.io/gleifr/reference/lei_record_by_id.md)
to fetch a single record by its LEI.

## Examples

``` r
# \donttest{
# search by legal name
head(lei_records(legal_name = "Deutsche Bank", limit = 5))
#>                    lei                               name
#> 1 2138002P57WJTH4PBX56             entity_legal_name_name
#> 2 2138002P57WJTH4PBX56         entity_legal_name_language
#> 3 2138002P57WJTH4PBX56      entity_legal_address_language
#> 4 2138002P57WJTH4PBX56 entity_legal_address_address_lines
#> 5 2138002P57WJTH4PBX56          entity_legal_address_city
#> 6 2138002P57WJTH4PBX56        entity_legal_address_region
#>                                                                   value
#> 1 STICHTING ACHMEA ALGEMEEN PENSIOENFONDS KRING DEUTSCHE BANK NEDERLAND
#> 2                                                                    nl
#> 3                                                                    en
#> 4                                                          HANDELSWEG 2
#> 5                                                                 ZEIST
#> 6                                                                 NL-ZH

# filter by country and registration status
head(lei_records(country = "DE", registration_status = "ISSUED", limit = 5))
#>                    lei                               name
#> 1 05NYH65HUDFHD5XPKR75             entity_legal_name_name
#> 2 05NYH65HUDFHD5XPKR75         entity_legal_name_language
#> 3 05NYH65HUDFHD5XPKR75      entity_legal_address_language
#> 4 05NYH65HUDFHD5XPKR75 entity_legal_address_address_lines
#> 5 05NYH65HUDFHD5XPKR75          entity_legal_address_city
#> 6 05NYH65HUDFHD5XPKR75        entity_legal_address_region
#>                       value
#> 1 Raytheon Deutschland GmbH
#> 2                        de
#> 3                        de
#> 4            Kulturstr. 105
#> 5                  Freising
#> 6                     DE-BY
# }
```

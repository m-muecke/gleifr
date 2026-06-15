# Fetch LEI child records

Fetches the direct or ultimate child records of a given LEI.

## Usage

``` r
lei_children(id, type = c("direct", "ultimate"), limit = 200L, simplify = TRUE)
```

## Arguments

- id:

  (`character(1)`)  
  The Legal Entity Identifier (LEI) to fetch the children for.

- type:

  (`character(1)`)  
  The type of children to fetch. One of `"direct"` or `"ultimate"`.
  Default is `"direct"`.

- limit:

  (`NULL` \| `integer(1)`)  
  Maximum number of records to return. Default `200L`. Use `NULL` to
  fetch all.

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

[`lei_parent()`](https://m-muecke.github.io/gleifr/reference/lei_parent.md)
to fetch the parent record of a LEI.

## Examples

``` r
# \donttest{
# get direct children
head(lei_children("O2RNE8IBXP4R0TD8PU41", limit = 5))
#>                    lei                          name
#> 1 984500EAE6D72CBA2C07        entity_legal_name_name
#> 2 984500EAE6D72CBA2C07    entity_legal_name_language
#> 3 984500EAE6D72CBA2C07       entity_other_names_name
#> 4 984500EAE6D72CBA2C07   entity_other_names_language
#> 5 984500EAE6D72CBA2C07       entity_other_names_type
#> 6 984500EAE6D72CBA2C07 entity_legal_address_language
#>                             value
#> 1                   АЛД Аутомотив
#> 2                              bg
#> 3                  ALD Automotive
#> 4                              en
#> 5 ALTERNATIVE_LANGUAGE_LEGAL_NAME
#> 6                              bg

# get ultimate children
head(lei_children("O2RNE8IBXP4R0TD8PU41", type = "ultimate", limit = 5))
#>                    lei                               name
#> 1 391200JA6V2BZOH3JO02             entity_legal_name_name
#> 2 391200JA6V2BZOH3JO02         entity_legal_name_language
#> 3 391200JA6V2BZOH3JO02      entity_legal_address_language
#> 4 391200JA6V2BZOH3JO02 entity_legal_address_address_lines
#> 5 391200JA6V2BZOH3JO02          entity_legal_address_city
#> 6 391200JA6V2BZOH3JO02        entity_legal_address_region
#>                            value
#> 1 SG Frankfurt Beteiligungs GmbH
#> 2                             de
#> 3                             de
#> 4      Neue Mainzer Straße 46-50
#> 5                      Frankfurt
#> 6                          DE-HE
# }
```

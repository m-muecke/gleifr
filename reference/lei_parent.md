# Fetch a LEI parent record

Fetches the direct or ultimate parent record of a given LEI.

## Usage

``` r
lei_parent(id, type = c("direct", "ultimate"), simplify = TRUE)
```

## Arguments

- id:

  (`character(1)`)  
  The Legal Entity Identifier (LEI) to fetch the parent for.

- type:

  (`character(1)`)  
  The type of parent to fetch. One of `"direct"` or `"ultimate"`.
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

## See also

[`lei_children()`](https://m-muecke.github.io/gleifr/reference/lei_children.md)
to fetch the child records of a LEI.

## Examples

``` r
# \donttest{
# get direct parent
head(lei_parent("529900W18LQJJN6SJ336"))
#>                    lei                               name
#> 1 O2RNE8IBXP4R0TD8PU41             entity_legal_name_name
#> 2 O2RNE8IBXP4R0TD8PU41         entity_legal_name_language
#> 3 O2RNE8IBXP4R0TD8PU41      entity_legal_address_language
#> 4 O2RNE8IBXP4R0TD8PU41 entity_legal_address_address_lines
#> 5 O2RNE8IBXP4R0TD8PU41          entity_legal_address_city
#> 6 O2RNE8IBXP4R0TD8PU41       entity_legal_address_country
#>                    value
#> 1       SOCIETE GENERALE
#> 2                     fr
#> 3                     fr
#> 4 29 BOULEVARD HAUSSMANN
#> 5                  PARIS
#> 6                     FR

# get ultimate parent
head(lei_parent("529900W18LQJJN6SJ336", type = "ultimate"))
#>                    lei                               name
#> 1 O2RNE8IBXP4R0TD8PU41             entity_legal_name_name
#> 2 O2RNE8IBXP4R0TD8PU41         entity_legal_name_language
#> 3 O2RNE8IBXP4R0TD8PU41      entity_legal_address_language
#> 4 O2RNE8IBXP4R0TD8PU41 entity_legal_address_address_lines
#> 5 O2RNE8IBXP4R0TD8PU41          entity_legal_address_city
#> 6 O2RNE8IBXP4R0TD8PU41       entity_legal_address_country
#>                    value
#> 1       SOCIETE GENERALE
#> 2                     fr
#> 3                     fr
#> 4 29 BOULEVARD HAUSSMANN
#> 5                  PARIS
#> 6                     FR
# }
```

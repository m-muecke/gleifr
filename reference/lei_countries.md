# Fetch the list of countries

Fetches the list of countries (ISO 3166-1) recognized by the GLEIF API.

## Usage

``` r
lei_countries()
```

## Value

A [`data.frame()`](https://rdrr.io/r/base/data.frame.html) with columns:

- **code**: The country code

- **name**: The country name

## Examples

``` r
# \donttest{
head(lei_countries())
#>   code                       name
#> 1   AD                    Andorra
#> 2   AE United Arab Emirates (the)
#> 3   AF                Afghanistan
#> 4   AG        Antigua and Barbuda
#> 5   AI                   Anguilla
#> 6   AL                    Albania
# }
```

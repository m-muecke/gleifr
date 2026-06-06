# Fetch the list of registration authorities

Fetches the list of registration authorities (RA codes) recognized by
the GLEIF API. These resolve the registration authority codes that
appear in
[`lei_records()`](https://m-muecke.github.io/gleifr/reference/lei_records.md)
output to the issuing business registries.

## Usage

``` r
lei_registration_authorities()
```

## Value

A [`data.frame()`](https://rdrr.io/r/base/data.frame.html) with columns:

- **code**: The registration authority (RA) code

- **international_name**: The international name of the authority

- **local_name**: The local name of the authority, or `NA` if none

- **website**: The authority website, or `NA` if none

## Examples

``` r
if (FALSE) { # \dontrun{
lei_registration_authorities()
} # }
```

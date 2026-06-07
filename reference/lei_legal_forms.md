# Fetch the list of entity legal forms

Fetches the list of entity legal forms (ELF codes) recognized by the
GLEIF API. These resolve the legal form codes that appear in
[`lei_record_by_id()`](https://m-muecke.github.io/gleifr/reference/lei_record_by_id.md)
output to human-readable names.

## Usage

``` r
lei_legal_forms()
```

## Value

A [`data.frame()`](https://rdrr.io/r/base/data.frame.html) with columns:

- **code**: The entity legal form (ELF) code

- **country**: The country the legal form applies to

- **country_code**: The country code

- **status**: The status of the legal form, e.g. `"ACTV"`

- **name**: The local name of the legal form

- **language**: The language of the name

## Examples

``` r
if (FALSE) { # \dontrun{
lei_legal_forms()
} # }
```

# Fetch the list of official organizational roles

Fetches the list of official organizational roles (OOR codes) recognized
by the GLEIF API. These are the roles, such as director or general
partner, that a person can hold in a legal entity under a given legal
form, as used in verifiable LEI (vLEI) role credentials.

## Usage

``` r
lei_official_roles()
```

## Value

A [`data.frame()`](https://rdrr.io/r/base/data.frame.html) with one row
per role and name, and columns:

- **code**: The official organizational role (OOR) code

- **country**: The country the role applies to

- **country_code**: The country code

- **jurisdiction**: The jurisdiction the role applies to, or `NA` if
  none

- **subdivision_code**: The country subdivision code, or `NA` if none

- **elf_code**: The entity legal form (ELF) code the role belongs to,
  see
  [`lei_legal_forms()`](https://m-muecke.github.io/gleifr/reference/lei_legal_forms.md)

- **status**: The status of the role, e.g. `"ACTV"`

- **date_created**: The date the role was created as `Date`

- **name**: The local name of the role

- **language**: The language of the name

- **transliterated_name**: The name transliterated into Latin script

## See also

[`lei_legal_forms()`](https://m-muecke.github.io/gleifr/reference/lei_legal_forms.md)
for the legal forms the roles belong to.

## Examples

``` r
# \donttest{
head(lei_official_roles())
#> iterating ■■■■■■■■■■■■■■■                   45% | ETA:  1s
#> iterating ■■■■■■■■■■■■■■■■■■■■■■■■■■■■      91% | ETA:  0s
#> iterating ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■  100% | ETA:  0s
#>     code                  country country_code jurisdiction subdivision_code
#> 1 01D0O4                    Qatar           QA         <NA>             <NA>
#> 2 03EE4V                   Canada           CA       Canada             <NA>
#> 3 03EE4V                   Canada           CA       Canada             <NA>
#> 4 04GQOF United States of America           US South Dakota            US-SD
#> 5 062UW9 United States of America           US     Oklahoma            US-OK
#> 6 080BGK              Netherlands           NL         <NA>             <NA>
#>   elf_code status date_created               name language transliterated_name
#> 1     RN1W   ACTV   2023-06-28               موظف   Arabic             muwadaf
#> 2     MGE0   ACTV   2023-06-28   receiver-manager  English    receiver-manager
#> 3     MGE0   ACTV   2023-06-28   séquestre-gérant   French    séquestre-gérant
#> 4     JZWN   ACTV   2023-06-28           director  English            director
#> 5     BGH4   ACTV   2023-06-28     vice-president  English      vice-president
#> 6     54M6   ACTV   2023-06-28 Voorzitter bestuur    Dutch  Voorzitter bestuur
# }
```

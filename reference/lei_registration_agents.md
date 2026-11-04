# Fetch LEI registration agents

Fetches the list of registration agents from the GLEIF API. Registration
agents help legal entities obtain a LEI but do not issue LEIs
themselves; they work with an accredited issuer (see
[`lei_issuers()`](https://m-muecke.github.io/gleifr/reference/lei_issuers.md)).

## Usage

``` r
lei_registration_agents()
```

## Value

A [`data.frame()`](https://rdrr.io/r/base/data.frame.html) with one row
per agent and website, and columns:

- **name**: The registration agent name

- **lei**: The Legal Entity Identifier of the agent, or `NA` if none

- **lei_issuer**: The LEI of the issuer the agent works with

- **website**: The agent website, or `NA` if none

## See also

[`lei_issuers()`](https://m-muecke.github.io/gleifr/reference/lei_issuers.md)
for the accredited issuers.

## Examples

``` r
# \donttest{
head(lei_registration_agents())
#>                                  name                  lei           lei_issuer
#> 1 CDS Securities Management Solutions                 <NA> EVK05KS7XY1DEII3R011
#> 2               CUSIP Global Services                 <NA> EVK05KS7XY1DEII3R011
#> 3                   Merscorp Holdings 5493007B6TDWK865Q765 EVK05KS7XY1DEII3R011
#> 4                             NordLEI 549300O897ZC5H7CY412 EVK05KS7XY1DEII3R011
#> 5                             NordLEI 549300O897ZC5H7CY412 EVK05KS7XY1DEII3R011
#> 6                             NordLEI 549300O897ZC5H7CY412 EVK05KS7XY1DEII3R011
#>                                                                    website
#> 1 https://www.cds.ca/cds-products/cds-clearing/legal-entity-identifier-lei
#> 2                           https://www.cusip.com/cusiprequest/gmeiForm.do
#> 3                                              https://www.mersinc.org/lei
#> 4                                                 https://www.nordlei.org/
#> 5                                                 https://www.eurolei.com/
#> 6                                                     https://uklei.co.uk/
# }
```

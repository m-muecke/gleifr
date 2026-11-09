# Fetch LEI issuers

Fetches the list of LEI issuers (Local Operating Units) from the GLEIF
API.

## Usage

``` r
lei_issuers()
```

## Value

A [`data.frame()`](https://rdrr.io/r/base/data.frame.html) with columns:

- **lei**: The Legal Entity Identifier of the issuer

- **name**: The issuer name

- **marketing_name**: The marketing name

- **website**: The issuer website

- **accreditation_date**: The accreditation date as `POSIXct` in UTC

## Examples

``` r
# \donttest{
head(lei_issuers())
#>                    lei
#> 1 029200067A7K6CH0H586
#> 2 097900BEFH0000000217
#> 3 213800WAVVOPS85N2205
#> 4 253400M18U5TB02TW421
#> 5 254900LXHEVKYGERER05
#> 6 254900PMALKJRL1YGQ18
#>                                                                                          name
#> 1                                                      Central Securities Clearing System PLC
#> 2                                                     Centrálny depozitár cenných papierov SR
#> 3                                                           London Stock Exchange LEI Limited
#> 4 Небанковская кредитная организация акционерное общество "Национальный расчетный депозитарий
#> 5                                                                      Depozitarul Central SA
#> 6                                                                          Qatar Central Bank
#>                                      marketing_name
#> 1 Central Securities Clearing System plc of Nigeria
#> 2                                      CSD Slovakia
#> 3                             London Stock Exchange
#> 4            National Settlement Depository, Russia
#> 5                      Depozitarul Central, Romania
#> 6                               Qatar Credit Bureau
#>                                    website accreditation_date
#> 1 https://lei.cscs.ng/cscslei/cscs-lei.php         2018-01-30
#> 2                      https://lei.cdcp.sk         2018-01-30
#> 3                 https://www.lseg.com/LEI         2017-11-06
#> 4                  https://www.lei-code.ru         2018-01-05
#> 5                  https://lei.roclear.ro/         2018-12-06
#> 6               https://www.cb.gov.qa/lei/         2019-07-26
# }
```

# Fetch vLEI issuers

Fetches the list of qualified vLEI issuers from the GLEIF API. These
organizations are qualified by GLEIF to issue verifiable LEI (vLEI)
credentials, the digital counterpart of a LEI.

## Usage

``` r
lei_vlei_issuers()
```

## Value

A [`data.frame()`](https://rdrr.io/r/base/data.frame.html) with columns:

- **lei**: The Legal Entity Identifier of the issuer

- **name**: The issuer name

- **marketing_name**: The marketing name, or `NA` if none

- **website**: The issuer website, or `NA` if none

- **qualification_date**: The qualification date as `POSIXct` in UTC

## See also

[`lei_issuers()`](https://m-muecke.github.io/gleifr/reference/lei_issuers.md)
for the accredited LEI issuers,
[`lei_official_roles()`](https://m-muecke.github.io/gleifr/reference/lei_official_roles.md)
for the roles used in vLEI role credentials.

## Examples

``` r
# \donttest{
head(lei_vlei_issuers())
#>                    lei                           name   marketing_name
#> 1 3003006UVF25XTIMJ336   亚数信息科技（上海）有限公司        TrustAsia
#> 2 300300CQ1FG1K4KM7075       中金金融认证中心有限公司             CFCA
#> 3 353800460NTF5K7NU940           TOPPANエッジ株式会社 TOPPAN Edge Inc.
#> 4 636700LQ8SMYXSBX5D74                    Global vLEI      Global vLEI
#> 5 83680008RNIDW9LD8Z21 上海市数字证书认证中心有限公司            SHECA
#> 6 836800VC81GMPMG59W77               Certizen Limited         Certizen
#>                              website qualification_date
#> 1         https://www.trustasia.com/         2026-10-12
#> 2           https://www.cfca.com.cn/         2025-02-14
#> 3       https://www.edge.toppan.com/         2025-09-05
#> 4            https://globalvlei.com/         2025-05-26
#> 5 https://static.sheca.com/vlei-web/         2025-10-15
#> 6           https://www.certlei.com/         2025-03-20
# }
```

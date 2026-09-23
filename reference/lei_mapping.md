# Download the latest LEI mapping data

Download the latest Legal Entity Identifier (LEI) mapping data from the
Global Legal Entity Identifier Foundation (GLEIF).

## Usage

``` r
lei_mapping(type = c("isin", "bic", "mic", "oc"))
```

## Source

<https://www.gleif.org/en/lei-data/lei-mapping>

## Arguments

- type:

  (`character(1)`)  
  The type of mapping data to download. One of `"isin"`, `"bic"`,
  `"mic"`, or `"oc"`. Default is `"isin"`.

## Value

A [`data.frame()`](https://rdrr.io/r/base/data.frame.html) with the lei
and the corresponding mapping.

## Examples

``` r
# \donttest{
head(lei_mapping("isin"))
#>                    lei         isin
#> 1 001GPB6A9XPE8XJICC14 US3158052262
#> 2 00EHHQ2ZHDCFXJCPCL46 US92204Q1031
#> 3 00KLB2PFTM3060S2N216 US4138382027
#> 4 00KLB2PFTM3060S2N216 US4138385749
#> 5 01PZ5A1XH5933KUUB187 US8724667014
#> 6 024DELVYES1ONBTJWD69 US7467646466
# }
```

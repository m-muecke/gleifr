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
#> 1 00EHHQ2ZHDCFXJCPCL46 US92204Q1031
#> 2 00KLB2PFTM3060S2N216 US4138382027
#> 3 029200038B4L4ZI1E579 NGSDCBANCO00
#> 4 029200067A7K6CH0H586 NGSDCSCSPLC2
#> 5 0292001178F3RHI5D836 NGNEIMETH001
#> 6 0292001178F3RHI5D836 NGRR26NEIME9
# }
```

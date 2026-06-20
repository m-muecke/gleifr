# gleifr

gleifr is a minimal R client for the [GLEIF](https://www.gleif.org) API.
A major challenge when dealing with financial data is mapping entities
across different data sources. The [Legal Entity Identifier
(LEI)](https://www.gleif.org/en/organizational-identity/lei-vlei/the-legal-entity-identifier-lei)
is a 20-character, alphanumeric code that uniquely identifies legally
distinct entities that engage in financial transactions. The Global
Legal Entity Identifier Foundation (GLEIF) maintains the global LEI
system and exposes it through a free, public API.

gleifr wraps that API so you can, from R:

- look up the reference data behind any LEI, or search for LEIs by name,
  jurisdiction, or full text,
- traverse corporate hierarchies via direct and ultimate parent and
  child relationships,
- map LEIs to other identifiers such as ISIN, BIC, and MIC,
- and access supporting reference data like regions and accredited
  issuers (Local Operating Units).

## Installation

You can install the development version of gleifr from
[GitHub](https://github.com/m-muecke/gleifr) with:

``` r

# install.packages("pak")
pak::pak("m-muecke/gleifr")
```

## Usage

``` r

library(gleifr)
```

### Looking up a record by LEI

Pass a LEI to
[`lei_record_by_id()`](https://m-muecke.github.io/gleifr/reference/lei_record_by_id.md)
to retrieve its full reference data. By default the result is returned
as a tidy long-format data frame with one attribute per row:

``` r

record <- lei_record_by_id("001GPB6A9XPE8XJICC14")
str(record)
#> 'data.frame':    37 obs. of  3 variables:
#>  $ lei  : chr  "001GPB6A9XPE8XJICC14" "001GPB6A9XPE8XJICC14" "001GPB6A9XPE8XJ"..
#>  $ name : chr  "entity_legal_name_name" "entity_legal_name_language" "entity_"..
#>  $ value: chr  "Fidelity Advisor Leveraged Company Stock Fund" "en" "FIDELITY"..
```

### Searching for records

Use
[`lei_records()`](https://m-muecke.github.io/gleifr/reference/lei_records.md)
to query the LEI database. You can filter by legal name, country,
jurisdiction, status, category, or ISIN, or run a full-text query:

``` r

# search by legal name
lei_records(legal_name = "Deutsche Bank")

# combine filters
lei_records(country = "DE", registration_status = "ISSUED")
```

### Corporate relationships

Traverse ownership hierarchies with
[`lei_parent()`](https://m-muecke.github.io/gleifr/reference/lei_parent.md)
and
[`lei_children()`](https://m-muecke.github.io/gleifr/reference/lei_children.md):

``` r

# direct parent (use type = "ultimate" for the ultimate parent)
lei_parent("529900W18LQJJN6SJ336")

# direct children
lei_children("529900W18LQJJN6SJ336")
```

### Identifier mappings

[`lei_mapping()`](https://m-muecke.github.io/gleifr/reference/lei_mapping.md)
downloads the latest bulk relationship file that maps every LEI to
another identifier type: ISIN, BIC, MIC, or OpenCorporates ID (`"oc"`):

``` r

mapping <- lei_mapping("isin")
head(mapping)
#>                    lei         isin
#> 1 00EHHQ2ZHDCFXJCPCL46 US92204Q1031
#> 2 00KLB2PFTM3060S2N216 US4138382027
#> 3 029200038B4L4ZI1E579 NGSDCBANCO00
#> 4 029200067A7K6CH0H586 NGSDCSCSPLC2
#> 5 0292001178F3RHI5D836 NGNEIMETH001
#> 6 0292001178F3RHI5D836 NGRR26NEIME9
```

To fetch the ISINs for a single entity instead of the full file, use
[`lei_isins()`](https://m-muecke.github.io/gleifr/reference/lei_isins.md):

``` r

lei_isins("529900W18LQJJN6SJ336")
```

## Caching

API responses can be cached locally to avoid repeated downloads. Caching
is opt-in and controlled through options:

``` r

# enable caching (responses are kept for 1 day by default)
options(gleifr.cache = TRUE)

# customize the maximum age in seconds
options(gleifr.cache_max_age = 3600)

# inspect or clear the cache
lei_cache_dir()
lei_cache_clear()
```

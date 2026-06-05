# Get or manage the gleifr API cache

`gleifr_cache_dir()` returns the path where cached API responses are
stored. `gleifr_cache_clear()` clears all cached responses.

## Usage

``` r
gleifr_cache_dir()

gleifr_cache_clear()
```

## Details

The cache is only used when enabled with `options(gleifr.cache = TRUE)`.
Cached responses are stored for 1 day by default, but this can be
customized with `options(gleifr.cache_max_age = seconds)`.

## Examples

``` r
if (FALSE) { # \dontrun{
# enable caching
options(gleifr.cache = TRUE)

# view cache location
gleifr_cache_dir()

# clear the cache
gleifr_cache_clear()
} # }
```

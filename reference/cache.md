# Get or manage the gleifr API cache

`lei_cache_dir()` returns the path where cached API responses are
stored. `lei_cache_clear()` clears all cached responses.

## Usage

``` r
lei_cache_dir()

lei_cache_clear()
```

## Value

`lei_cache_dir()` returns a single string giving the path to the cache
directory.

`lei_cache_clear()` is called for its side effect of deleting the cached
responses and returns `NULL` invisibly.

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
lei_cache_dir()

# clear the cache
lei_cache_clear()
} # }
```

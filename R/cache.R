#' Get or manage the gleifr API cache
#'
#' `lei_cache_dir()` returns the path where cached API responses are stored.
#' `lei_cache_clear()` clears all cached responses.
#'
#' @details
#' The cache is only used when enabled with `options(gleifr.cache = TRUE)`.
#' Cached responses are stored for 1 day by default, but this can be customized with
#' `options(gleifr.cache_max_age = seconds)`.
#'
#' @name cache
#' @returns
#' `lei_cache_dir()` returns a single string giving the path to the cache directory.
#'
#' `lei_cache_clear()` is called for its side effect of deleting the cached responses and returns
#' `NULL` invisibly.
#' @examples
#' \dontrun{
#' # enable caching
#' options(gleifr.cache = TRUE)
#'
#' # view cache location
#' lei_cache_dir()
#'
#' # clear the cache
#' lei_cache_clear()
#' }
NULL

#' @rdname cache
#' @export
lei_cache_dir <- function() {
  file.path(tools::R_user_dir("gleifr", "cache"), "httr2")
}

#' @rdname cache
#' @export
lei_cache_clear <- function() {
  cache_dir <- lei_cache_dir()
  if (dir.exists(cache_dir)) {
    unlink(dir(cache_dir, full.names = TRUE))
  }
  invisible()
}

req_lei_cache <- function(req) {
  if (isTRUE(getOption("gleifr.cache", FALSE))) {
    req <- req_cache(
      req,
      path = lei_cache_dir(),
      max_age = getOption("gleifr.cache_max_age", 86400L)
    )
  }
  req
}

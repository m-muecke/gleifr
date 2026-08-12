is_flag <- function(x, null_ok = FALSE) {
  if (null_ok && is.null(x)) {
    return(TRUE)
  }
  is.logical(x) && length(x) == 1L && !is.na(x)
}

is_string <- function(x, ..., n_chars = NULL, pattern = NULL, null_ok = FALSE) {
  if (null_ok && is.null(x)) {
    return(TRUE)
  }
  ok <- is.character(x) && length(x) == 1L && !is.na(x)
  if (ok && !is.null(n_chars)) {
    ok <- nchar(x) %in% n_chars
  }
  if (ok && !is.null(pattern)) {
    ok <- grepl(pattern, x, ...)
  }
  ok
}

is_lei <- function(x) {
  is_string(x, n_chars = 20L, pattern = "^[A-Z0-9]+$", ignore.case = TRUE)
}

is_count <- function(x, null_ok = FALSE) {
  if (null_ok && is.null(x)) {
    return(TRUE)
  }
  is.numeric(x) && length(x) == 1L && is.finite(x) && as.integer(x) == x && x > 0L
}

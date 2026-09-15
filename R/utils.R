`%||%` <- function(x, y) {
  if (is.null(x)) y else x # nolint
}

to_snake_case <- function(x) {
  tolower(gsub("((?<=[a-z0-9])[A-Z]|(?!^)[A-Z](?=[a-z]))", "_\\1", x, perl = TRUE))
}

as_utc <- function(x) {
  as.POSIXct(x %||% NA_character_, format = "%Y-%m-%dT%H:%M:%S", tz = "UTC")
}

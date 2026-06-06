`%||%` <- function(x, y) {
  if (is.null(x)) y else x # nolint
}

to_snake_case <- function(x) {
  tolower(gsub("((?<=[a-z0-9])[A-Z]|(?!^)[A-Z](?=[a-z]))", "_\\1", x, perl = TRUE))
}

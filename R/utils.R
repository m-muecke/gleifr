`%||%` <- function(x, y) {
  if (is.null(x)) y else x # nolint
}

to_snake_case <- function(x) {
  tolower(gsub("((?<=[a-z0-9])[A-Z]|(?!^)[A-Z](?=[a-z]))", "_\\1", x, perl = TRUE))
}

as_utc <- function(x) {
  as.POSIXct(x %||% NA_character_, format = "%Y-%m-%dT%H:%M:%S", tz = "UTC")
}

simplify_records <- function(x) {
  x <- unlist(x)
  lei <- x[["lei"]]
  x <- x[names(x) != "lei"]
  data.frame(
    lei = lei,
    name = names(x),
    value = unname(x),
    check.names = FALSE
  )
}

clean_names <- function(tab) {
  if (is.null(tab)) {
    return(NULL)
  }
  tab$name <- gsub(".", "_", tab$name, fixed = TRUE)
  tab$name <- to_snake_case(tab$name)
  tab
}

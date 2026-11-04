test_that("to_snake_case works", {
  expect_identical(to_snake_case("legalName"), "legal_name")
  expect_identical(to_snake_case("entityID"), "entity_id")
  expect_identical(to_snake_case("already_snake"), "already_snake")
  expect_identical(to_snake_case("XMLParser"), "xml_parser")
})

test_that("clean_names cleans attribute names", {
  tab <- data.frame(
    lei = "123",
    name = c("entity.legalName", "entity.status"),
    value = c("Foo", "ACTIVE")
  )
  res <- clean_names(tab)
  expect_identical(res$name, c("entity_legal_name", "entity_status"))
})

test_that("clean_names passes NULL through", {
  expect_null(clean_names(NULL))
})

test_that("as_utc parses API timestamps and missing values", {
  expect_identical(as_utc("2017-04-13T00:00:00+00:00"), as.POSIXct("2017-04-13", tz = "UTC"))
  expect_identical(as_utc("2026-09-08T16:00:00Z"), as.POSIXct("2026-09-08 16:00:00", tz = "UTC"))
  expect_identical(as_utc(NULL), as.POSIXct(NA_character_, tz = "UTC"))
})

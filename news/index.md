# Changelog

## gleifr (development version)

- Fixed pagination truncating results at 200 records.
- Empty results now consistently return `NULL` instead of a malformed
  list.
- A `limit` below 200 no longer fetches 200 records.
- Replaced the `rvest` dependency with the lighter `xml2`.

## gleifr 0.1.0

CRAN release: 2026-06-20

- Initial CRAN submission.

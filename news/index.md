# Changelog

## gleifr (development version)

## gleifr 0.3.0

CRAN release: 2026-09-16

- New
  [`lei_child_relationships()`](https://m-muecke.github.io/gleifr/reference/lei_child_relationships.md)
  and
  [`lei_parent_relationship()`](https://m-muecke.github.io/gleifr/reference/lei_parent_relationship.md)
  fetch the relationship records of a LEI.
- [`lei_children()`](https://m-muecke.github.io/gleifr/reference/lei_children.md),
  [`lei_isins()`](https://m-muecke.github.io/gleifr/reference/lei_isins.md),
  [`lei_modifications()`](https://m-muecke.github.io/gleifr/reference/lei_modifications.md),
  [`lei_parent()`](https://m-muecke.github.io/gleifr/reference/lei_parent.md),
  and
  [`lei_record_by_id()`](https://m-muecke.github.io/gleifr/reference/lei_record_by_id.md)
  now validate that `id` is a 20 character LEI, instead of silently
  returning a malformed
  [`data.frame()`](https://rdrr.io/r/base/data.frame.html) for values
  such as `""`.
- [`lei_issuers()`](https://m-muecke.github.io/gleifr/reference/lei_issuers.md)
  now returns `accreditation_date` as `POSIXct` in UTC instead of a
  character string.
- [`lei_modifications()`](https://m-muecke.github.io/gleifr/reference/lei_modifications.md)
  now returns `date` as `POSIXct` in UTC instead of a character string.
- [`lei_records()`](https://m-muecke.github.io/gleifr/reference/lei_records.md)
  gains a `sort` argument to order results by an API field,
  e.g. `sort = "-registration.lastUpdateDate"` for the most recently
  updated records first.
- [`lei_registration_authorities()`](https://m-muecke.github.io/gleifr/reference/lei_registration_authorities.md)
  now returns the international and local organization names supplied by
  GLEIF.

## gleifr 0.2.0

CRAN release: 2026-07-18

- Fixed pagination truncating results at 200 records.
- Empty results now consistently return `NULL` instead of a malformed
  list.
- A `limit` below 200 no longer fetches 200 records.
- Replaced the `rvest` dependency with the lighter `xml2`.

## gleifr 0.1.0

CRAN release: 2026-06-20

- Initial CRAN submission.

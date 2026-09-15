# gleifr 0.3.0

* New `lei_child_relationships()` and `lei_parent_relationship()` fetch the relationship records of a LEI.
* `lei_children()`, `lei_isins()`, `lei_modifications()`, `lei_parent()`, and `lei_record_by_id()` now validate that `id` is a 20 character LEI, instead of silently returning a malformed `data.frame()` for values such as `""`.
* `lei_issuers()` now returns `accreditation_date` as `POSIXct` in UTC instead of a character string.
* `lei_modifications()` now returns `date` as `POSIXct` in UTC instead of a character string.
* `lei_records()` gains a `sort` argument to order results by an API field, e.g. `sort = "-registration.lastUpdateDate"` for the most recently updated records first.
* `lei_registration_authorities()` now returns the international and local organization names supplied by GLEIF.

# gleifr 0.2.0

* Fixed pagination truncating results at 200 records.
* Empty results now consistently return `NULL` instead of a malformed list.
* A `limit` below 200 no longer fetches 200 records.
* Replaced the `rvest` dependency with the lighter `xml2`.

# gleifr 0.1.0

* Initial CRAN submission.

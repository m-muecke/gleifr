# gleifr (development version)

* `lei_children()`, `lei_isins()`, `lei_modifications()`, `lei_parent()`, and `lei_record_by_id()` now validate that `id` is a 20 character LEI, instead of silently returning a malformed `data.frame()` for values such as `""`.

# gleifr 0.2.0

* Fixed pagination truncating results at 200 records.
* Empty results now consistently return `NULL` instead of a malformed list.
* A `limit` below 200 no longer fetches 200 records.
* Replaced the `rvest` dependency with the lighter `xml2`.

# gleifr 0.1.0

* Initial CRAN submission.

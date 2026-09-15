# Fetch the change history of a LEI record

Fetches the field-level modification history of a given LEI, i.e. an
audit log of every recorded change to the entity (`recordType` `"LEI"`)
and its relationships (`recordType` `"RR"`).

## Usage

``` r
lei_modifications(id, limit = 200L)
```

## Source

<https://www.gleif.org/en/lei-data/gleif-api>

## Arguments

- id:

  (`character(1)`)  
  The Legal Entity Identifier (LEI) to fetch the change history for.

- limit:

  (`NULL` \| `integer(1)`)  
  Maximum number of records to return. Default `200L`. Use `NULL` to
  fetch all.

## Value

A [`data.frame()`](https://rdrr.io/r/base/data.frame.html) with columns:

- **lei**: The Legal Entity Identifier

- **record_type**: The record the change applies to, `"LEI"` or `"RR"`

- **modification_type**: The type of change, e.g. `"UPDATE"`

- **field**: The path of the changed field

- **date**: The date of the change as `POSIXct` in UTC

- **value_old**: The previous value, or `NA` if none

- **value_new**: The new value, or `NA` if none

When the LEI has no modifications, `NULL`.

## Examples

``` r
# \donttest{
head(lei_modifications("529900W18LQJJN6SJ336", limit = 10))
#>                    lei record_type modification_type
#> 1 529900W18LQJJN6SJ336          RR            UPDATE
#> 2 529900W18LQJJN6SJ336          RR            UPDATE
#> 3 529900W18LQJJN6SJ336          RR            UPDATE
#> 4 529900W18LQJJN6SJ336          RR            UPDATE
#> 5 529900W18LQJJN6SJ336          RR            UPDATE
#> 6 529900W18LQJJN6SJ336          RR            UPDATE
#>                                                                                                                                         field
#> 1                                        /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Registration/rr:NextRenewalDate
#> 2                                        /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Registration/rr:NextRenewalDate
#> 3                                         /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Registration/rr:LastUpdateDate
#> 4                                         /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Registration/rr:LastUpdateDate
#> 5 /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Relationship/rr:RelationshipPeriods/rr:RelationshipPeriod/rr:StartDate
#> 6 /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Relationship/rr:RelationshipPeriods/rr:RelationshipPeriod/rr:StartDate
#>                  date                 value_old                 value_new
#> 1 2026-09-08 16:00:00 2026-10-18T00:00:00+02:00 2027-10-18T00:00:00+02:00
#> 2 2026-09-08 16:00:00 2026-10-18T00:00:00+02:00 2027-10-18T00:00:00+02:00
#> 3 2026-09-08 16:00:00 2025-08-27T16:35:08+02:00 2026-09-08T10:51:36+02:00
#> 4 2026-09-08 16:00:00 2025-08-27T16:35:08+02:00 2026-09-08T10:51:36+02:00
#> 5 2026-09-08 16:00:00 2025-03-12T00:00:00+01:00 2026-05-13T00:00:00+02:00
#> 6 2026-09-08 16:00:00 2025-03-12T00:00:00+01:00 2026-05-13T00:00:00+02:00
# }
```

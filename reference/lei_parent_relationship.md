# Fetch the parent relationship record of a LEI

Fetches the relationship record that links a LEI to its direct or
ultimate parent. Where
[`lei_parent()`](https://m-muecke.github.io/gleifr/reference/lei_parent.md)
returns the parent's own LEI record, this returns the relationship
itself: its type, status, the periods it covers, and how it was
corroborated.

## Usage

``` r
lei_parent_relationship(id, type = c("direct", "ultimate"))
```

## Arguments

- id:

  (`character(1)`)  
  The Legal Entity Identifier (LEI) to fetch the parent relationship
  for.

- type:

  (`character(1)`)  
  The type of parent relationship to fetch. One of `"direct"` or
  `"ultimate"`. Default is `"direct"`.

## Value

A [`data.frame()`](https://rdrr.io/r/base/data.frame.html) with one row
and columns (all dates are `POSIXct` in UTC):

- **start_node**: The LEI of the child entity

- **end_node**: The LEI of the parent entity

- **relationship_type**: The relationship type, e.g.
  `"IS_DIRECTLY_CONSOLIDATED_BY"`

- **relationship_status**: The relationship status, e.g. `"ACTIVE"`

- **relationship_period_start**, **relationship_period_end**: When the
  relationship holds

- **accounting_period_start**, **accounting_period_end**: The accounting
  period it was reported for

- **document_filing_period_start**, **document_filing_period_end**: The
  filing period of the supporting document, or `NA` if none

- **initial_registration_date**: When the relationship was first
  registered

- **last_update_date**: When the relationship was last updated

- **registration_status**: The registration status, e.g. `"PUBLISHED"`
  or `"LAPSED"`

- **next_renewal_date**: When the relationship is due for renewal

- **managing_lou**: The LEI of the managing Local Operating Unit

- **corroboration_level**: How the relationship was validated, e.g.
  `"FULLY_CORROBORATED"`

- **corroboration_documents**: The type of supporting document, or `NA`
  if none

- **corroboration_reference**: A reference to the supporting document,
  or `NA` if none

- **valid_from**, **valid_to**: When the record is valid in the GLEIF
  database

Errors when no parent relationship is reported for the LEI.

## See also

[`lei_child_relationships()`](https://m-muecke.github.io/gleifr/reference/lei_child_relationships.md)
for the relationships to the children of a LEI,
[`lei_parent()`](https://m-muecke.github.io/gleifr/reference/lei_parent.md)
for the parent's LEI record.

## Examples

``` r
# \donttest{
lei_parent_relationship("529900W18LQJJN6SJ336")
#>             start_node             end_node           relationship_type
#> 1 529900W18LQJJN6SJ336 O2RNE8IBXP4R0TD8PU41 IS_DIRECTLY_CONSOLIDATED_BY
#>   relationship_status relationship_period_start relationship_period_end
#> 1              ACTIVE       2017-10-16 22:00:00                    <NA>
#>   accounting_period_start accounting_period_end document_filing_period_start
#> 1     2024-12-31 23:00:00   2025-12-30 23:00:00          2026-05-12 22:00:00
#>   document_filing_period_end initial_registration_date    last_update_date
#> 1                       <NA>       2017-10-25 12:09:30 2026-09-08 08:51:36
#>   registration_status   next_renewal_date         managing_lou
#> 1           PUBLISHED 2027-10-17 22:00:00 5299000J2N45DDNE4Y28
#>   corroboration_level corroboration_documents corroboration_reference
#> 1  FULLY_CORROBORATED         ACCOUNTS_FILING                    <NA>
#>            valid_from valid_to
#> 1 2026-09-08 16:00:00     <NA>

lei_parent_relationship("529900W18LQJJN6SJ336", type = "ultimate")
#>             start_node             end_node             relationship_type
#> 1 529900W18LQJJN6SJ336 O2RNE8IBXP4R0TD8PU41 IS_ULTIMATELY_CONSOLIDATED_BY
#>   relationship_status relationship_period_start relationship_period_end
#> 1              ACTIVE       2017-10-16 22:00:00                    <NA>
#>   accounting_period_start accounting_period_end document_filing_period_start
#> 1     2024-12-31 23:00:00   2025-12-30 23:00:00          2026-05-12 22:00:00
#>   document_filing_period_end initial_registration_date    last_update_date
#> 1                       <NA>       2017-10-25 12:09:30 2026-09-08 08:51:36
#>   registration_status   next_renewal_date         managing_lou
#> 1           PUBLISHED 2027-10-17 22:00:00 5299000J2N45DDNE4Y28
#>   corroboration_level corroboration_documents corroboration_reference
#> 1  FULLY_CORROBORATED         ACCOUNTS_FILING                    <NA>
#>            valid_from valid_to
#> 1 2026-09-08 16:00:00     <NA>
# }
```

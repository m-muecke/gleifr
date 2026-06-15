# Fetch a LEI parent record

Fetches the direct or ultimate parent record of a given LEI.

## Usage

``` r
lei_parent(id, type = c("direct", "ultimate"), simplify = TRUE)
```

## Arguments

- id:

  (`character(1)`)  
  The Legal Entity Identifier (LEI) to fetch the parent for.

- type:

  (`character(1)`)  
  The type of parent to fetch. One of `"direct"` or `"ultimate"`.
  Default is `"direct"`.

- simplify:

  (`logical(1)`)  
  Should the output be simplified? Default `TRUE`.

## Value

When `simplify = TRUE`, a long-format
[`data.frame()`](https://rdrr.io/r/base/data.frame.html) with columns:

- **lei**: The Legal Entity Identifier

- **name**: The attribute name

- **value**: The attribute value

When `simplify = FALSE`, a named
[`list()`](https://rdrr.io/r/base/list.html) containing the raw API
response.

## See also

[`lei_children()`](https://m-muecke.github.io/gleifr/reference/lei_children.md)
to fetch the child records of a LEI.

## Examples

``` r
# \donttest{
# get direct parent
lei_parent("529900W18LQJJN6SJ336")
#>                     lei                                            name
#> 1  O2RNE8IBXP4R0TD8PU41                          entity_legal_name_name
#> 2  O2RNE8IBXP4R0TD8PU41                      entity_legal_name_language
#> 3  O2RNE8IBXP4R0TD8PU41                   entity_legal_address_language
#> 4  O2RNE8IBXP4R0TD8PU41              entity_legal_address_address_lines
#> 5  O2RNE8IBXP4R0TD8PU41                       entity_legal_address_city
#> 6  O2RNE8IBXP4R0TD8PU41                    entity_legal_address_country
#> 7  O2RNE8IBXP4R0TD8PU41                entity_legal_address_postal_code
#> 8  O2RNE8IBXP4R0TD8PU41            entity_headquarters_address_language
#> 9  O2RNE8IBXP4R0TD8PU41       entity_headquarters_address_address_lines
#> 10 O2RNE8IBXP4R0TD8PU41                entity_headquarters_address_city
#> 11 O2RNE8IBXP4R0TD8PU41             entity_headquarters_address_country
#> 12 O2RNE8IBXP4R0TD8PU41         entity_headquarters_address_postal_code
#> 13 O2RNE8IBXP4R0TD8PU41                         entity_registered_at_id
#> 14 O2RNE8IBXP4R0TD8PU41                            entity_registered_as
#> 15 O2RNE8IBXP4R0TD8PU41                             entity_jurisdiction
#> 16 O2RNE8IBXP4R0TD8PU41                                 entity_category
#> 17 O2RNE8IBXP4R0TD8PU41                            entity_legal_form_id
#> 18 O2RNE8IBXP4R0TD8PU41                                   entity_status
#> 19 O2RNE8IBXP4R0TD8PU41                            entity_creation_date
#> 20 O2RNE8IBXP4R0TD8PU41                  entity_event_groups_group_type
#> 21 O2RNE8IBXP4R0TD8PU41 entity_event_groups_events_validation_documents
#> 22 O2RNE8IBXP4R0TD8PU41       entity_event_groups_events_effective_date
#> 23 O2RNE8IBXP4R0TD8PU41        entity_event_groups_events_recorded_date
#> 24 O2RNE8IBXP4R0TD8PU41                 entity_event_groups_events_type
#> 25 O2RNE8IBXP4R0TD8PU41               entity_event_groups_events_status
#> 26 O2RNE8IBXP4R0TD8PU41                  entity_event_groups_group_type
#> 27 O2RNE8IBXP4R0TD8PU41 entity_event_groups_events_validation_documents
#> 28 O2RNE8IBXP4R0TD8PU41       entity_event_groups_events_effective_date
#> 29 O2RNE8IBXP4R0TD8PU41        entity_event_groups_events_recorded_date
#> 30 O2RNE8IBXP4R0TD8PU41                 entity_event_groups_events_type
#> 31 O2RNE8IBXP4R0TD8PU41               entity_event_groups_events_status
#> 32 O2RNE8IBXP4R0TD8PU41          registration_initial_registration_date
#> 33 O2RNE8IBXP4R0TD8PU41                   registration_last_update_date
#> 34 O2RNE8IBXP4R0TD8PU41                             registration_status
#> 35 O2RNE8IBXP4R0TD8PU41                  registration_next_renewal_date
#> 36 O2RNE8IBXP4R0TD8PU41                       registration_managing_lou
#> 37 O2RNE8IBXP4R0TD8PU41                registration_corroboration_level
#> 38 O2RNE8IBXP4R0TD8PU41                    registration_validated_at_id
#> 39 O2RNE8IBXP4R0TD8PU41                       registration_validated_as
#> 40 O2RNE8IBXP4R0TD8PU41                                             bic
#> 41 O2RNE8IBXP4R0TD8PU41                                            mic1
#> 42 O2RNE8IBXP4R0TD8PU41                                            mic2
#> 43 O2RNE8IBXP4R0TD8PU41                                            ocid
#> 44 O2RNE8IBXP4R0TD8PU41                                             qcc
#> 45 O2RNE8IBXP4R0TD8PU41                                        spglobal
#> 46 O2RNE8IBXP4R0TD8PU41                                 conformity_flag
#>                     value
#> 1        SOCIETE GENERALE
#> 2                      fr
#> 3                      fr
#> 4  29 BOULEVARD HAUSSMANN
#> 5                   PARIS
#> 6                      FR
#> 7                   75009
#> 8                      fr
#> 9  29 BOULEVARD HAUSSMANN
#> 10                  PARIS
#> 11                     FR
#> 12                  75009
#> 13               RA000189
#> 14              552120222
#> 15                     FR
#> 16                GENERAL
#> 17                   K65D
#> 18                 ACTIVE
#> 19   1899-12-31T23:00:00Z
#> 20             STANDALONE
#> 21      REGULATORY_FILING
#> 22   2022-12-31T23:00:00Z
#> 23   2023-06-12T13:25:59Z
#> 24             ABSORPTION
#> 25              COMPLETED
#> 26             STANDALONE
#> 27      REGULATORY_FILING
#> 28   2019-04-18T22:00:00Z
#> 29   2023-06-12T13:25:59Z
#> 30             ABSORPTION
#> 31              COMPLETED
#> 32   2012-06-05T22:00:00Z
#> 33   2025-12-29T21:09:15Z
#> 34                 ISSUED
#> 35   2027-01-04T23:00:00Z
#> 36   969500Q2MA9VBQ8BG884
#> 37     FULLY_CORROBORATED
#> 38               RA000189
#> 39              552120222
#> 40            NEWGFRP1XXX
#> 41                   XSGA
#> 42                   XSGB
#> 43           fr/552120222
#> 44             QFR5FX8YQ7
#> 45                  23005
#> 46             CONFORMING

# get ultimate parent
lei_parent("529900W18LQJJN6SJ336", type = "ultimate")
#>                     lei                                            name
#> 1  O2RNE8IBXP4R0TD8PU41                          entity_legal_name_name
#> 2  O2RNE8IBXP4R0TD8PU41                      entity_legal_name_language
#> 3  O2RNE8IBXP4R0TD8PU41                   entity_legal_address_language
#> 4  O2RNE8IBXP4R0TD8PU41              entity_legal_address_address_lines
#> 5  O2RNE8IBXP4R0TD8PU41                       entity_legal_address_city
#> 6  O2RNE8IBXP4R0TD8PU41                    entity_legal_address_country
#> 7  O2RNE8IBXP4R0TD8PU41                entity_legal_address_postal_code
#> 8  O2RNE8IBXP4R0TD8PU41            entity_headquarters_address_language
#> 9  O2RNE8IBXP4R0TD8PU41       entity_headquarters_address_address_lines
#> 10 O2RNE8IBXP4R0TD8PU41                entity_headquarters_address_city
#> 11 O2RNE8IBXP4R0TD8PU41             entity_headquarters_address_country
#> 12 O2RNE8IBXP4R0TD8PU41         entity_headquarters_address_postal_code
#> 13 O2RNE8IBXP4R0TD8PU41                         entity_registered_at_id
#> 14 O2RNE8IBXP4R0TD8PU41                            entity_registered_as
#> 15 O2RNE8IBXP4R0TD8PU41                             entity_jurisdiction
#> 16 O2RNE8IBXP4R0TD8PU41                                 entity_category
#> 17 O2RNE8IBXP4R0TD8PU41                            entity_legal_form_id
#> 18 O2RNE8IBXP4R0TD8PU41                                   entity_status
#> 19 O2RNE8IBXP4R0TD8PU41                            entity_creation_date
#> 20 O2RNE8IBXP4R0TD8PU41                  entity_event_groups_group_type
#> 21 O2RNE8IBXP4R0TD8PU41 entity_event_groups_events_validation_documents
#> 22 O2RNE8IBXP4R0TD8PU41       entity_event_groups_events_effective_date
#> 23 O2RNE8IBXP4R0TD8PU41        entity_event_groups_events_recorded_date
#> 24 O2RNE8IBXP4R0TD8PU41                 entity_event_groups_events_type
#> 25 O2RNE8IBXP4R0TD8PU41               entity_event_groups_events_status
#> 26 O2RNE8IBXP4R0TD8PU41                  entity_event_groups_group_type
#> 27 O2RNE8IBXP4R0TD8PU41 entity_event_groups_events_validation_documents
#> 28 O2RNE8IBXP4R0TD8PU41       entity_event_groups_events_effective_date
#> 29 O2RNE8IBXP4R0TD8PU41        entity_event_groups_events_recorded_date
#> 30 O2RNE8IBXP4R0TD8PU41                 entity_event_groups_events_type
#> 31 O2RNE8IBXP4R0TD8PU41               entity_event_groups_events_status
#> 32 O2RNE8IBXP4R0TD8PU41          registration_initial_registration_date
#> 33 O2RNE8IBXP4R0TD8PU41                   registration_last_update_date
#> 34 O2RNE8IBXP4R0TD8PU41                             registration_status
#> 35 O2RNE8IBXP4R0TD8PU41                  registration_next_renewal_date
#> 36 O2RNE8IBXP4R0TD8PU41                       registration_managing_lou
#> 37 O2RNE8IBXP4R0TD8PU41                registration_corroboration_level
#> 38 O2RNE8IBXP4R0TD8PU41                    registration_validated_at_id
#> 39 O2RNE8IBXP4R0TD8PU41                       registration_validated_as
#> 40 O2RNE8IBXP4R0TD8PU41                                             bic
#> 41 O2RNE8IBXP4R0TD8PU41                                            mic1
#> 42 O2RNE8IBXP4R0TD8PU41                                            mic2
#> 43 O2RNE8IBXP4R0TD8PU41                                            ocid
#> 44 O2RNE8IBXP4R0TD8PU41                                             qcc
#> 45 O2RNE8IBXP4R0TD8PU41                                        spglobal
#> 46 O2RNE8IBXP4R0TD8PU41                                 conformity_flag
#>                     value
#> 1        SOCIETE GENERALE
#> 2                      fr
#> 3                      fr
#> 4  29 BOULEVARD HAUSSMANN
#> 5                   PARIS
#> 6                      FR
#> 7                   75009
#> 8                      fr
#> 9  29 BOULEVARD HAUSSMANN
#> 10                  PARIS
#> 11                     FR
#> 12                  75009
#> 13               RA000189
#> 14              552120222
#> 15                     FR
#> 16                GENERAL
#> 17                   K65D
#> 18                 ACTIVE
#> 19   1899-12-31T23:00:00Z
#> 20             STANDALONE
#> 21      REGULATORY_FILING
#> 22   2022-12-31T23:00:00Z
#> 23   2023-06-12T13:25:59Z
#> 24             ABSORPTION
#> 25              COMPLETED
#> 26             STANDALONE
#> 27      REGULATORY_FILING
#> 28   2019-04-18T22:00:00Z
#> 29   2023-06-12T13:25:59Z
#> 30             ABSORPTION
#> 31              COMPLETED
#> 32   2012-06-05T22:00:00Z
#> 33   2025-12-29T21:09:15Z
#> 34                 ISSUED
#> 35   2027-01-04T23:00:00Z
#> 36   969500Q2MA9VBQ8BG884
#> 37     FULLY_CORROBORATED
#> 38               RA000189
#> 39              552120222
#> 40            NEWGFRP1XXX
#> 41                   XSGA
#> 42                   XSGB
#> 43           fr/552120222
#> 44             QFR5FX8YQ7
#> 45                  23005
#> 46             CONFORMING
# }
```

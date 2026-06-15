# Fetch a LEI record

Fetch a single LEI record by its Legal Entity Identifier. To fetch
records by attribute filters, see
[`lei_records()`](https://m-muecke.github.io/gleifr/reference/lei_records.md).

## Usage

``` r
lei_record_by_id(id, simplify = TRUE)
```

## Arguments

- id:

  (`character(1)`)  
  The Legal Entity Identifier (LEI) to fetch.

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

[`lei_records()`](https://m-muecke.github.io/gleifr/reference/lei_records.md)
to fetch records by attribute filters.

## Examples

``` r
# \donttest{
# get simplified long-format data.frame
lei_record_by_id("529900W18LQJJN6SJ336")
#>                     lei                                       name
#> 1  529900W18LQJJN6SJ336                     entity_legal_name_name
#> 2  529900W18LQJJN6SJ336                 entity_legal_name_language
#> 3  529900W18LQJJN6SJ336     entity_transliterated_other_names_name
#> 4  529900W18LQJJN6SJ336 entity_transliterated_other_names_language
#> 5  529900W18LQJJN6SJ336     entity_transliterated_other_names_type
#> 6  529900W18LQJJN6SJ336              entity_legal_address_language
#> 7  529900W18LQJJN6SJ336         entity_legal_address_address_lines
#> 8  529900W18LQJJN6SJ336                  entity_legal_address_city
#> 9  529900W18LQJJN6SJ336                entity_legal_address_region
#> 10 529900W18LQJJN6SJ336               entity_legal_address_country
#> 11 529900W18LQJJN6SJ336           entity_legal_address_postal_code
#> 12 529900W18LQJJN6SJ336       entity_headquarters_address_language
#> 13 529900W18LQJJN6SJ336  entity_headquarters_address_address_lines
#> 14 529900W18LQJJN6SJ336           entity_headquarters_address_city
#> 15 529900W18LQJJN6SJ336         entity_headquarters_address_region
#> 16 529900W18LQJJN6SJ336        entity_headquarters_address_country
#> 17 529900W18LQJJN6SJ336    entity_headquarters_address_postal_code
#> 18 529900W18LQJJN6SJ336                    entity_registered_at_id
#> 19 529900W18LQJJN6SJ336                       entity_registered_as
#> 20 529900W18LQJJN6SJ336                        entity_jurisdiction
#> 21 529900W18LQJJN6SJ336                            entity_category
#> 22 529900W18LQJJN6SJ336                       entity_legal_form_id
#> 23 529900W18LQJJN6SJ336                              entity_status
#> 24 529900W18LQJJN6SJ336                       entity_creation_date
#> 25 529900W18LQJJN6SJ336     registration_initial_registration_date
#> 26 529900W18LQJJN6SJ336              registration_last_update_date
#> 27 529900W18LQJJN6SJ336                        registration_status
#> 28 529900W18LQJJN6SJ336             registration_next_renewal_date
#> 29 529900W18LQJJN6SJ336                  registration_managing_lou
#> 30 529900W18LQJJN6SJ336           registration_corroboration_level
#> 31 529900W18LQJJN6SJ336               registration_validated_at_id
#> 32 529900W18LQJJN6SJ336                  registration_validated_as
#> 33 529900W18LQJJN6SJ336                                        bic
#> 34 529900W18LQJJN6SJ336                                       ocid
#> 35 529900W18LQJJN6SJ336                                        qcc
#> 36 529900W18LQJJN6SJ336                                   spglobal
#> 37 529900W18LQJJN6SJ336                            conformity_flag
#>                                   value
#> 1        Société Générale Effekten GmbH
#> 2                                    fr
#> 3        Societe Generale Effekten GmbH
#> 4                                    fr
#> 5  AUTO_ASCII_TRANSLITERATED_LEGAL_NAME
#> 6                                    de
#> 7             Neue Mainzer Straße 46-50
#> 8                     Frankfurt am Main
#> 9                                 DE-HE
#> 10                                   DE
#> 11                                60311
#> 12                                   de
#> 13            Neue Mainzer Straße 46-50
#> 14                    Frankfurt am Main
#> 15                                DE-HE
#> 16                                   DE
#> 17                                60311
#> 18                             RA000242
#> 19                            HRB 32283
#> 20                                   DE
#> 21                              GENERAL
#> 22                                 2HBR
#> 23                               ACTIVE
#> 24                 1977-03-02T23:00:00Z
#> 25                 2014-01-27T07:37:54Z
#> 26                 2025-08-27T14:35:08Z
#> 27                               ISSUED
#> 28                 2026-10-17T22:00:00Z
#> 29                 5299000J2N45DDNE4Y28
#> 30                   FULLY_CORROBORATED
#> 31                             RA000242
#> 32                            HRB 32283
#> 33                          SGEFDEFFXXX
#> 34                    de/M1201_HRB32283
#> 35                           QDE9B7365H
#> 36                             32340240
#> 37                           CONFORMING

# get raw API response as named list
lei_record_by_id("529900W18LQJJN6SJ336", simplify = FALSE)
#> $meta
#> $meta$goldenCopy
#> $meta$goldenCopy$publishDate
#> [1] "2026-06-15T00:00:00Z"
#> 
#> 
#> 
#> $data
#> $data$type
#> [1] "lei-records"
#> 
#> $data$id
#> [1] "529900W18LQJJN6SJ336"
#> 
#> $data$attributes
#> $data$attributes$lei
#> [1] "529900W18LQJJN6SJ336"
#> 
#> $data$attributes$entity
#> $data$attributes$entity$legalName
#> $data$attributes$entity$legalName$name
#> [1] "Société Générale Effekten GmbH"
#> 
#> $data$attributes$entity$legalName$language
#> [1] "fr"
#> 
#> 
#> $data$attributes$entity$otherNames
#> list()
#> 
#> $data$attributes$entity$transliteratedOtherNames
#> $data$attributes$entity$transliteratedOtherNames[[1]]
#> $data$attributes$entity$transliteratedOtherNames[[1]]$name
#> [1] "Societe Generale Effekten GmbH"
#> 
#> $data$attributes$entity$transliteratedOtherNames[[1]]$language
#> [1] "fr"
#> 
#> $data$attributes$entity$transliteratedOtherNames[[1]]$type
#> [1] "AUTO_ASCII_TRANSLITERATED_LEGAL_NAME"
#> 
#> 
#> 
#> $data$attributes$entity$legalAddress
#> $data$attributes$entity$legalAddress$language
#> [1] "de"
#> 
#> $data$attributes$entity$legalAddress$addressLines
#> $data$attributes$entity$legalAddress$addressLines[[1]]
#> [1] "Neue Mainzer Straße 46-50"
#> 
#> 
#> $data$attributes$entity$legalAddress$addressNumber
#> NULL
#> 
#> $data$attributes$entity$legalAddress$addressNumberWithinBuilding
#> NULL
#> 
#> $data$attributes$entity$legalAddress$mailRouting
#> NULL
#> 
#> $data$attributes$entity$legalAddress$city
#> [1] "Frankfurt am Main"
#> 
#> $data$attributes$entity$legalAddress$region
#> [1] "DE-HE"
#> 
#> $data$attributes$entity$legalAddress$country
#> [1] "DE"
#> 
#> $data$attributes$entity$legalAddress$postalCode
#> [1] "60311"
#> 
#> 
#> $data$attributes$entity$headquartersAddress
#> $data$attributes$entity$headquartersAddress$language
#> [1] "de"
#> 
#> $data$attributes$entity$headquartersAddress$addressLines
#> $data$attributes$entity$headquartersAddress$addressLines[[1]]
#> [1] "Neue Mainzer Straße 46-50"
#> 
#> 
#> $data$attributes$entity$headquartersAddress$addressNumber
#> NULL
#> 
#> $data$attributes$entity$headquartersAddress$addressNumberWithinBuilding
#> NULL
#> 
#> $data$attributes$entity$headquartersAddress$mailRouting
#> NULL
#> 
#> $data$attributes$entity$headquartersAddress$city
#> [1] "Frankfurt am Main"
#> 
#> $data$attributes$entity$headquartersAddress$region
#> [1] "DE-HE"
#> 
#> $data$attributes$entity$headquartersAddress$country
#> [1] "DE"
#> 
#> $data$attributes$entity$headquartersAddress$postalCode
#> [1] "60311"
#> 
#> 
#> $data$attributes$entity$registeredAt
#> $data$attributes$entity$registeredAt$id
#> [1] "RA000242"
#> 
#> $data$attributes$entity$registeredAt$other
#> NULL
#> 
#> 
#> $data$attributes$entity$registeredAs
#> [1] "HRB 32283"
#> 
#> $data$attributes$entity$jurisdiction
#> [1] "DE"
#> 
#> $data$attributes$entity$category
#> [1] "GENERAL"
#> 
#> $data$attributes$entity$legalForm
#> $data$attributes$entity$legalForm$id
#> [1] "2HBR"
#> 
#> $data$attributes$entity$legalForm$other
#> NULL
#> 
#> 
#> $data$attributes$entity$associatedEntity
#> $data$attributes$entity$associatedEntity$lei
#> NULL
#> 
#> $data$attributes$entity$associatedEntity$name
#> NULL
#> 
#> 
#> $data$attributes$entity$status
#> [1] "ACTIVE"
#> 
#> $data$attributes$entity$expiration
#> $data$attributes$entity$expiration$date
#> NULL
#> 
#> $data$attributes$entity$expiration$reason
#> NULL
#> 
#> 
#> $data$attributes$entity$successorEntity
#> $data$attributes$entity$successorEntity$lei
#> NULL
#> 
#> $data$attributes$entity$successorEntity$name
#> NULL
#> 
#> 
#> $data$attributes$entity$successorEntities
#> list()
#> 
#> $data$attributes$entity$creationDate
#> [1] "1977-03-02T23:00:00Z"
#> 
#> $data$attributes$entity$subCategory
#> NULL
#> 
#> $data$attributes$entity$otherAddresses
#> list()
#> 
#> $data$attributes$entity$eventGroups
#> list()
#> 
#> 
#> $data$attributes$registration
#> $data$attributes$registration$initialRegistrationDate
#> [1] "2014-01-27T07:37:54Z"
#> 
#> $data$attributes$registration$lastUpdateDate
#> [1] "2025-08-27T14:35:08Z"
#> 
#> $data$attributes$registration$status
#> [1] "ISSUED"
#> 
#> $data$attributes$registration$nextRenewalDate
#> [1] "2026-10-17T22:00:00Z"
#> 
#> $data$attributes$registration$managingLou
#> [1] "5299000J2N45DDNE4Y28"
#> 
#> $data$attributes$registration$corroborationLevel
#> [1] "FULLY_CORROBORATED"
#> 
#> $data$attributes$registration$validatedAt
#> $data$attributes$registration$validatedAt$id
#> [1] "RA000242"
#> 
#> $data$attributes$registration$validatedAt$other
#> NULL
#> 
#> 
#> $data$attributes$registration$validatedAs
#> [1] "HRB 32283"
#> 
#> $data$attributes$registration$otherValidationAuthorities
#> list()
#> 
#> 
#> $data$attributes$bic
#> $data$attributes$bic[[1]]
#> [1] "SGEFDEFFXXX"
#> 
#> 
#> $data$attributes$mic
#> NULL
#> 
#> $data$attributes$ocid
#> [1] "de/M1201_HRB32283"
#> 
#> $data$attributes$qcc
#> [1] "QDE9B7365H"
#> 
#> $data$attributes$spglobal
#> $data$attributes$spglobal[[1]]
#> [1] "32340240"
#> 
#> 
#> $data$attributes$conformityFlag
#> [1] "CONFORMING"
#> 
#> 
#> $data$relationships
#> $data$relationships$`managing-lou`
#> $data$relationships$`managing-lou`$links
#> $data$relationships$`managing-lou`$links$related
#> [1] "https://api.gleif.org/api/v1/lei-records/529900W18LQJJN6SJ336/managing-lou"
#> 
#> 
#> 
#> $data$relationships$`lei-issuer`
#> $data$relationships$`lei-issuer`$links
#> $data$relationships$`lei-issuer`$links$related
#> [1] "https://api.gleif.org/api/v1/lei-records/529900W18LQJJN6SJ336/lei-issuer"
#> 
#> 
#> 
#> $data$relationships$`field-modifications`
#> $data$relationships$`field-modifications`$links
#> $data$relationships$`field-modifications`$links$related
#> [1] "https://api.gleif.org/api/v1/lei-records/529900W18LQJJN6SJ336/field-modifications"
#> 
#> 
#> 
#> $data$relationships$`direct-parent`
#> $data$relationships$`direct-parent`$links
#> $data$relationships$`direct-parent`$links$`relationship-record`
#> [1] "https://api.gleif.org/api/v1/lei-records/529900W18LQJJN6SJ336/direct-parent-relationship"
#> 
#> $data$relationships$`direct-parent`$links$`lei-record`
#> [1] "https://api.gleif.org/api/v1/lei-records/529900W18LQJJN6SJ336/direct-parent"
#> 
#> 
#> 
#> $data$relationships$`ultimate-parent`
#> $data$relationships$`ultimate-parent`$links
#> $data$relationships$`ultimate-parent`$links$`relationship-record`
#> [1] "https://api.gleif.org/api/v1/lei-records/529900W18LQJJN6SJ336/ultimate-parent-relationship"
#> 
#> $data$relationships$`ultimate-parent`$links$`lei-record`
#> [1] "https://api.gleif.org/api/v1/lei-records/529900W18LQJJN6SJ336/ultimate-parent"
#> 
#> 
#> 
#> $data$relationships$`direct-children`
#> $data$relationships$`direct-children`$links
#> $data$relationships$`direct-children`$links$`relationship-records`
#> [1] "https://api.gleif.org/api/v1/lei-records/529900W18LQJJN6SJ336/direct-child-relationships"
#> 
#> $data$relationships$`direct-children`$links$related
#> [1] "https://api.gleif.org/api/v1/lei-records/529900W18LQJJN6SJ336/direct-children"
#> 
#> 
#> 
#> $data$relationships$isins
#> $data$relationships$isins$links
#> $data$relationships$isins$links$related
#> [1] "https://api.gleif.org/api/v1/lei-records/529900W18LQJJN6SJ336/isins"
#> 
#> 
#> 
#> 
#> $data$links
#> $data$links$self
#> [1] "https://api.gleif.org/api/v1/lei-records/529900W18LQJJN6SJ336"
#> 
#> 
#> 
# }
```

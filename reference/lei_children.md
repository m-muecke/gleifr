# Fetch LEI child records

Fetches the direct or ultimate child records of a given LEI.

## Usage

``` r
lei_children(id, type = c("direct", "ultimate"), limit = 200L, simplify = TRUE)
```

## Arguments

- id:

  (`character(1)`)  
  The Legal Entity Identifier (LEI) to fetch the children for.

- type:

  (`character(1)`)  
  The type of children to fetch. One of `"direct"` or `"ultimate"`.
  Default is `"direct"`.

- limit:

  (`NULL` \| `integer(1)`)  
  Maximum number of records to return. Default `200L`. Use `NULL` to
  fetch all.

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

[`lei_parent()`](https://m-muecke.github.io/gleifr/reference/lei_parent.md)
to fetch the parent record of a LEI.

## Examples

``` r
# \donttest{
# get direct children
lei_children("529900W18LQJJN6SJ336")
#>                      lei                                            name
#> 1   529900U9BRBB7CPIJ490                          entity_legal_name_name
#> 2   529900U9BRBB7CPIJ490                      entity_legal_name_language
#> 3   529900U9BRBB7CPIJ490                   entity_legal_address_language
#> 4   529900U9BRBB7CPIJ490              entity_legal_address_address_lines
#> 5   529900U9BRBB7CPIJ490                       entity_legal_address_city
#> 6   529900U9BRBB7CPIJ490                     entity_legal_address_region
#> 7   529900U9BRBB7CPIJ490                    entity_legal_address_country
#> 8   529900U9BRBB7CPIJ490                entity_legal_address_postal_code
#> 9   529900U9BRBB7CPIJ490            entity_headquarters_address_language
#> 10  529900U9BRBB7CPIJ490       entity_headquarters_address_address_lines
#> 11  529900U9BRBB7CPIJ490                entity_headquarters_address_city
#> 12  529900U9BRBB7CPIJ490              entity_headquarters_address_region
#> 13  529900U9BRBB7CPIJ490             entity_headquarters_address_country
#> 14  529900U9BRBB7CPIJ490         entity_headquarters_address_postal_code
#> 15  529900U9BRBB7CPIJ490                         entity_registered_at_id
#> 16  529900U9BRBB7CPIJ490                            entity_registered_as
#> 17  529900U9BRBB7CPIJ490                             entity_jurisdiction
#> 18  529900U9BRBB7CPIJ490                                 entity_category
#> 19  529900U9BRBB7CPIJ490                            entity_legal_form_id
#> 20  529900U9BRBB7CPIJ490                                   entity_status
#> 21  529900U9BRBB7CPIJ490                            entity_creation_date
#> 22  529900U9BRBB7CPIJ490                  entity_event_groups_group_type
#> 23  529900U9BRBB7CPIJ490 entity_event_groups_events_validation_documents
#> 24  529900U9BRBB7CPIJ490       entity_event_groups_events_effective_date
#> 25  529900U9BRBB7CPIJ490        entity_event_groups_events_recorded_date
#> 26  529900U9BRBB7CPIJ490                 entity_event_groups_events_type
#> 27  529900U9BRBB7CPIJ490               entity_event_groups_events_status
#> 28  529900U9BRBB7CPIJ490                  entity_event_groups_group_type
#> 29  529900U9BRBB7CPIJ490 entity_event_groups_events_validation_documents
#> 30  529900U9BRBB7CPIJ490       entity_event_groups_events_effective_date
#> 31  529900U9BRBB7CPIJ490        entity_event_groups_events_recorded_date
#> 32  529900U9BRBB7CPIJ490                 entity_event_groups_events_type
#> 33  529900U9BRBB7CPIJ490               entity_event_groups_events_status
#> 34  529900U9BRBB7CPIJ490          registration_initial_registration_date
#> 35  529900U9BRBB7CPIJ490                   registration_last_update_date
#> 36  529900U9BRBB7CPIJ490                             registration_status
#> 37  529900U9BRBB7CPIJ490                  registration_next_renewal_date
#> 38  529900U9BRBB7CPIJ490                       registration_managing_lou
#> 39  529900U9BRBB7CPIJ490                registration_corroboration_level
#> 40  529900U9BRBB7CPIJ490                    registration_validated_at_id
#> 41  529900U9BRBB7CPIJ490                       registration_validated_as
#> 42  529900U9BRBB7CPIJ490                                             qcc
#> 43  529900U9BRBB7CPIJ490                                        spglobal
#> 44  529900U9BRBB7CPIJ490                                 conformity_flag
#> 45  529900LZT3QKPD355Q25                          entity_legal_name_name
#> 46  529900LZT3QKPD355Q25                      entity_legal_name_language
#> 47  529900LZT3QKPD355Q25                   entity_legal_address_language
#> 48  529900LZT3QKPD355Q25              entity_legal_address_address_lines
#> 49  529900LZT3QKPD355Q25                       entity_legal_address_city
#> 50  529900LZT3QKPD355Q25                     entity_legal_address_region
#> 51  529900LZT3QKPD355Q25                    entity_legal_address_country
#> 52  529900LZT3QKPD355Q25                entity_legal_address_postal_code
#> 53  529900LZT3QKPD355Q25            entity_headquarters_address_language
#> 54  529900LZT3QKPD355Q25       entity_headquarters_address_address_lines
#> 55  529900LZT3QKPD355Q25                entity_headquarters_address_city
#> 56  529900LZT3QKPD355Q25              entity_headquarters_address_region
#> 57  529900LZT3QKPD355Q25             entity_headquarters_address_country
#> 58  529900LZT3QKPD355Q25         entity_headquarters_address_postal_code
#> 59  529900LZT3QKPD355Q25                         entity_registered_at_id
#> 60  529900LZT3QKPD355Q25                            entity_registered_as
#> 61  529900LZT3QKPD355Q25                             entity_jurisdiction
#> 62  529900LZT3QKPD355Q25                                 entity_category
#> 63  529900LZT3QKPD355Q25                            entity_legal_form_id
#> 64  529900LZT3QKPD355Q25                                   entity_status
#> 65  529900LZT3QKPD355Q25                            entity_creation_date
#> 66  529900LZT3QKPD355Q25                  entity_event_groups_group_type
#> 67  529900LZT3QKPD355Q25 entity_event_groups_events_validation_documents
#> 68  529900LZT3QKPD355Q25       entity_event_groups_events_effective_date
#> 69  529900LZT3QKPD355Q25        entity_event_groups_events_recorded_date
#> 70  529900LZT3QKPD355Q25                 entity_event_groups_events_type
#> 71  529900LZT3QKPD355Q25               entity_event_groups_events_status
#> 72  529900LZT3QKPD355Q25                  entity_event_groups_group_type
#> 73  529900LZT3QKPD355Q25 entity_event_groups_events_validation_documents
#> 74  529900LZT3QKPD355Q25       entity_event_groups_events_effective_date
#> 75  529900LZT3QKPD355Q25        entity_event_groups_events_recorded_date
#> 76  529900LZT3QKPD355Q25                 entity_event_groups_events_type
#> 77  529900LZT3QKPD355Q25               entity_event_groups_events_status
#> 78  529900LZT3QKPD355Q25          registration_initial_registration_date
#> 79  529900LZT3QKPD355Q25                   registration_last_update_date
#> 80  529900LZT3QKPD355Q25                             registration_status
#> 81  529900LZT3QKPD355Q25                  registration_next_renewal_date
#> 82  529900LZT3QKPD355Q25                       registration_managing_lou
#> 83  529900LZT3QKPD355Q25                registration_corroboration_level
#> 84  529900LZT3QKPD355Q25                    registration_validated_at_id
#> 85  529900LZT3QKPD355Q25                       registration_validated_as
#> 86  529900LZT3QKPD355Q25                                             qcc
#> 87  529900LZT3QKPD355Q25                                        spglobal
#> 88  529900LZT3QKPD355Q25                                 conformity_flag
#> 89  5299006XJ67WBIFN6291                          entity_legal_name_name
#> 90  5299006XJ67WBIFN6291                      entity_legal_name_language
#> 91  5299006XJ67WBIFN6291                   entity_legal_address_language
#> 92  5299006XJ67WBIFN6291              entity_legal_address_address_lines
#> 93  5299006XJ67WBIFN6291                       entity_legal_address_city
#> 94  5299006XJ67WBIFN6291                     entity_legal_address_region
#> 95  5299006XJ67WBIFN6291                    entity_legal_address_country
#> 96  5299006XJ67WBIFN6291                entity_legal_address_postal_code
#> 97  5299006XJ67WBIFN6291            entity_headquarters_address_language
#> 98  5299006XJ67WBIFN6291       entity_headquarters_address_address_lines
#> 99  5299006XJ67WBIFN6291                entity_headquarters_address_city
#> 100 5299006XJ67WBIFN6291              entity_headquarters_address_region
#> 101 5299006XJ67WBIFN6291             entity_headquarters_address_country
#> 102 5299006XJ67WBIFN6291         entity_headquarters_address_postal_code
#> 103 5299006XJ67WBIFN6291                         entity_registered_at_id
#> 104 5299006XJ67WBIFN6291                            entity_registered_as
#> 105 5299006XJ67WBIFN6291                             entity_jurisdiction
#> 106 5299006XJ67WBIFN6291                                 entity_category
#> 107 5299006XJ67WBIFN6291                            entity_legal_form_id
#> 108 5299006XJ67WBIFN6291                                   entity_status
#> 109 5299006XJ67WBIFN6291                            entity_creation_date
#> 110 5299006XJ67WBIFN6291                  entity_event_groups_group_type
#> 111 5299006XJ67WBIFN6291 entity_event_groups_events_validation_documents
#> 112 5299006XJ67WBIFN6291       entity_event_groups_events_effective_date
#> 113 5299006XJ67WBIFN6291        entity_event_groups_events_recorded_date
#> 114 5299006XJ67WBIFN6291                 entity_event_groups_events_type
#> 115 5299006XJ67WBIFN6291               entity_event_groups_events_status
#> 116 5299006XJ67WBIFN6291                  entity_event_groups_group_type
#> 117 5299006XJ67WBIFN6291 entity_event_groups_events_validation_documents
#> 118 5299006XJ67WBIFN6291       entity_event_groups_events_effective_date
#> 119 5299006XJ67WBIFN6291        entity_event_groups_events_recorded_date
#> 120 5299006XJ67WBIFN6291                 entity_event_groups_events_type
#> 121 5299006XJ67WBIFN6291               entity_event_groups_events_status
#> 122 5299006XJ67WBIFN6291          registration_initial_registration_date
#> 123 5299006XJ67WBIFN6291                   registration_last_update_date
#> 124 5299006XJ67WBIFN6291                             registration_status
#> 125 5299006XJ67WBIFN6291                  registration_next_renewal_date
#> 126 5299006XJ67WBIFN6291                       registration_managing_lou
#> 127 5299006XJ67WBIFN6291                registration_corroboration_level
#> 128 5299006XJ67WBIFN6291                    registration_validated_at_id
#> 129 5299006XJ67WBIFN6291                       registration_validated_as
#> 130 5299006XJ67WBIFN6291                                             qcc
#> 131 5299006XJ67WBIFN6291                                        spglobal
#> 132 5299006XJ67WBIFN6291                                 conformity_flag
#> 133 529900DRNK52DKCA6142                          entity_legal_name_name
#> 134 529900DRNK52DKCA6142                      entity_legal_name_language
#> 135 529900DRNK52DKCA6142          entity_transliterated_other_names_name
#> 136 529900DRNK52DKCA6142      entity_transliterated_other_names_language
#> 137 529900DRNK52DKCA6142          entity_transliterated_other_names_type
#> 138 529900DRNK52DKCA6142                   entity_legal_address_language
#> 139 529900DRNK52DKCA6142              entity_legal_address_address_lines
#> 140 529900DRNK52DKCA6142                       entity_legal_address_city
#> 141 529900DRNK52DKCA6142                     entity_legal_address_region
#> 142 529900DRNK52DKCA6142                    entity_legal_address_country
#> 143 529900DRNK52DKCA6142                entity_legal_address_postal_code
#> 144 529900DRNK52DKCA6142            entity_headquarters_address_language
#> 145 529900DRNK52DKCA6142       entity_headquarters_address_address_lines
#> 146 529900DRNK52DKCA6142                entity_headquarters_address_city
#> 147 529900DRNK52DKCA6142              entity_headquarters_address_region
#> 148 529900DRNK52DKCA6142             entity_headquarters_address_country
#> 149 529900DRNK52DKCA6142         entity_headquarters_address_postal_code
#> 150 529900DRNK52DKCA6142                         entity_registered_at_id
#> 151 529900DRNK52DKCA6142                            entity_registered_as
#> 152 529900DRNK52DKCA6142                             entity_jurisdiction
#> 153 529900DRNK52DKCA6142                                 entity_category
#> 154 529900DRNK52DKCA6142                            entity_legal_form_id
#> 155 529900DRNK52DKCA6142                                   entity_status
#> 156 529900DRNK52DKCA6142                            entity_creation_date
#> 157 529900DRNK52DKCA6142          registration_initial_registration_date
#> 158 529900DRNK52DKCA6142                   registration_last_update_date
#> 159 529900DRNK52DKCA6142                             registration_status
#> 160 529900DRNK52DKCA6142                  registration_next_renewal_date
#> 161 529900DRNK52DKCA6142                       registration_managing_lou
#> 162 529900DRNK52DKCA6142                registration_corroboration_level
#> 163 529900DRNK52DKCA6142                    registration_validated_at_id
#> 164 529900DRNK52DKCA6142                       registration_validated_as
#> 165 529900DRNK52DKCA6142                                             qcc
#> 166 529900DRNK52DKCA6142                                        spglobal
#> 167 529900DRNK52DKCA6142                                 conformity_flag
#>                                         value
#> 1                BDK Leasing und Service GmbH
#> 2                                          de
#> 3                                          de
#> 4                     Fuhlsbüttler Straße 437
#> 5                                     Hamburg
#> 6                                       DE-HH
#> 7                                          DE
#> 8                                       22309
#> 9                                          de
#> 10                    Fuhlsbüttler Straße 437
#> 11                                    Hamburg
#> 12                                      DE-HH
#> 13                                         DE
#> 14                                      22309
#> 15                                   RA000259
#> 16                                  HRB 89228
#> 17                                         DE
#> 18                                    GENERAL
#> 19                                       2HBR
#> 20                                     ACTIVE
#> 21                       1985-07-16T22:00:00Z
#> 22                                 STANDALONE
#> 23                       SUPPORTING_DOCUMENTS
#> 24                       2023-01-15T23:00:00Z
#> 25                       2023-01-16T10:57:30Z
#> 26                          CHANGE_HQ_ADDRESS
#> 27                                  COMPLETED
#> 28                                 STANDALONE
#> 29                       SUPPORTING_DOCUMENTS
#> 30                       2023-01-15T23:00:00Z
#> 31                       2023-01-16T10:57:30Z
#> 32                       CHANGE_LEGAL_ADDRESS
#> 33                                  COMPLETED
#> 34                       2015-03-05T10:47:58Z
#> 35                       2026-01-16T11:52:10Z
#> 36                                     ISSUED
#> 37                       2027-03-05T10:47:58Z
#> 38                       5299000J2N45DDNE4Y28
#> 39                         FULLY_CORROBORATED
#> 40                                   RA000259
#> 41                                  HRB 89228
#> 42                                 QDE7JWY3H7
#> 43                                  287444599
#> 44                                 CONFORMING
#> 45   Bank Deutsches Kraftfahrzeuggewerbe GmbH
#> 46                                         de
#> 47                                         de
#> 48                    Fuhlsbüttler Straße 437
#> 49                                    Hamburg
#> 50                                      DE-HH
#> 51                                         DE
#> 52                                      22309
#> 53                                         de
#> 54                    Fuhlsbüttler Straße 437
#> 55                                    Hamburg
#> 56                                      DE-HH
#> 57                                         DE
#> 58                                      22309
#> 59                                   RA000259
#> 60                                 HRB 125768
#> 61                                         DE
#> 62                                    GENERAL
#> 63                                       2HBR
#> 64                                     ACTIVE
#> 65                       2012-12-27T23:00:00Z
#> 66                                 STANDALONE
#> 67                       SUPPORTING_DOCUMENTS
#> 68                       2023-01-15T23:00:00Z
#> 69                       2023-01-16T10:54:57Z
#> 70                          CHANGE_HQ_ADDRESS
#> 71                                  COMPLETED
#> 72                                 STANDALONE
#> 73                       SUPPORTING_DOCUMENTS
#> 74                       2023-01-15T23:00:00Z
#> 75                       2023-01-16T10:54:57Z
#> 76                       CHANGE_LEGAL_ADDRESS
#> 77                                  COMPLETED
#> 78                       2015-03-05T10:47:50Z
#> 79                       2026-01-16T11:47:57Z
#> 80                                     ISSUED
#> 81                       2027-03-05T10:47:50Z
#> 82                       5299000J2N45DDNE4Y28
#> 83                         FULLY_CORROBORATED
#> 84                                   RA000259
#> 85                                 HRB 125768
#> 86                                 QDEJ9BXQQJ
#> 87                                   46002747
#> 88                                 CONFORMING
#> 89                      ALD Lease Finanz GmbH
#> 90                                         de
#> 91                                         de
#> 92                    Fuhlsbüttler Straße 437
#> 93                                    Hamburg
#> 94                                      DE-HH
#> 95                                         DE
#> 96                                      22309
#> 97                                         de
#> 98                    Fuhlsbüttler Straße 437
#> 99                                    Hamburg
#> 100                                     DE-HH
#> 101                                        DE
#> 102                                     22309
#> 103                                  RA000259
#> 104                                 HRB 92469
#> 105                                        DE
#> 106                                   GENERAL
#> 107                                      2HBR
#> 108                                    ACTIVE
#> 109                      2004-12-29T23:00:00Z
#> 110                                STANDALONE
#> 111                      SUPPORTING_DOCUMENTS
#> 112                      2023-01-15T23:00:00Z
#> 113                      2023-01-16T11:00:46Z
#> 114                         CHANGE_HQ_ADDRESS
#> 115                                 COMPLETED
#> 116                                STANDALONE
#> 117                      SUPPORTING_DOCUMENTS
#> 118                      2023-01-15T23:00:00Z
#> 119                      2023-01-16T11:00:46Z
#> 120                      CHANGE_LEGAL_ADDRESS
#> 121                                 COMPLETED
#> 122                      2014-01-28T09:57:46Z
#> 123                      2026-02-20T14:14:26Z
#> 124                                    ISSUED
#> 125                      2027-04-14T22:00:00Z
#> 126                      5299000J2N45DDNE4Y28
#> 127                        FULLY_CORROBORATED
#> 128                                  RA000259
#> 129                                 HRB 92469
#> 130                                QDE2CFD9C8
#> 131                                  45729063
#> 132                                CONFORMING
#> 133 Société Générale Securities Services GmbH
#> 134                                        af
#> 135 Societe Generale Securities Services GmbH
#> 136                                        af
#> 137      AUTO_ASCII_TRANSLITERATED_LEGAL_NAME
#> 138                                        de
#> 139                            Humboldtstr. 8
#> 140                                  Aschheim
#> 141                                     DE-BY
#> 142                                        DE
#> 143                                     85609
#> 144                                        de
#> 145                            Humboldtstr. 8
#> 146                                  Aschheim
#> 147                                     DE-BY
#> 148                                        DE
#> 149                                     85609
#> 150                                  RA000304
#> 151                                HRB 169711
#> 152                                        DE
#> 153                                   GENERAL
#> 154                                      2HBR
#> 155                                    ACTIVE
#> 156                      2007-09-02T22:00:00Z
#> 157                      2013-10-05T06:28:29Z
#> 158                      2025-09-06T09:43:22Z
#> 159                                    ISSUED
#> 160                      2026-10-22T09:18:24Z
#> 161                      5299000J2N45DDNE4Y28
#> 162                        FULLY_CORROBORATED
#> 163                                  RA000304
#> 164                                HRB 169711
#> 165                                QDE9QBT03V
#> 166                                 109375275
#> 167                                CONFORMING

# get ultimate children
lei_children("529900W18LQJJN6SJ336", type = "ultimate")
#> $name
#> character(0)
#> 
# }
```

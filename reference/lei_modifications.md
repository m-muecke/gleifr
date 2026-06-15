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

- **date**: The date of the change

- **value_old**: The previous value, or `NA` if none

- **value_new**: The new value, or `NA` if none

## Examples

``` r
# \donttest{
lei_modifications("529900W18LQJJN6SJ336")
#>                      lei record_type modification_type
#> 1   529900W18LQJJN6SJ336          RR            UPDATE
#> 2   529900W18LQJJN6SJ336          RR            UPDATE
#> 3   529900W18LQJJN6SJ336          RR            UPDATE
#> 4   529900W18LQJJN6SJ336          RR            UPDATE
#> 5   529900W18LQJJN6SJ336          RR            UPDATE
#> 6   529900W18LQJJN6SJ336          RR            UPDATE
#> 7   529900W18LQJJN6SJ336         LEI            UPDATE
#> 8   529900W18LQJJN6SJ336          RR            UPDATE
#> 9   529900W18LQJJN6SJ336          RR            UPDATE
#> 10  529900W18LQJJN6SJ336         LEI            UPDATE
#> 11  529900W18LQJJN6SJ336          RR            UPDATE
#> 12  529900W18LQJJN6SJ336          RR            UPDATE
#> 13  529900W18LQJJN6SJ336         LEI            UPDATE
#> 14  529900W18LQJJN6SJ336         LEI            UPDATE
#> 15  529900W18LQJJN6SJ336         LEI            UPDATE
#> 16  529900W18LQJJN6SJ336         LEI            INSERT
#> 17  529900W18LQJJN6SJ336         LEI            INSERT
#> 18  529900W18LQJJN6SJ336         LEI            INSERT
#> 19  529900W18LQJJN6SJ336         LEI            UPDATE
#> 20  529900W18LQJJN6SJ336          RR            UPDATE
#> 21  529900W18LQJJN6SJ336          RR            UPDATE
#> 22  529900W18LQJJN6SJ336          RR            UPDATE
#> 23  529900W18LQJJN6SJ336          RR            UPDATE
#> 24  529900W18LQJJN6SJ336          RR            UPDATE
#> 25  529900W18LQJJN6SJ336          RR            UPDATE
#> 26  529900W18LQJJN6SJ336          RR            UPDATE
#> 27  529900W18LQJJN6SJ336          RR            UPDATE
#> 28  529900W18LQJJN6SJ336          RR            UPDATE
#> 29  529900W18LQJJN6SJ336          RR            UPDATE
#> 30  529900W18LQJJN6SJ336         LEI            UPDATE
#> 31  529900W18LQJJN6SJ336          RR            UPDATE
#> 32  529900W18LQJJN6SJ336          RR            UPDATE
#> 33  529900W18LQJJN6SJ336         LEI            UPDATE
#> 34  529900W18LQJJN6SJ336          RR            UPDATE
#> 35  529900W18LQJJN6SJ336          RR            UPDATE
#> 36  529900W18LQJJN6SJ336          RR            UPDATE
#> 37  529900W18LQJJN6SJ336          RR            UPDATE
#> 38  529900W18LQJJN6SJ336          RR            UPDATE
#> 39  529900W18LQJJN6SJ336          RR            UPDATE
#> 40  529900W18LQJJN6SJ336          RR            UPDATE
#> 41  529900W18LQJJN6SJ336          RR            UPDATE
#> 42  529900W18LQJJN6SJ336         LEI            UPDATE
#> 43  529900W18LQJJN6SJ336          RR            UPDATE
#> 44  529900W18LQJJN6SJ336          RR            UPDATE
#> 45  529900W18LQJJN6SJ336         LEI            UPDATE
#> 46  529900W18LQJJN6SJ336          RR            UPDATE
#> 47  529900W18LQJJN6SJ336          RR            UPDATE
#> 48  529900W18LQJJN6SJ336         LEI            UPDATE
#> 49  529900W18LQJJN6SJ336          RR            UPDATE
#> 50  529900W18LQJJN6SJ336          RR            UPDATE
#> 51  529900W18LQJJN6SJ336          RR            UPDATE
#> 52  529900W18LQJJN6SJ336          RR            UPDATE
#> 53  529900W18LQJJN6SJ336          RR            UPDATE
#> 54  529900W18LQJJN6SJ336          RR            UPDATE
#> 55  529900W18LQJJN6SJ336         LEI            UPDATE
#> 56  529900W18LQJJN6SJ336          RR            UPDATE
#> 57  529900W18LQJJN6SJ336          RR            UPDATE
#> 58  529900W18LQJJN6SJ336         LEI            UPDATE
#> 59  529900W18LQJJN6SJ336          RR            UPDATE
#> 60  529900W18LQJJN6SJ336          RR            UPDATE
#> 61  529900W18LQJJN6SJ336         LEI            INSERT
#> 62  529900W18LQJJN6SJ336          RR            UPDATE
#> 63  529900W18LQJJN6SJ336          RR            UPDATE
#> 64  529900W18LQJJN6SJ336         LEI            INSERT
#> 65  529900W18LQJJN6SJ336          RR            UPDATE
#> 66  529900W18LQJJN6SJ336          RR            UPDATE
#> 67  529900W18LQJJN6SJ336          RR            UPDATE
#> 68  529900W18LQJJN6SJ336          RR            UPDATE
#> 69  529900W18LQJJN6SJ336          RR            UPDATE
#> 70  529900W18LQJJN6SJ336          RR            UPDATE
#> 71  529900W18LQJJN6SJ336         LEI            UPDATE
#> 72  529900W18LQJJN6SJ336          RR            UPDATE
#> 73  529900W18LQJJN6SJ336          RR            UPDATE
#> 74  529900W18LQJJN6SJ336         LEI            UPDATE
#> 75  529900W18LQJJN6SJ336          RR            UPDATE
#> 76  529900W18LQJJN6SJ336          RR            UPDATE
#> 77  529900W18LQJJN6SJ336         LEI            UPDATE
#> 78  529900W18LQJJN6SJ336         LEI            INSERT
#> 79  529900W18LQJJN6SJ336         LEI            INSERT
#> 80  529900W18LQJJN6SJ336         LEI            INSERT
#> 81  529900W18LQJJN6SJ336          RR            UPDATE
#> 82  529900W18LQJJN6SJ336          RR            UPDATE
#> 83  529900W18LQJJN6SJ336          RR            UPDATE
#> 84  529900W18LQJJN6SJ336          RR            UPDATE
#> 85  529900W18LQJJN6SJ336          RR            UPDATE
#> 86  529900W18LQJJN6SJ336          RR            UPDATE
#> 87  529900W18LQJJN6SJ336         LEI            UPDATE
#> 88  529900W18LQJJN6SJ336          RR            UPDATE
#> 89  529900W18LQJJN6SJ336          RR            UPDATE
#> 90  529900W18LQJJN6SJ336         LEI            UPDATE
#> 91  529900W18LQJJN6SJ336          RR            UPDATE
#> 92  529900W18LQJJN6SJ336          RR            UPDATE
#> 93  529900W18LQJJN6SJ336          RR            UPDATE
#> 94  529900W18LQJJN6SJ336          RR            UPDATE
#> 95  529900W18LQJJN6SJ336         LEI            UPDATE
#> 96  529900W18LQJJN6SJ336          RR            UPDATE
#> 97  529900W18LQJJN6SJ336          RR            UPDATE
#> 98  529900W18LQJJN6SJ336         LEI            UPDATE
#> 99  529900W18LQJJN6SJ336          RR            UPDATE
#> 100 529900W18LQJJN6SJ336          RR            UPDATE
#> 101 529900W18LQJJN6SJ336         LEI            UPDATE
#> 102 529900W18LQJJN6SJ336          RR            UPDATE
#> 103 529900W18LQJJN6SJ336          RR            UPDATE
#> 104 529900W18LQJJN6SJ336         LEI            UPDATE
#> 105 529900W18LQJJN6SJ336          RR            UPDATE
#> 106 529900W18LQJJN6SJ336          RR            UPDATE
#> 107 529900W18LQJJN6SJ336         LEI            UPDATE
#> 108 529900W18LQJJN6SJ336         LEI            UPDATE
#> 109 529900W18LQJJN6SJ336          RR            UPDATE
#> 110 529900W18LQJJN6SJ336          RR            UPDATE
#> 111 529900W18LQJJN6SJ336          RR            UPDATE
#> 112 529900W18LQJJN6SJ336          RR            UPDATE
#> 113 529900W18LQJJN6SJ336          RR            UPDATE
#> 114 529900W18LQJJN6SJ336          RR            UPDATE
#> 115 529900W18LQJJN6SJ336         LEI            UPDATE
#> 116 529900W18LQJJN6SJ336          RR            UPDATE
#> 117 529900W18LQJJN6SJ336          RR            UPDATE
#> 118 529900W18LQJJN6SJ336         LEI            UPDATE
#> 119 529900W18LQJJN6SJ336          RR            UPDATE
#> 120 529900W18LQJJN6SJ336          RR            UPDATE
#> 121 529900W18LQJJN6SJ336         LEI            DELETE
#> 122 529900W18LQJJN6SJ336         LEI            UPDATE
#> 123 529900W18LQJJN6SJ336         LEI            UPDATE
#> 124 529900W18LQJJN6SJ336         LEI           INITIAL
#> 125 529900W18LQJJN6SJ336         LEI           INITIAL
#> 126 529900W18LQJJN6SJ336         LEI           INITIAL
#> 127 529900W18LQJJN6SJ336         LEI           INITIAL
#> 128 529900W18LQJJN6SJ336         LEI           INITIAL
#> 129 529900W18LQJJN6SJ336         LEI           INITIAL
#> 130 529900W18LQJJN6SJ336         LEI           INITIAL
#> 131 529900W18LQJJN6SJ336         LEI           INITIAL
#> 132 529900W18LQJJN6SJ336         LEI           INITIAL
#> 133 529900W18LQJJN6SJ336         LEI           INITIAL
#> 134 529900W18LQJJN6SJ336         LEI           INITIAL
#> 135 529900W18LQJJN6SJ336         LEI           INITIAL
#> 136 529900W18LQJJN6SJ336         LEI           INITIAL
#> 137 529900W18LQJJN6SJ336         LEI           INITIAL
#> 138 529900W18LQJJN6SJ336         LEI           INITIAL
#> 139 529900W18LQJJN6SJ336         LEI           INITIAL
#> 140 529900W18LQJJN6SJ336         LEI           INITIAL
#> 141 529900W18LQJJN6SJ336         LEI           INITIAL
#> 142 529900W18LQJJN6SJ336         LEI           INITIAL
#> 143 529900W18LQJJN6SJ336         LEI           INITIAL
#> 144 529900W18LQJJN6SJ336         LEI           INITIAL
#> 145 529900W18LQJJN6SJ336         LEI           INITIAL
#> 146 529900W18LQJJN6SJ336         LEI           INITIAL
#> 147 529900W18LQJJN6SJ336         LEI           INITIAL
#> 148 529900W18LQJJN6SJ336         LEI           INITIAL
#> 149 529900W18LQJJN6SJ336         LEI           INITIAL
#> 150 529900W18LQJJN6SJ336          RR           INITIAL
#> 151 529900W18LQJJN6SJ336          RR           INITIAL
#> 152 529900W18LQJJN6SJ336          RR           INITIAL
#> 153 529900W18LQJJN6SJ336          RR           INITIAL
#> 154 529900W18LQJJN6SJ336          RR           INITIAL
#> 155 529900W18LQJJN6SJ336          RR           INITIAL
#> 156 529900W18LQJJN6SJ336          RR           INITIAL
#> 157 529900W18LQJJN6SJ336          RR           INITIAL
#> 158 529900W18LQJJN6SJ336          RR           INITIAL
#> 159 529900W18LQJJN6SJ336          RR           INITIAL
#> 160 529900W18LQJJN6SJ336          RR           INITIAL
#> 161 529900W18LQJJN6SJ336          RR           INITIAL
#> 162 529900W18LQJJN6SJ336          RR           INITIAL
#> 163 529900W18LQJJN6SJ336          RR           INITIAL
#> 164 529900W18LQJJN6SJ336          RR           INITIAL
#> 165 529900W18LQJJN6SJ336          RR           INITIAL
#> 166 529900W18LQJJN6SJ336          RR           INITIAL
#> 167 529900W18LQJJN6SJ336          RR           INITIAL
#> 168 529900W18LQJJN6SJ336          RR           INITIAL
#> 169 529900W18LQJJN6SJ336          RR           INITIAL
#> 170 529900W18LQJJN6SJ336          RR           INITIAL
#> 171 529900W18LQJJN6SJ336          RR           INITIAL
#> 172 529900W18LQJJN6SJ336          RR           INITIAL
#> 173 529900W18LQJJN6SJ336          RR           INITIAL
#> 174 529900W18LQJJN6SJ336          RR           INITIAL
#> 175 529900W18LQJJN6SJ336          RR           INITIAL
#> 176 529900W18LQJJN6SJ336          RR           INITIAL
#> 177 529900W18LQJJN6SJ336          RR           INITIAL
#> 178 529900W18LQJJN6SJ336          RR           INITIAL
#> 179 529900W18LQJJN6SJ336          RR           INITIAL
#> 180 529900W18LQJJN6SJ336          RR           INITIAL
#> 181 529900W18LQJJN6SJ336          RR           INITIAL
#> 182 529900W18LQJJN6SJ336          RR           INITIAL
#> 183 529900W18LQJJN6SJ336          RR           INITIAL
#> 184 529900W18LQJJN6SJ336          RR           INITIAL
#> 185 529900W18LQJJN6SJ336          RR           INITIAL
#> 186 529900W18LQJJN6SJ336          RR           INITIAL
#> 187 529900W18LQJJN6SJ336          RR           INITIAL
#> 188 529900W18LQJJN6SJ336          RR           INITIAL
#> 189 529900W18LQJJN6SJ336          RR           INITIAL
#>                                                                                                                                            field
#> 1                                           /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Registration/rr:NextRenewalDate
#> 2                                           /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Registration/rr:NextRenewalDate
#> 3                                            /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Registration/rr:LastUpdateDate
#> 4                                            /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Registration/rr:LastUpdateDate
#> 5    /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Relationship/rr:RelationshipPeriods/rr:RelationshipPeriod/rr:StartDate
#> 6    /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Relationship/rr:RelationshipPeriods/rr:RelationshipPeriod/rr:StartDate
#> 7                                                                 /lei:LEIData/lei:LEIRecords/lei:LEIRecord/lei:Registration/lei:NextRenewalDate
#> 8      /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Relationship/rr:RelationshipPeriods/rr:RelationshipPeriod/rr:EndDate
#> 9      /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Relationship/rr:RelationshipPeriods/rr:RelationshipPeriod/rr:EndDate
#> 10                                                                 /lei:LEIData/lei:LEIRecords/lei:LEIRecord/lei:Registration/lei:LastUpdateDate
#> 11   /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Relationship/rr:RelationshipPeriods/rr:RelationshipPeriod/rr:StartDate
#> 12   /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Relationship/rr:RelationshipPeriods/rr:RelationshipPeriod/rr:StartDate
#> 13                                                                 /lei:LEIData/lei:LEIRecords/lei:LEIRecord/lei:Registration/lei:LastUpdateDate
#> 14                                                        /lei:LEIData/lei:LEIRecords/lei:LEIRecord/lei:Entity/lei:HeadquartersAddress/@xml:lang
#> 15                                                               /lei:LEIData/lei:LEIRecords/lei:LEIRecord/lei:Entity/lei:LegalAddress/@xml:lang
#> 16               /lei:LEIData/lei:LEIRecords/lei:LEIRecord/lei:Entity/lei:TransliteratedOtherEntityNames/lei:TransliteratedOtherEntityName/@type
#> 17           /lei:LEIData/lei:LEIRecords/lei:LEIRecord/lei:Entity/lei:TransliteratedOtherEntityNames/lei:TransliteratedOtherEntityName/@xml:lang
#> 18                     /lei:LEIData/lei:LEIRecords/lei:LEIRecord/lei:Entity/lei:TransliteratedOtherEntityNames/lei:TransliteratedOtherEntityName
#> 19                                                                  /lei:LEIData/lei:LEIRecords/lei:LEIRecord/lei:Entity/lei:LegalName/@xml:lang
#> 20                                           /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Registration/rr:LastUpdateDate
#> 21                                           /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Registration/rr:LastUpdateDate
#> 22                                        /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Registration/rr:ValidationSources
#> 23                                        /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Registration/rr:ValidationSources
#> 24                                          /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Registration/rr:NextRenewalDate
#> 25                                          /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Registration/rr:NextRenewalDate
#> 26                                           /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Registration/rr:LastUpdateDate
#> 27                                           /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Registration/rr:LastUpdateDate
#> 28   /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Relationship/rr:RelationshipPeriods/rr:RelationshipPeriod/rr:StartDate
#> 29   /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Relationship/rr:RelationshipPeriods/rr:RelationshipPeriod/rr:StartDate
#> 30                                                                /lei:LEIData/lei:LEIRecords/lei:LEIRecord/lei:Registration/lei:NextRenewalDate
#> 31     /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Relationship/rr:RelationshipPeriods/rr:RelationshipPeriod/rr:EndDate
#> 32     /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Relationship/rr:RelationshipPeriods/rr:RelationshipPeriod/rr:EndDate
#> 33                                                                 /lei:LEIData/lei:LEIRecords/lei:LEIRecord/lei:Registration/lei:LastUpdateDate
#> 34   /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Relationship/rr:RelationshipPeriods/rr:RelationshipPeriod/rr:StartDate
#> 35   /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Relationship/rr:RelationshipPeriods/rr:RelationshipPeriod/rr:StartDate
#> 36                                        /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Registration/rr:ValidationSources
#> 37                                        /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Registration/rr:ValidationSources
#> 38                                          /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Registration/rr:NextRenewalDate
#> 39                                          /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Registration/rr:NextRenewalDate
#> 40                                           /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Registration/rr:LastUpdateDate
#> 41                                           /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Registration/rr:LastUpdateDate
#> 42                                                                /lei:LEIData/lei:LEIRecords/lei:LEIRecord/lei:Registration/lei:NextRenewalDate
#> 43   /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Relationship/rr:RelationshipPeriods/rr:RelationshipPeriod/rr:StartDate
#> 44   /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Relationship/rr:RelationshipPeriods/rr:RelationshipPeriod/rr:StartDate
#> 45                                                                 /lei:LEIData/lei:LEIRecords/lei:LEIRecord/lei:Registration/lei:LastUpdateDate
#> 46     /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Relationship/rr:RelationshipPeriods/rr:RelationshipPeriod/rr:EndDate
#> 47     /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Relationship/rr:RelationshipPeriods/rr:RelationshipPeriod/rr:EndDate
#> 48                                                                   /lei:LEIData/lei:LEIRecords/lei:LEIRecord/lei:Entity/lei:EntityCreationDate
#> 49   /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Relationship/rr:RelationshipPeriods/rr:RelationshipPeriod/rr:StartDate
#> 50   /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Relationship/rr:RelationshipPeriods/rr:RelationshipPeriod/rr:StartDate
#> 51                                          /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Registration/rr:NextRenewalDate
#> 52                                          /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Registration/rr:NextRenewalDate
#> 53                                           /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Registration/rr:LastUpdateDate
#> 54                                           /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Registration/rr:LastUpdateDate
#> 55                                                                /lei:LEIData/lei:LEIRecords/lei:LEIRecord/lei:Registration/lei:NextRenewalDate
#> 56   /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Relationship/rr:RelationshipPeriods/rr:RelationshipPeriod/rr:StartDate
#> 57   /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Relationship/rr:RelationshipPeriods/rr:RelationshipPeriod/rr:StartDate
#> 58                                                                 /lei:LEIData/lei:LEIRecords/lei:LEIRecord/lei:Registration/lei:LastUpdateDate
#> 59     /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Relationship/rr:RelationshipPeriods/rr:RelationshipPeriod/rr:EndDate
#> 60     /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Relationship/rr:RelationshipPeriods/rr:RelationshipPeriod/rr:EndDate
#> 61                                                                   /lei:LEIData/lei:LEIRecords/lei:LEIRecord/lei:Entity/lei:EntityCreationDate
#> 62   /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Relationship/rr:RelationshipPeriods/rr:RelationshipPeriod/rr:StartDate
#> 63   /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Relationship/rr:RelationshipPeriods/rr:RelationshipPeriod/rr:StartDate
#> 64                                                                       /lei:LEIData/lei:LEIRecords/lei:LEIRecord/lei:Entity/lei:EntityCategory
#> 65                                          /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Registration/rr:NextRenewalDate
#> 66                                          /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Registration/rr:NextRenewalDate
#> 67                                           /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Registration/rr:LastUpdateDate
#> 68                                           /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Registration/rr:LastUpdateDate
#> 69   /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Relationship/rr:RelationshipPeriods/rr:RelationshipPeriod/rr:StartDate
#> 70   /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Relationship/rr:RelationshipPeriods/rr:RelationshipPeriod/rr:StartDate
#> 71                                                                /lei:LEIData/lei:LEIRecords/lei:LEIRecord/lei:Registration/lei:NextRenewalDate
#> 72     /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Relationship/rr:RelationshipPeriods/rr:RelationshipPeriod/rr:EndDate
#> 73     /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Relationship/rr:RelationshipPeriods/rr:RelationshipPeriod/rr:EndDate
#> 74                                                                 /lei:LEIData/lei:LEIRecords/lei:LEIRecord/lei:Registration/lei:LastUpdateDate
#> 75   /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Relationship/rr:RelationshipPeriods/rr:RelationshipPeriod/rr:StartDate
#> 76   /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Relationship/rr:RelationshipPeriods/rr:RelationshipPeriod/rr:StartDate
#> 77                                                                 /lei:LEIData/lei:LEIRecords/lei:LEIRecord/lei:Registration/lei:LastUpdateDate
#> 78                                                        /lei:LEIData/lei:LEIRecords/lei:LEIRecord/lei:Entity/lei:HeadquartersAddress/@xml:lang
#> 79                                                               /lei:LEIData/lei:LEIRecords/lei:LEIRecord/lei:Entity/lei:LegalAddress/@xml:lang
#> 80                                                                  /lei:LEIData/lei:LEIRecords/lei:LEIRecord/lei:Entity/lei:LegalName/@xml:lang
#> 81                                          /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Registration/rr:NextRenewalDate
#> 82                                          /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Registration/rr:NextRenewalDate
#> 83                                           /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Registration/rr:LastUpdateDate
#> 84                                           /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Registration/rr:LastUpdateDate
#> 85   /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Relationship/rr:RelationshipPeriods/rr:RelationshipPeriod/rr:StartDate
#> 86   /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Relationship/rr:RelationshipPeriods/rr:RelationshipPeriod/rr:StartDate
#> 87                                                                /lei:LEIData/lei:LEIRecords/lei:LEIRecord/lei:Registration/lei:NextRenewalDate
#> 88     /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Relationship/rr:RelationshipPeriods/rr:RelationshipPeriod/rr:EndDate
#> 89     /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Relationship/rr:RelationshipPeriods/rr:RelationshipPeriod/rr:EndDate
#> 90                                                                 /lei:LEIData/lei:LEIRecords/lei:LEIRecord/lei:Registration/lei:LastUpdateDate
#> 91   /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Relationship/rr:RelationshipPeriods/rr:RelationshipPeriod/rr:StartDate
#> 92   /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Relationship/rr:RelationshipPeriods/rr:RelationshipPeriod/rr:StartDate
#> 93                                          /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Registration/rr:NextRenewalDate
#> 94                                          /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Registration/rr:NextRenewalDate
#> 95                                                                /lei:LEIData/lei:LEIRecords/lei:LEIRecord/lei:Registration/lei:NextRenewalDate
#> 96                                           /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Registration/rr:LastUpdateDate
#> 97                                           /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Registration/rr:LastUpdateDate
#> 98                                                                 /lei:LEIData/lei:LEIRecords/lei:LEIRecord/lei:Registration/lei:LastUpdateDate
#> 99   /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Relationship/rr:RelationshipPeriods/rr:RelationshipPeriod/rr:StartDate
#> 100  /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Relationship/rr:RelationshipPeriods/rr:RelationshipPeriod/rr:StartDate
#> 101                                            /lei:LEIData/lei:LEIRecords/lei:LEIRecord/lei:Entity/lei:HeadquartersAddress/lei:FirstAddressLine
#> 102    /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Relationship/rr:RelationshipPeriods/rr:RelationshipPeriod/rr:EndDate
#> 103    /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Relationship/rr:RelationshipPeriods/rr:RelationshipPeriod/rr:EndDate
#> 104                                                   /lei:LEIData/lei:LEIRecords/lei:LEIRecord/lei:Entity/lei:LegalAddress/lei:FirstAddressLine
#> 105  /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Relationship/rr:RelationshipPeriods/rr:RelationshipPeriod/rr:StartDate
#> 106  /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Relationship/rr:RelationshipPeriods/rr:RelationshipPeriod/rr:StartDate
#> 107                                                                /lei:LEIData/lei:LEIRecords/lei:LEIRecord/lei:Registration/lei:LastUpdateDate
#> 108                                                                /lei:LEIData/lei:LEIRecords/lei:LEIRecord/lei:Registration/lei:LastUpdateDate
#> 109                                         /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Registration/rr:NextRenewalDate
#> 110                                         /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Registration/rr:NextRenewalDate
#> 111                                          /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Registration/rr:LastUpdateDate
#> 112                                          /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Registration/rr:LastUpdateDate
#> 113  /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Relationship/rr:RelationshipPeriods/rr:RelationshipPeriod/rr:StartDate
#> 114  /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Relationship/rr:RelationshipPeriods/rr:RelationshipPeriod/rr:StartDate
#> 115                                                               /lei:LEIData/lei:LEIRecords/lei:LEIRecord/lei:Registration/lei:NextRenewalDate
#> 116    /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Relationship/rr:RelationshipPeriods/rr:RelationshipPeriod/rr:EndDate
#> 117    /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Relationship/rr:RelationshipPeriods/rr:RelationshipPeriod/rr:EndDate
#> 118                                                                /lei:LEIData/lei:LEIRecords/lei:LEIRecord/lei:Registration/lei:LastUpdateDate
#> 119  /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Relationship/rr:RelationshipPeriods/rr:RelationshipPeriod/rr:StartDate
#> 120  /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Relationship/rr:RelationshipPeriods/rr:RelationshipPeriod/rr:StartDate
#> 121                                                        /lei:LEIData/lei:LEIRecords/lei:LEIRecord/lei:Entity/lei:LegalForm/lei:OtherLegalForm
#> 122                                                                /lei:LEIData/lei:LEIRecords/lei:LEIRecord/lei:Registration/lei:LastUpdateDate
#> 123                                                   /lei:LEIData/lei:LEIRecords/lei:LEIRecord/lei:Entity/lei:LegalForm/lei:EntityLegalFormCode
#> 124                           /lei:LEIData/lei:LEIRecords/lei:LEIRecord/lei:Registration/lei:ValidationAuthority/lei:ValidationAuthorityEntityID
#> 125                                 /lei:LEIData/lei:LEIRecords/lei:LEIRecord/lei:Registration/lei:ValidationAuthority/lei:ValidationAuthorityID
#> 126                                                             /lei:LEIData/lei:LEIRecords/lei:LEIRecord/lei:Registration/lei:ValidationSources
#> 127                                                                   /lei:LEIData/lei:LEIRecords/lei:LEIRecord/lei:Registration/lei:ManagingLOU
#> 128                                                               /lei:LEIData/lei:LEIRecords/lei:LEIRecord/lei:Registration/lei:NextRenewalDate
#> 129                                                            /lei:LEIData/lei:LEIRecords/lei:LEIRecord/lei:Registration/lei:RegistrationStatus
#> 130                                                                /lei:LEIData/lei:LEIRecords/lei:LEIRecord/lei:Registration/lei:LastUpdateDate
#> 131                                                       /lei:LEIData/lei:LEIRecords/lei:LEIRecord/lei:Registration/lei:InitialRegistrationDate
#> 132                                                                        /lei:LEIData/lei:LEIRecords/lei:LEIRecord/lei:Entity/lei:EntityStatus
#> 133                                                        /lei:LEIData/lei:LEIRecords/lei:LEIRecord/lei:Entity/lei:LegalForm/lei:OtherLegalForm
#> 134                                                   /lei:LEIData/lei:LEIRecords/lei:LEIRecord/lei:Entity/lei:LegalForm/lei:EntityLegalFormCode
#> 135                                                                   /lei:LEIData/lei:LEIRecords/lei:LEIRecord/lei:Entity/lei:LegalJurisdiction
#> 136                             /lei:LEIData/lei:LEIRecords/lei:LEIRecord/lei:Entity/lei:RegistrationAuthority/lei:RegistrationAuthorityEntityID
#> 137                                   /lei:LEIData/lei:LEIRecords/lei:LEIRecord/lei:Entity/lei:RegistrationAuthority/lei:RegistrationAuthorityID
#> 138                                                  /lei:LEIData/lei:LEIRecords/lei:LEIRecord/lei:Entity/lei:HeadquartersAddress/lei:PostalCode
#> 139                                                     /lei:LEIData/lei:LEIRecords/lei:LEIRecord/lei:Entity/lei:HeadquartersAddress/lei:Country
#> 140                                                      /lei:LEIData/lei:LEIRecords/lei:LEIRecord/lei:Entity/lei:HeadquartersAddress/lei:Region
#> 141                                                        /lei:LEIData/lei:LEIRecords/lei:LEIRecord/lei:Entity/lei:HeadquartersAddress/lei:City
#> 142                                            /lei:LEIData/lei:LEIRecords/lei:LEIRecord/lei:Entity/lei:HeadquartersAddress/lei:FirstAddressLine
#> 143                                                         /lei:LEIData/lei:LEIRecords/lei:LEIRecord/lei:Entity/lei:LegalAddress/lei:PostalCode
#> 144                                                            /lei:LEIData/lei:LEIRecords/lei:LEIRecord/lei:Entity/lei:LegalAddress/lei:Country
#> 145                                                             /lei:LEIData/lei:LEIRecords/lei:LEIRecord/lei:Entity/lei:LegalAddress/lei:Region
#> 146                                                               /lei:LEIData/lei:LEIRecords/lei:LEIRecord/lei:Entity/lei:LegalAddress/lei:City
#> 147                                                   /lei:LEIData/lei:LEIRecords/lei:LEIRecord/lei:Entity/lei:LegalAddress/lei:FirstAddressLine
#> 148                                                                           /lei:LEIData/lei:LEIRecords/lei:LEIRecord/lei:Entity/lei:LegalName
#> 149                                                                                            /lei:LEIData/lei:LEIRecords/lei:LEIRecord/lei:LEI
#> 150                                     /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Registration/rr:ValidationDocuments
#> 151                                     /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Registration/rr:ValidationDocuments
#> 152                                       /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Registration/rr:ValidationSources
#> 153                                       /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Registration/rr:ValidationSources
#> 154                                             /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Registration/rr:ManagingLOU
#> 155                                             /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Registration/rr:ManagingLOU
#> 156                                         /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Registration/rr:NextRenewalDate
#> 157                                         /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Registration/rr:NextRenewalDate
#> 158                                      /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Registration/rr:RegistrationStatus
#> 159                                      /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Registration/rr:RegistrationStatus
#> 160                                          /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Registration/rr:LastUpdateDate
#> 161                                          /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Registration/rr:LastUpdateDate
#> 162                                 /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Registration/rr:InitialRegistrationDate
#> 163                                 /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Registration/rr:InitialRegistrationDate
#> 164                                      /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Relationship/rr:RelationshipStatus
#> 165                                      /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Relationship/rr:RelationshipStatus
#> 166 /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Relationship/rr:RelationshipPeriods/rr:RelationshipPeriod/rr:PeriodType
#> 167 /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Relationship/rr:RelationshipPeriods/rr:RelationshipPeriod/rr:PeriodType
#> 168  /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Relationship/rr:RelationshipPeriods/rr:RelationshipPeriod/rr:StartDate
#> 169  /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Relationship/rr:RelationshipPeriods/rr:RelationshipPeriod/rr:StartDate
#> 170 /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Relationship/rr:RelationshipPeriods/rr:RelationshipPeriod/rr:PeriodType
#> 171 /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Relationship/rr:RelationshipPeriods/rr:RelationshipPeriod/rr:PeriodType
#> 172  /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Relationship/rr:RelationshipPeriods/rr:RelationshipPeriod/rr:StartDate
#> 173  /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Relationship/rr:RelationshipPeriods/rr:RelationshipPeriod/rr:StartDate
#> 174 /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Relationship/rr:RelationshipPeriods/rr:RelationshipPeriod/rr:PeriodType
#> 175 /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Relationship/rr:RelationshipPeriods/rr:RelationshipPeriod/rr:PeriodType
#> 176    /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Relationship/rr:RelationshipPeriods/rr:RelationshipPeriod/rr:EndDate
#> 177    /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Relationship/rr:RelationshipPeriods/rr:RelationshipPeriod/rr:EndDate
#> 178  /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Relationship/rr:RelationshipPeriods/rr:RelationshipPeriod/rr:StartDate
#> 179  /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Relationship/rr:RelationshipPeriods/rr:RelationshipPeriod/rr:StartDate
#> 180                                        /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Relationship/rr:RelationshipType
#> 181                                        /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Relationship/rr:RelationshipType
#> 182                                   /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Relationship/rr:EndNode/rr:NodeIDType
#> 183                                   /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Relationship/rr:EndNode/rr:NodeIDType
#> 184                                       /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Relationship/rr:EndNode/rr:NodeID
#> 185                                       /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Relationship/rr:EndNode/rr:NodeID
#> 186                                 /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Relationship/rr:StartNode/rr:NodeIDType
#> 187                                 /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Relationship/rr:StartNode/rr:NodeIDType
#> 188                                     /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Relationship/rr:StartNode/rr:NodeID
#> 189                                     /rr:RelationshipData/rr:RelationshipRecords/rr:RelationshipRecord/rr:Relationship/rr:StartNode/rr:NodeID
#>                     date                             value_old
#> 1   2025-08-28T00:00:00Z             2025-10-18T00:00:00+02:00
#> 2   2025-08-28T00:00:00Z             2025-10-18T00:00:00+02:00
#> 3   2025-08-28T00:00:00Z             2024-10-17T14:39:14+02:00
#> 4   2025-08-28T00:00:00Z             2024-10-17T14:39:14+02:00
#> 5   2025-08-28T00:00:00Z             2024-03-11T00:00:00+01:00
#> 6   2025-08-28T00:00:00Z             2024-03-11T00:00:00+01:00
#> 7   2025-08-28T00:00:00Z             2025-10-18T00:00:00+02:00
#> 8   2025-08-28T00:00:00Z             2023-12-31T00:00:00+01:00
#> 9   2025-08-28T00:00:00Z             2023-12-31T00:00:00+01:00
#> 10  2025-08-28T00:00:00Z             2024-10-17T14:39:14+02:00
#> 11  2025-08-28T00:00:00Z             2023-01-01T00:00:00+01:00
#> 12  2025-08-28T00:00:00Z             2023-01-01T00:00:00+01:00
#> 13  2024-10-18T08:00:00Z             2024-08-21T16:59:00+02:00
#> 14  2024-10-18T08:00:00Z                                 de-DE
#> 15  2024-10-18T08:00:00Z                                 de-DE
#> 16  2024-10-18T08:00:00Z                                  <NA>
#> 17  2024-10-18T08:00:00Z                                  <NA>
#> 18  2024-10-18T08:00:00Z                                  <NA>
#> 19  2024-10-18T08:00:00Z                                 de-DE
#> 20  2024-10-18T08:00:00Z             2024-08-21T16:59:00+02:00
#> 21  2024-10-18T08:00:00Z             2024-08-21T16:59:00+02:00
#> 22  2024-08-22T08:00:00Z                  ENTITY_SUPPLIED_ONLY
#> 23  2024-08-22T08:00:00Z                  ENTITY_SUPPLIED_ONLY
#> 24  2024-08-22T08:00:00Z             2024-10-18T00:00:00+02:00
#> 25  2024-08-22T08:00:00Z             2024-10-18T00:00:00+02:00
#> 26  2024-08-22T08:00:00Z             2023-09-11T11:15:51+02:00
#> 27  2024-08-22T08:00:00Z             2023-09-11T11:15:51+02:00
#> 28  2024-08-22T08:00:00Z             2023-03-13T00:00:00+01:00
#> 29  2024-08-22T08:00:00Z             2023-03-13T00:00:00+01:00
#> 30  2024-08-22T08:00:00Z             2024-10-18T00:00:00+02:00
#> 31  2024-08-22T08:00:00Z             2022-12-31T00:00:00+01:00
#> 32  2024-08-22T08:00:00Z             2022-12-31T00:00:00+01:00
#> 33  2024-08-22T08:00:00Z             2023-09-11T11:15:51+02:00
#> 34  2024-08-22T08:00:00Z             2022-01-01T00:00:00+01:00
#> 35  2024-08-22T08:00:00Z             2022-01-01T00:00:00+01:00
#> 36  2023-09-12T08:00:00Z                    FULLY_CORROBORATED
#> 37  2023-09-12T08:00:00Z                    FULLY_CORROBORATED
#> 38  2023-09-12T08:00:00Z             2023-10-18T00:00:00+02:00
#> 39  2023-09-12T08:00:00Z             2023-10-18T00:00:00+02:00
#> 40  2023-09-12T08:00:00Z             2022-09-08T13:32:26+02:00
#> 41  2023-09-12T08:00:00Z             2022-09-08T13:32:26+02:00
#> 42  2023-09-12T08:00:00Z             2023-10-18T00:00:00+02:00
#> 43  2023-09-12T08:00:00Z             2022-03-09T00:00:00+01:00
#> 44  2023-09-12T08:00:00Z             2022-03-09T00:00:00+01:00
#> 45  2023-09-12T08:00:00Z             2022-09-08T13:32:26+02:00
#> 46  2023-09-12T08:00:00Z             2021-12-31T00:00:00+01:00
#> 47  2023-09-12T08:00:00Z             2021-12-31T00:00:00+01:00
#> 48  2023-09-12T08:00:00Z             2004-11-29T00:00:00+01:00
#> 49  2023-09-12T08:00:00Z             2021-01-01T00:00:00+01:00
#> 50  2023-09-12T08:00:00Z             2021-01-01T00:00:00+01:00
#> 51  2022-09-09T08:00:00Z             2022-10-18T00:00:00+02:00
#> 52  2022-09-09T08:00:00Z             2022-10-18T00:00:00+02:00
#> 53  2022-09-09T08:00:00Z             2021-09-28T12:24:04+02:00
#> 54  2022-09-09T08:00:00Z             2021-09-28T12:24:04+02:00
#> 55  2022-09-09T08:00:00Z             2022-10-18T00:00:00+02:00
#> 56  2022-09-09T08:00:00Z             2021-03-17T00:00:00+01:00
#> 57  2022-09-09T08:00:00Z             2021-03-17T00:00:00+01:00
#> 58  2022-09-09T08:00:00Z             2021-09-28T12:24:04+02:00
#> 59  2022-09-09T08:00:00Z             2020-12-31T00:00:00+01:00
#> 60  2022-09-09T08:00:00Z             2020-12-31T00:00:00+01:00
#> 61  2022-09-09T08:00:00Z                                  <NA>
#> 62  2022-09-09T08:00:00Z             2020-01-01T00:00:00+01:00
#> 63  2022-09-09T08:00:00Z             2020-01-01T00:00:00+01:00
#> 64  2022-03-27T08:00:00Z                                  <NA>
#> 65  2021-09-29T08:00:00Z             2021-10-18T00:00:00+02:00
#> 66  2021-09-29T08:00:00Z             2021-10-18T00:00:00+02:00
#> 67  2021-09-29T08:00:00Z             2020-10-02T10:43:52+02:00
#> 68  2021-09-29T08:00:00Z             2020-10-02T10:43:52+02:00
#> 69  2021-09-29T08:00:00Z             2020-03-12T00:00:00+01:00
#> 70  2021-09-29T08:00:00Z             2020-03-12T00:00:00+01:00
#> 71  2021-09-29T08:00:00Z             2021-10-18T00:00:00+02:00
#> 72  2021-09-29T08:00:00Z             2019-12-31T00:00:00+01:00
#> 73  2021-09-29T08:00:00Z             2019-12-31T00:00:00+01:00
#> 74  2021-09-29T08:00:00Z             2021-07-19T07:07:28+02:00
#> 75  2021-09-29T08:00:00Z             2019-01-01T00:00:00+01:00
#> 76  2021-09-29T08:00:00Z             2019-01-01T00:00:00+01:00
#> 77  2021-07-20T08:00:00Z             2020-10-02T10:43:57+02:00
#> 78  2021-07-20T08:00:00Z                                  <NA>
#> 79  2021-07-20T08:00:00Z                                  <NA>
#> 80  2021-07-20T08:00:00Z                                  <NA>
#> 81  2020-10-03T08:00:00Z             2020-10-18T00:00:00+02:00
#> 82  2020-10-03T08:00:00Z             2020-10-18T00:00:00+02:00
#> 83  2020-10-03T08:00:00Z             2019-09-11T08:35:53+02:00
#> 84  2020-10-03T08:00:00Z             2019-09-11T08:35:53+02:00
#> 85  2020-10-03T08:00:00Z             2019-03-08T00:00:00+01:00
#> 86  2020-10-03T08:00:00Z             2019-09-11T08:03:00+02:00
#> 87  2020-10-03T08:00:00Z             2020-10-18T00:00:00+02:00
#> 88  2020-10-03T08:00:00Z             2018-12-31T00:00:00+01:00
#> 89  2020-10-03T08:00:00Z             2018-12-31T00:00:00+01:00
#> 90  2020-10-03T08:00:00Z             2019-09-11T08:35:58+02:00
#> 91  2020-10-03T08:00:00Z             2018-01-01T00:00:00+01:00
#> 92  2020-10-03T08:00:00Z             2018-01-01T00:00:00+01:00
#> 93  2019-09-12T08:00:00Z             2019-10-18T00:00:00+02:00
#> 94  2019-09-12T08:00:00Z             2019-10-18T00:00:00+02:00
#> 95  2019-09-12T08:00:00Z             2019-10-18T00:00:00+02:00
#> 96  2019-09-12T08:00:00Z             2018-09-25T16:25:34+02:00
#> 97  2019-09-12T08:00:00Z             2018-09-25T16:25:34+02:00
#> 98  2019-09-12T08:00:00Z             2019-02-20T12:58:32+01:00
#> 99  2019-09-12T08:00:00Z             2018-02-08T00:00:00+01:00
#> 100 2019-09-12T08:00:00Z             2018-02-08T00:00:00+01:00
#> 101 2019-09-12T08:00:00Z            Neue Mainzer Strasse 46-50
#> 102 2019-09-12T08:00:00Z             2017-12-31T00:00:00+01:00
#> 103 2019-09-12T08:00:00Z             2017-12-31T00:00:00+01:00
#> 104 2019-09-12T08:00:00Z            Neue Mainzer Strasse 46-50
#> 105 2019-09-12T08:00:00Z             2017-01-01T00:00:00+01:00
#> 106 2019-09-12T08:00:00Z             2017-01-01T00:00:00+01:00
#> 107 2019-02-21T08:00:00Z             2019-02-19T09:46:53+01:00
#> 108 2019-02-20T08:00:00Z             2018-09-25T16:25:34+02:00
#> 109 2018-09-26T08:00:00Z             2018-10-18T00:00:00+02:00
#> 110 2018-09-26T08:00:00Z             2018-10-18T00:00:00+02:00
#> 111 2018-09-26T08:00:00Z             2017-10-25T14:09:30+02:00
#> 112 2018-09-26T08:00:00Z             2017-10-25T14:09:30+02:00
#> 113 2018-09-26T08:00:00Z             2017-03-31T00:00:00+02:00
#> 114 2018-09-26T08:00:00Z             2017-03-31T00:00:00+02:00
#> 115 2018-09-26T08:00:00Z             2018-10-18T00:00:00+02:00
#> 116 2018-09-26T08:00:00Z             2016-12-31T00:00:00+01:00
#> 117 2018-09-26T08:00:00Z             2016-12-31T00:00:00+01:00
#> 118 2018-09-26T08:00:00Z             2018-02-28T09:02:46+01:00
#> 119 2018-09-26T08:00:00Z             2016-01-01T00:00:00+01:00
#> 120 2018-09-26T08:00:00Z             2016-01-01T00:00:00+01:00
#> 121 2018-02-28T16:00:00Z Gesellschaft mit beschränkter Haftung
#> 122 2018-02-28T16:00:00Z             2017-10-25T14:09:30+02:00
#> 123 2018-02-28T16:00:00Z                                  8888
#> 124 2018-02-14T02:41:15Z                                  <NA>
#> 125 2018-02-14T02:41:15Z                                  <NA>
#> 126 2018-02-14T02:41:15Z                                  <NA>
#> 127 2018-02-14T02:41:15Z                                  <NA>
#> 128 2018-02-14T02:41:15Z                                  <NA>
#> 129 2018-02-14T02:41:15Z                                  <NA>
#> 130 2018-02-14T02:41:15Z                                  <NA>
#> 131 2018-02-14T02:41:15Z                                  <NA>
#> 132 2018-02-14T02:41:15Z                                  <NA>
#> 133 2018-02-14T02:41:15Z                                  <NA>
#> 134 2018-02-14T02:41:15Z                                  <NA>
#> 135 2018-02-14T02:41:15Z                                  <NA>
#> 136 2018-02-14T02:41:15Z                                  <NA>
#> 137 2018-02-14T02:41:15Z                                  <NA>
#> 138 2018-02-14T02:41:15Z                                  <NA>
#> 139 2018-02-14T02:41:15Z                                  <NA>
#> 140 2018-02-14T02:41:15Z                                  <NA>
#> 141 2018-02-14T02:41:15Z                                  <NA>
#> 142 2018-02-14T02:41:15Z                                  <NA>
#> 143 2018-02-14T02:41:15Z                                  <NA>
#> 144 2018-02-14T02:41:15Z                                  <NA>
#> 145 2018-02-14T02:41:15Z                                  <NA>
#> 146 2018-02-14T02:41:15Z                                  <NA>
#> 147 2018-02-14T02:41:15Z                                  <NA>
#> 148 2018-02-14T02:41:15Z                                  <NA>
#> 149 2018-02-14T02:41:15Z                                  <NA>
#> 150 2018-02-08T07:06:48Z                                  <NA>
#> 151 2018-02-08T07:06:48Z                                  <NA>
#> 152 2018-02-08T07:06:48Z                                  <NA>
#> 153 2018-02-08T07:06:48Z                                  <NA>
#> 154 2018-02-08T07:06:48Z                                  <NA>
#> 155 2018-02-08T07:06:48Z                                  <NA>
#> 156 2018-02-08T07:06:48Z                                  <NA>
#> 157 2018-02-08T07:06:48Z                                  <NA>
#> 158 2018-02-08T07:06:48Z                                  <NA>
#> 159 2018-02-08T07:06:48Z                                  <NA>
#> 160 2018-02-08T07:06:48Z                                  <NA>
#> 161 2018-02-08T07:06:48Z                                  <NA>
#> 162 2018-02-08T07:06:48Z                                  <NA>
#> 163 2018-02-08T07:06:48Z                                  <NA>
#> 164 2018-02-08T07:06:48Z                                  <NA>
#> 165 2018-02-08T07:06:48Z                                  <NA>
#> 166 2018-02-08T07:06:48Z                                  <NA>
#> 167 2018-02-08T07:06:48Z                                  <NA>
#> 168 2018-02-08T07:06:48Z                                  <NA>
#> 169 2018-02-08T07:06:48Z                                  <NA>
#> 170 2018-02-08T07:06:48Z                                  <NA>
#> 171 2018-02-08T07:06:48Z                                  <NA>
#> 172 2018-02-08T07:06:48Z                                  <NA>
#> 173 2018-02-08T07:06:48Z                                  <NA>
#> 174 2018-02-08T07:06:48Z                                  <NA>
#> 175 2018-02-08T07:06:48Z                                  <NA>
#> 176 2018-02-08T07:06:48Z                                  <NA>
#> 177 2018-02-08T07:06:48Z                                  <NA>
#> 178 2018-02-08T07:06:48Z                                  <NA>
#> 179 2018-02-08T07:06:48Z                                  <NA>
#> 180 2018-02-08T07:06:48Z                                  <NA>
#> 181 2018-02-08T07:06:48Z                                  <NA>
#> 182 2018-02-08T07:06:48Z                                  <NA>
#> 183 2018-02-08T07:06:48Z                                  <NA>
#> 184 2018-02-08T07:06:48Z                                  <NA>
#> 185 2018-02-08T07:06:48Z                                  <NA>
#> 186 2018-02-08T07:06:48Z                                  <NA>
#> 187 2018-02-08T07:06:48Z                                  <NA>
#> 188 2018-02-08T07:06:48Z                                  <NA>
#> 189 2018-02-08T07:06:48Z                                  <NA>
#>                                 value_new
#> 1               2026-10-18T00:00:00+02:00
#> 2               2026-10-18T00:00:00+02:00
#> 3               2025-08-27T16:35:08+02:00
#> 4               2025-08-27T16:35:08+02:00
#> 5               2025-03-12T00:00:00+01:00
#> 6               2025-03-12T00:00:00+01:00
#> 7               2026-10-18T00:00:00+02:00
#> 8               2024-12-31T00:00:00+01:00
#> 9               2024-12-31T00:00:00+01:00
#> 10              2025-08-27T16:35:08+02:00
#> 11              2024-01-01T00:00:00+01:00
#> 12              2024-01-01T00:00:00+01:00
#> 13              2024-10-17T14:39:14+02:00
#> 14                                     de
#> 15                                     de
#> 16   AUTO_ASCII_TRANSLITERATED_LEGAL_NAME
#> 17                                     fr
#> 18         Societe Generale Effekten GmbH
#> 19                                     fr
#> 20              2024-10-17T14:39:14+02:00
#> 21              2024-10-17T14:39:14+02:00
#> 22                     FULLY_CORROBORATED
#> 23                     FULLY_CORROBORATED
#> 24              2025-10-18T00:00:00+02:00
#> 25              2025-10-18T00:00:00+02:00
#> 26              2024-08-21T16:59:00+02:00
#> 27              2024-08-21T16:59:00+02:00
#> 28              2024-03-11T00:00:00+01:00
#> 29              2024-03-11T00:00:00+01:00
#> 30              2025-10-18T00:00:00+02:00
#> 31              2023-12-31T00:00:00+01:00
#> 32              2023-12-31T00:00:00+01:00
#> 33              2024-08-21T16:59:00+02:00
#> 34              2023-01-01T00:00:00+01:00
#> 35              2023-01-01T00:00:00+01:00
#> 36                   ENTITY_SUPPLIED_ONLY
#> 37                   ENTITY_SUPPLIED_ONLY
#> 38              2024-10-18T00:00:00+02:00
#> 39              2024-10-18T00:00:00+02:00
#> 40              2023-09-11T11:15:51+02:00
#> 41              2023-09-11T11:15:51+02:00
#> 42              2024-10-18T00:00:00+02:00
#> 43              2023-03-13T00:00:00+01:00
#> 44              2023-03-13T00:00:00+01:00
#> 45              2023-09-11T11:15:51+02:00
#> 46              2022-12-31T00:00:00+01:00
#> 47              2022-12-31T00:00:00+01:00
#> 48              1977-03-03T00:00:00+01:00
#> 49              2022-01-01T00:00:00+01:00
#> 50              2022-01-01T00:00:00+01:00
#> 51              2023-10-18T00:00:00+02:00
#> 52              2023-10-18T00:00:00+02:00
#> 53              2022-09-08T13:32:26+02:00
#> 54              2022-09-08T13:32:26+02:00
#> 55              2023-10-18T00:00:00+02:00
#> 56              2022-03-09T00:00:00+01:00
#> 57              2022-03-09T00:00:00+01:00
#> 58              2022-09-08T13:32:26+02:00
#> 59              2021-12-31T00:00:00+01:00
#> 60              2021-12-31T00:00:00+01:00
#> 61              2004-11-29T00:00:00+01:00
#> 62              2021-01-01T00:00:00+01:00
#> 63              2021-01-01T00:00:00+01:00
#> 64                                GENERAL
#> 65              2022-10-18T00:00:00+02:00
#> 66              2022-10-18T00:00:00+02:00
#> 67              2021-09-28T12:24:04+02:00
#> 68              2021-09-28T12:24:04+02:00
#> 69              2021-03-17T00:00:00+01:00
#> 70              2021-03-17T00:00:00+01:00
#> 71              2022-10-18T00:00:00+02:00
#> 72              2020-12-31T00:00:00+01:00
#> 73              2020-12-31T00:00:00+01:00
#> 74              2021-09-28T12:24:04+02:00
#> 75              2020-01-01T00:00:00+01:00
#> 76              2020-01-01T00:00:00+01:00
#> 77              2021-07-19T07:07:28+02:00
#> 78                                  de-DE
#> 79                                  de-DE
#> 80                                  de-DE
#> 81              2021-10-18T00:00:00+02:00
#> 82              2021-10-18T00:00:00+02:00
#> 83              2020-10-02T10:43:52+02:00
#> 84              2020-10-02T10:43:52+02:00
#> 85              2020-03-12T00:00:00+01:00
#> 86              2020-03-12T00:00:00+01:00
#> 87              2021-10-18T00:00:00+02:00
#> 88              2019-12-31T00:00:00+01:00
#> 89              2019-12-31T00:00:00+01:00
#> 90              2020-10-02T10:43:57+02:00
#> 91              2019-01-01T00:00:00+01:00
#> 92              2019-01-01T00:00:00+01:00
#> 93              2020-10-18T00:00:00+02:00
#> 94              2020-10-18T00:00:00+02:00
#> 95              2020-10-18T00:00:00+02:00
#> 96              2019-09-11T08:35:53+02:00
#> 97              2019-09-11T08:35:53+02:00
#> 98              2019-09-11T08:35:58+02:00
#> 99              2019-03-08T00:00:00+01:00
#> 100             2019-09-11T08:03:00+02:00
#> 101             Neue Mainzer Straße 46-50
#> 102             2018-12-31T00:00:00+01:00
#> 103             2018-12-31T00:00:00+01:00
#> 104             Neue Mainzer Straße 46-50
#> 105             2018-01-01T00:00:00+01:00
#> 106             2018-01-01T00:00:00+01:00
#> 107             2019-02-20T12:58:32+01:00
#> 108             2019-02-19T09:46:53+01:00
#> 109             2019-10-18T00:00:00+02:00
#> 110             2019-10-18T00:00:00+02:00
#> 111             2018-09-25T16:25:34+02:00
#> 112             2018-09-25T16:25:34+02:00
#> 113             2018-02-08T00:00:00+01:00
#> 114             2018-02-08T00:00:00+01:00
#> 115             2019-10-18T00:00:00+02:00
#> 116             2017-12-31T00:00:00+01:00
#> 117             2017-12-31T00:00:00+01:00
#> 118             2018-09-25T16:25:34+02:00
#> 119             2017-01-01T00:00:00+01:00
#> 120             2017-01-01T00:00:00+01:00
#> 121                                  <NA>
#> 122             2018-02-28T09:02:46+01:00
#> 123                                  2HBR
#> 124                             HRB 32283
#> 125                              RA000242
#> 126                    FULLY_CORROBORATED
#> 127                  5299000J2N45DDNE4Y28
#> 128             2018-10-18T00:00:00+02:00
#> 129                                ISSUED
#> 130             2017-10-25T14:09:30+02:00
#> 131             2014-01-27T08:37:54+01:00
#> 132                                ACTIVE
#> 133 Gesellschaft mit beschränkter Haftung
#> 134                                  8888
#> 135                                    DE
#> 136                             HRB 32283
#> 137                              RA000242
#> 138                                 60311
#> 139                                    DE
#> 140                                 DE-HE
#> 141                     Frankfurt am Main
#> 142            Neue Mainzer Strasse 46-50
#> 143                                 60311
#> 144                                    DE
#> 145                                 DE-HE
#> 146                     Frankfurt am Main
#> 147            Neue Mainzer Strasse 46-50
#> 148        Société Générale Effekten GmbH
#> 149                  529900W18LQJJN6SJ336
#> 150                       ACCOUNTS_FILING
#> 151                       ACCOUNTS_FILING
#> 152                    FULLY_CORROBORATED
#> 153                    FULLY_CORROBORATED
#> 154                  5299000J2N45DDNE4Y28
#> 155                  5299000J2N45DDNE4Y28
#> 156             2018-10-18T00:00:00+02:00
#> 157             2018-10-18T00:00:00+02:00
#> 158                             PUBLISHED
#> 159                             PUBLISHED
#> 160             2017-10-25T14:09:30+02:00
#> 161             2017-10-25T14:09:30+02:00
#> 162             2017-10-25T14:09:30+02:00
#> 163             2017-10-25T14:09:30+02:00
#> 164                                ACTIVE
#> 165                                ACTIVE
#> 166                DOCUMENT_FILING_PERIOD
#> 167                DOCUMENT_FILING_PERIOD
#> 168             2017-03-31T00:00:00+02:00
#> 169             2017-03-31T00:00:00+02:00
#> 170                   RELATIONSHIP_PERIOD
#> 171                   RELATIONSHIP_PERIOD
#> 172             2017-10-17T00:00:00+02:00
#> 173             2017-10-17T00:00:00+02:00
#> 174                     ACCOUNTING_PERIOD
#> 175                     ACCOUNTING_PERIOD
#> 176             2016-12-31T00:00:00+01:00
#> 177             2016-12-31T00:00:00+01:00
#> 178             2016-01-01T00:00:00+01:00
#> 179             2016-01-01T00:00:00+01:00
#> 180           IS_DIRECTLY_CONSOLIDATED_BY
#> 181         IS_ULTIMATELY_CONSOLIDATED_BY
#> 182                                   LEI
#> 183                                   LEI
#> 184                  O2RNE8IBXP4R0TD8PU41
#> 185                  O2RNE8IBXP4R0TD8PU41
#> 186                                   LEI
#> 187                                   LEI
#> 188                  529900W18LQJJN6SJ336
#> 189                  529900W18LQJJN6SJ336
# }
```

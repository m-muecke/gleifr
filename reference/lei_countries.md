# Fetch the list of countries

Fetches the list of countries (ISO 3166-1) recognized by the GLEIF API.

## Usage

``` r
lei_countries()
```

## Value

A [`data.frame()`](https://rdrr.io/r/base/data.frame.html) with columns:

- **code**: The country code

- **name**: The country name

## Examples

``` r
# \donttest{
lei_countries()
#>     code                                                       name
#> 1     AD                                                    Andorra
#> 2     AE                                 United Arab Emirates (the)
#> 3     AF                                                Afghanistan
#> 4     AG                                        Antigua and Barbuda
#> 5     AI                                                   Anguilla
#> 6     AL                                                    Albania
#> 7     AM                                                    Armenia
#> 8     AO                                                     Angola
#> 9     AQ                                                 Antarctica
#> 10    AR                                                  Argentina
#> 11    AS                                             American Samoa
#> 12    AT                                                    Austria
#> 13    AU                                                  Australia
#> 14    AW                                                      Aruba
#> 15    AX                                              Åland Islands
#> 16    AZ                                                 Azerbaijan
#> 17    BA                                     Bosnia and Herzegovina
#> 18    BB                                                   Barbados
#> 19    BD                                                 Bangladesh
#> 20    BE                                                    Belgium
#> 21    BF                                               Burkina Faso
#> 22    BG                                                   Bulgaria
#> 23    BH                                                    Bahrain
#> 24    BI                                                    Burundi
#> 25    BJ                                                      Benin
#> 26    BL                                           Saint Barthélemy
#> 27    BM                                                    Bermuda
#> 28    BN                                          Brunei Darussalam
#> 29    BO                           Bolivia (Plurinational State of)
#> 30    BQ                           Bonaire, Sint Eustatius and Saba
#> 31    BR                                                     Brazil
#> 32    BS                                              Bahamas (the)
#> 33    BT                                                     Bhutan
#> 34    BV                                              Bouvet Island
#> 35    BW                                                   Botswana
#> 36    BY                                                    Belarus
#> 37    BZ                                                     Belize
#> 38    CA                                                     Canada
#> 39    CC                              Cocos (Keeling) Islands (the)
#> 40    CD                     Congo (the Democratic Republic of the)
#> 41    CF                             Central African Republic (the)
#> 42    CG                                                Congo (the)
#> 43    CH                                                Switzerland
#> 44    CI                                              Côte d'Ivoire
#> 45    CK                                         Cook Islands (the)
#> 46    CL                                                      Chile
#> 47    CM                                                   Cameroon
#> 48    CN                                                      China
#> 49    CO                                                   Colombia
#> 50    CR                                                 Costa Rica
#> 51    CU                                                       Cuba
#> 52    CV                                                 Cabo Verde
#> 53    CW                                                    Curaçao
#> 54    CX                                           Christmas Island
#> 55    CY                                                     Cyprus
#> 56    CZ                                                    Czechia
#> 57    DE                                                    Germany
#> 58    DJ                                                   Djibouti
#> 59    DK                                                    Denmark
#> 60    DM                                                   Dominica
#> 61    DO                                   Dominican Republic (the)
#> 62    DZ                                                    Algeria
#> 63    EC                                                    Ecuador
#> 64    EE                                                    Estonia
#> 65    EG                                                      Egypt
#> 66    EH                                            Western Sahara*
#> 67    ER                                                    Eritrea
#> 68    ES                                                      Spain
#> 69    ET                                                   Ethiopia
#> 70    FI                                                    Finland
#> 71    FJ                                                       Fiji
#> 72    FK                          Falkland Islands (the) [Malvinas]
#> 73    FM                           Micronesia (Federated States of)
#> 74    FO                                        Faroe Islands (the)
#> 75    FR                                                     France
#> 76    GA                                                      Gabon
#> 77    GB United Kingdom of Great Britain and Northern Ireland (the)
#> 78    GD                                                    Grenada
#> 79    GE                                                    Georgia
#> 80    GF                                              French Guiana
#> 81    GG                                                   Guernsey
#> 82    GH                                                      Ghana
#> 83    GI                                                  Gibraltar
#> 84    GL                                                  Greenland
#> 85    GM                                               Gambia (the)
#> 86    GN                                                     Guinea
#> 87    GP                                                 Guadeloupe
#> 88    GQ                                          Equatorial Guinea
#> 89    GR                                                     Greece
#> 90    GS               South Georgia and the South Sandwich Islands
#> 91    GT                                                  Guatemala
#> 92    GU                                                       Guam
#> 93    GW                                              Guinea-Bissau
#> 94    GY                                                     Guyana
#> 95    HK                                                  Hong Kong
#> 96    HM                          Heard Island and McDonald Islands
#> 97    HN                                                   Honduras
#> 98    HR                                                    Croatia
#> 99    HT                                                      Haiti
#> 100   HU                                                    Hungary
#> 101   ID                                                  Indonesia
#> 102   IE                                                    Ireland
#> 103   IL                                                     Israel
#> 104   IM                                                Isle of Man
#> 105   IN                                                      India
#> 106   IO                       British Indian Ocean Territory (the)
#> 107   IQ                                                       Iraq
#> 108   IR                                 Iran (Islamic Republic of)
#> 109   IS                                                    Iceland
#> 110   IT                                                      Italy
#> 111   JE                                                     Jersey
#> 112   JM                                                    Jamaica
#> 113   JO                                                     Jordan
#> 114   JP                                                      Japan
#> 115   KE                                                      Kenya
#> 116   KG                                                 Kyrgyzstan
#> 117   KH                                                   Cambodia
#> 118   KI                                                   Kiribati
#> 119   KM                                              Comoros (the)
#> 120   KN                                      Saint Kitts and Nevis
#> 121   KP                Korea (the Democratic People's Republic of)
#> 122   KR                                    Korea (the Republic of)
#> 123   KW                                                     Kuwait
#> 124   KY                                       Cayman Islands (the)
#> 125   KZ                                                 Kazakhstan
#> 126   LA                     Lao People's Democratic Republic (the)
#> 127   LB                                                    Lebanon
#> 128   LC                                                Saint Lucia
#> 129   LI                                              Liechtenstein
#> 130   LK                                                  Sri Lanka
#> 131   LR                                                    Liberia
#> 132   LS                                                    Lesotho
#> 133   LT                                                  Lithuania
#> 134   LU                                                 Luxembourg
#> 135   LV                                                     Latvia
#> 136   LY                                                      Libya
#> 137   MA                                                    Morocco
#> 138   MC                                                     Monaco
#> 139   MD                                  Moldova (the Republic of)
#> 140   ME                                                 Montenegro
#> 141   MF                                 Saint Martin (French part)
#> 142   MG                                                 Madagascar
#> 143   MH                                     Marshall Islands (the)
#> 144   MK                                            North Macedonia
#> 145   ML                                                       Mali
#> 146   MM                                                    Myanmar
#> 147   MN                                                   Mongolia
#> 148   MO                                                      Macao
#> 149   MP                             Northern Mariana Islands (the)
#> 150   MQ                                                 Martinique
#> 151   MR                                                 Mauritania
#> 152   MS                                                 Montserrat
#> 153   MT                                                      Malta
#> 154   MU                                                  Mauritius
#> 155   MV                                                   Maldives
#> 156   MW                                                     Malawi
#> 157   MX                                                     Mexico
#> 158   MY                                                   Malaysia
#> 159   MZ                                                 Mozambique
#> 160   NA                                                    Namibia
#> 161   NC                                              New Caledonia
#> 162   NE                                                Niger (the)
#> 163   NF                                             Norfolk Island
#> 164   NG                                                    Nigeria
#> 165   NI                                                  Nicaragua
#> 166   NL                                          Netherlands (the)
#> 167   NO                                                     Norway
#> 168   NP                                                      Nepal
#> 169   NR                                                      Nauru
#> 170   NU                                                       Niue
#> 171   NZ                                                New Zealand
#> 172   OM                                                       Oman
#> 173   PA                                                     Panama
#> 174   PE                                                       Peru
#> 175   PF                                           French Polynesia
#> 176   PG                                           Papua New Guinea
#> 177   PH                                          Philippines (the)
#> 178   PK                                                   Pakistan
#> 179   PL                                                     Poland
#> 180   PM                                  Saint Pierre and Miquelon
#> 181   PN                                                   Pitcairn
#> 182   PR                                                Puerto Rico
#> 183   PS                                        Palestine, State of
#> 184   PT                                                   Portugal
#> 185   PW                                                      Palau
#> 186   PY                                                   Paraguay
#> 187   QA                                                      Qatar
#> 188   RE                                                    Réunion
#> 189   RO                                                    Romania
#> 190   RS                                                     Serbia
#> 191   RU                                   Russian Federation (the)
#> 192   RW                                                     Rwanda
#> 193   SA                                               Saudi Arabia
#> 194   SB                                            Solomon Islands
#> 195   SC                                                 Seychelles
#> 196   SD                                                Sudan (the)
#> 197   SE                                                     Sweden
#> 198   SG                                                  Singapore
#> 199   SH               Saint Helena, Ascension and Tristan da Cunha
#> 200   SI                                                   Slovenia
# }
```

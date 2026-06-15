# Fetch the list of registration authorities

Fetches the list of registration authorities (RA codes) recognized by
the GLEIF API. These resolve the registration authority codes that
appear in
[`lei_record_by_id()`](https://m-muecke.github.io/gleifr/reference/lei_record_by_id.md)
output to the issuing business registries.

## Usage

``` r
lei_registration_authorities()
```

## Value

A [`data.frame()`](https://rdrr.io/r/base/data.frame.html) with columns:

- **code**: The registration authority (RA) code

- **international_name**: The international name of the authority

- **local_name**: The local name of the authority, or `NA` if none

- **website**: The authority website, or `NA` if none

## Examples

``` r
# \donttest{
lei_registration_authorities()
#>         code
#> 1   RA000001
#> 2   RA000002
#> 3   RA000003
#> 4   RA000004
#> 5   RA000005
#> 6   RA000006
#> 7   RA000007
#> 8   RA000008
#> 9   RA000009
#> 10  RA000010
#> 11  RA000011
#> 12  RA000012
#> 13  RA000013
#> 14  RA000014
#> 15  RA000015
#> 16  RA000016
#> 17  RA000017
#> 18  RA000018
#> 19  RA000019
#> 20  RA000020
#> 21  RA000021
#> 22  RA000022
#> 23  RA000023
#> 24  RA000024
#> 25  RA000025
#> 26  RA000026
#> 27  RA000027
#> 28  RA000028
#> 29  RA000029
#> 30  RA000030
#> 31  RA000032
#> 32  RA000033
#> 33  RA000034
#> 34  RA000035
#> 35  RA000036
#> 36  RA000037
#> 37  RA000038
#> 38  RA000039
#> 39  RA000040
#> 40  RA000041
#> 41  RA000042
#> 42  RA000043
#> 43  RA000044
#> 44  RA000045
#> 45  RA000046
#> 46  RA000047
#> 47  RA000048
#> 48  RA000049
#> 49  RA000050
#> 50  RA000051
#> 51  RA000052
#> 52  RA000053
#> 53  RA000054
#> 54  RA000055
#> 55  RA000056
#> 56  RA000057
#> 57  RA000058
#> 58  RA000059
#> 59  RA000060
#> 60  RA000061
#> 61  RA000062
#> 62  RA000063
#> 63  RA000064
#> 64  RA000065
#> 65  RA000066
#> 66  RA000067
#> 67  RA000068
#> 68  RA000069
#> 69  RA000070
#> 70  RA000071
#> 71  RA000072
#> 72  RA000073
#> 73  RA000074
#> 74  RA000075
#> 75  RA000076
#> 76  RA000077
#> 77  RA000078
#> 78  RA000079
#> 79  RA000080
#> 80  RA000081
#> 81  RA000082
#> 82  RA000083
#> 83  RA000084
#> 84  RA000085
#> 85  RA000086
#> 86  RA000087
#> 87  RA000088
#> 88  RA000089
#> 89  RA000090
#> 90  RA000091
#> 91  RA000092
#> 92  RA000093
#> 93  RA000094
#> 94  RA000095
#> 95  RA000096
#> 96  RA000097
#> 97  RA000098
#> 98  RA000099
#> 99  RA000100
#> 100 RA000101
#> 101 RA000102
#> 102 RA000103
#> 103 RA000104
#> 104 RA000105
#> 105 RA000106
#> 106 RA000107
#> 107 RA000108
#> 108 RA000109
#> 109 RA000110
#> 110 RA000111
#> 111 RA000112
#> 112 RA000113
#> 113 RA000114
#> 114 RA000115
#> 115 RA000116
#> 116 RA000117
#> 117 RA000118
#> 118 RA000119
#> 119 RA000120
#> 120 RA000121
#> 121 RA000122
#> 122 RA000123
#> 123 RA000124
#> 124 RA000125
#> 125 RA000126
#> 126 RA000127
#> 127 RA000128
#> 128 RA000129
#> 129 RA000130
#> 130 RA000131
#> 131 RA000132
#> 132 RA000133
#> 133 RA000134
#> 134 RA000135
#> 135 RA000136
#> 136 RA000137
#> 137 RA000138
#> 138 RA000139
#> 139 RA000140
#> 140 RA000141
#> 141 RA000142
#> 142 RA000143
#> 143 RA000144
#> 144 RA000145
#> 145 RA000146
#> 146 RA000147
#> 147 RA000148
#> 148 RA000149
#> 149 RA000150
#> 150 RA000151
#> 151 RA000152
#> 152 RA000153
#> 153 RA000154
#> 154 RA000155
#> 155 RA000156
#> 156 RA000157
#> 157 RA000158
#> 158 RA000159
#> 159 RA000160
#> 160 RA000161
#> 161 RA000162
#> 162 RA000163
#> 163 RA000164
#> 164 RA000165
#> 165 RA000166
#> 166 RA000167
#> 167 RA000168
#> 168 RA000169
#> 169 RA000170
#> 170 RA000171
#> 171 RA000172
#> 172 RA000173
#> 173 RA000174
#> 174 RA000175
#> 175 RA000176
#> 176 RA000177
#> 177 RA000178
#> 178 RA000179
#> 179 RA000180
#> 180 RA000181
#> 181 RA000182
#> 182 RA000183
#> 183 RA000184
#> 184 RA000185
#> 185 RA000186
#> 186 RA000187
#> 187 RA000188
#> 188 RA000189
#> 189 RA000190
#> 190 RA000192
#> 191 RA000193
#> 192 RA000195
#> 193 RA000196
#> 194 RA000197
#> 195 RA000199
#> 196 RA000200
#> 197 RA000201
#> 198 RA000202
#> 199 RA000203
#> 200 RA000204
#>                                                                        international_name
#> 1             Afghanistan Central Business Registry (Ministry of Commerce and Industries)
#> 2                                                                                    <NA>
#> 3                                                                          Trade Register
#> 4                                                                    Register of Commerce
#> 5                                                      Central Registry of Business Names
#> 6                                                                     Commercial Registry
#> 7                                                                                    <NA>
#> 8                                                                                    <NA>
#> 9                                                                                    <NA>
#> 10                                                                                   <NA>
#> 11                                                       State Register of Legal Entities
#> 12                                                                         Trade Register
#> 13                                                           Australian Business Register
#> 14                                                                  Register of Companies
#> 15                                               Register of Financial Services Licensees
#> 16                                                    Register of Indigenous Corporations
#> 17                                                                    Commercial Register
#> 18                                                                                   <NA>
#> 19                                                  State Register of Commercial Entities
#> 20                                                                     Companies Register
#> 21                                                                Commercial Registration
#> 22                                                                     Companies Register
#> 23                                                                                   <NA>
#> 24                   United State Register of Legal Entities and Individual Entrepreneurs
#> 25                                                          Crossroad Bank of Enterprises
#> 26                                          Belize Companies & Corporate Affairs Registry
#> 27                                                                                   <NA>
#> 28                                                                     Companies Register
#> 29                                                                                   <NA>
#> 30                                                                       Company Registry
#> 31                                                                         Trade Register
#> 32                                                                         Trade Register
#> 33                               Registers of Business Entities in Bosnia and Herzegovina
#> 34                                                                  Register of Companies
#> 35                                                                                   <NA>
#> 36                                                                                   <NA>
#> 37                                                                                   <NA>
#> 38                                                                                   <NA>
#> 39                                                                                   <NA>
#> 40                                                                                   <NA>
#> 41                                                                                   <NA>
#> 42                                                                                   <NA>
#> 43                                                                                   <NA>
#> 44                                                                                   <NA>
#> 45                                                                                   <NA>
#> 46                                                                                   <NA>
#> 47                                                                                   <NA>
#> 48                                                                                   <NA>
#> 49                                                                                   <NA>
#> 50                                                                                   <NA>
#> 51                                                                                   <NA>
#> 52                                                                                   <NA>
#> 53                                                                                   <NA>
#> 54                                                                                   <NA>
#> 55                                                                                   <NA>
#> 56                                                                                   <NA>
#> 57                                                                                   <NA>
#> 58                                                                                   <NA>
#> 59                                                                                   <NA>
#> 60                                                                                   <NA>
#> 61                                                                                   <NA>
#> 62                                                                  Register of Companies
#> 63                                               Registry of Companies and Business Names
#> 64                                                                    Commercial Register
#> 65                                                     Public register and filing cabinet
#> 66                                                                                   <NA>
#> 67                                                                    Commercial Registry
#> 68                                                         Cabo Verde Commercial Registry
#> 69                                                                    Commercial Register
#> 70                                Planning and Regional Development (Ministry of Economy)
#> 71                                                                     Corporate Registry
#> 72                                               Corporate Registry (Province of Alberta)
#> 73                                      Corporate Registry (Province of British Columbia)
#> 74                                                                     Companies Registry
#> 75                                         Corporate Registry (Province of New Brunswick)
#> 76                          Registry of Companies (Province of Newfoundland and Labrador)
#> 77                            Registry of Joint Stock Companies (Province of Nova Scotia)
#> 78                                               Corporate Registry (Province of Ontario)
#> 79                                 Prince Edward Island Corporate/Business Names Registry
#> 80                                                  Enterprise Register (Services Quebec)
#> 81                                                        Saskatchewan Corporate Registry
#> 82                                             Corporate Registry (Department of Justice)
#> 83                                             Corporate Registry (Department of Justice)
#> 84                                                                     Corporate Registry
#> 85                                                                  Registry of Companies
#> 86                                                                                   <NA>
#> 87                                                         Commercial Registry (Tribunal)
#> 88                                                   Registry of Commerce and Real Estate
#> 89                                                                   Registry of Commerce
#> 90                                                                                   <NA>
#> 91                                National Enterprise Credit Information Publicity System
#> 92                                                               Single Business Register
#> 93  Business register, the single bidders register, the non-profit organizations register
#> 94  Business register, the single bidders register, the non-profit organizations register
#> 95  Business register, the single bidders register, the non-profit organizations register
#> 96  Business register, the single bidders register, the non-profit organizations register
#> 97  Business register, the single bidders register, the non-profit organizations register
#> 98  Business register, the single bidders register, the non-profit organizations register
#> 99  Business register, the single bidders register, the non-profit organizations register
#> 100 Business register, the single bidders register, the non-profit organizations register
#> 101 Business register, the single bidders register, the non-profit organizations register
#> 102 Business register, the single bidders register, the non-profit organizations register
#> 103 Business register, the single bidders register, the non-profit organizations register
#> 104 Business register, the single bidders register, the non-profit organizations register
#> 105 Business register, the single bidders register, the non-profit organizations register
#> 106 Business register, the single bidders register, the non-profit organizations register
#> 107 Business register, the single bidders register, the non-profit organizations register
#> 108 Business register, the single bidders register, the non-profit organizations register
#> 109 Business register, the single bidders register, the non-profit organizations register
#> 110 Business register, the single bidders register, the non-profit organizations register
#> 111 Business register, the single bidders register, the non-profit organizations register
#> 112 Business register, the single bidders register, the non-profit organizations register
#> 113 Business register, the single bidders register, the non-profit organizations register
#> 114 Business register, the single bidders register, the non-profit organizations register
#> 115 Business register, the single bidders register, the non-profit organizations register
#> 116 Business register, the single bidders register, the non-profit organizations register
#> 117 Business register, the single bidders register, the non-profit organizations register
#> 118 Business register, the single bidders register, the non-profit organizations register
#> 119 Business register, the single bidders register, the non-profit organizations register
#> 120 Business register, the single bidders register, the non-profit organizations register
#> 121 Business register, the single bidders register, the non-profit organizations register
#> 122 Business register, the single bidders register, the non-profit organizations register
#> 123 Business register, the single bidders register, the non-profit organizations register
#> 124 Business register, the single bidders register, the non-profit organizations register
#> 125 Business register, the single bidders register, the non-profit organizations register
#> 126 Business register, the single bidders register, the non-profit organizations register
#> 127 Business register, the single bidders register, the non-profit organizations register
#> 128 Business register, the single bidders register, the non-profit organizations register
#> 129 Business register, the single bidders register, the non-profit organizations register
#> 130 Business register, the single bidders register, the non-profit organizations register
#> 131 Business register, the single bidders register, the non-profit organizations register
#> 132 Business register, the single bidders register, the non-profit organizations register
#> 133 Business register, the single bidders register, the non-profit organizations register
#> 134 Business register, the single bidders register, the non-profit organizations register
#> 135 Business register, the single bidders register, the non-profit organizations register
#> 136 Business register, the single bidders register, the non-profit organizations register
#> 137 Business register, the single bidders register, the non-profit organizations register
#> 138 Business register, the single bidders register, the non-profit organizations register
#> 139 Business register, the single bidders register, the non-profit organizations register
#> 140 Business register, the single bidders register, the non-profit organizations register
#> 141 Business register, the single bidders register, the non-profit organizations register
#> 142 Business register, the single bidders register, the non-profit organizations register
#> 143 Business register, the single bidders register, the non-profit organizations register
#> 144 Business register, the single bidders register, the non-profit organizations register
#> 145 Business register, the single bidders register, the non-profit organizations register
#> 146 Business register, the single bidders register, the non-profit organizations register
#> 147 Business register, the single bidders register, the non-profit organizations register
#> 148 Business register, the single bidders register, the non-profit organizations register
#> 149 Business register, the single bidders register, the non-profit organizations register
#> 150                                                           Business Formalities Centre
#> 151                                                                 Registry of Companies
#> 152                                                                    Companies Register
#> 153                                                             Register of Legal Persons
#> 154                                                                                  <NA>
#> 155                                                               Croatian Court Registry
#> 156                                                                    Funds Registration
#> 157                                                                                  <NA>
#> 158                                                                                  <NA>
#> 159                                                                        Trade Register
#> 160                                                                     Companies Section
#> 161                                                                                  <NA>
#> 162                                                                   Commercial Register
#> 163                                                                      Federal Register
#> 164                                                               Register of Foundations
#> 165                                                                Register of Institutes
#> 166                                                  Register of Public Service Companies
#> 167                                                         Register of Economic Entities
#> 168                                                                     Business Registry
#> 169                                                             Central Business Register
#> 170                                                                                  <NA>
#> 171                                                                                  <NA>
#> 172                                 National Companies and Intellectual Property Registry
#> 173                                                                                  <NA>
#> 174                                                                                  <NA>
#> 175                                                       Registry of Commerce of Ecuador
#> 176                                            National Registry of Statistics and Census
#> 177                                           Superintendence of Companies and Securities
#> 178                                                                   Commercial Register
#> 179                                                                                  <NA>
#> 180                                                                   Commercial Register
#> 181                                                                                  <NA>
#> 182                                                               Commercial Registration
#> 183                                                                    Companies Register
#> 184                                                                      Company Register
#> 185                                                                    Corporate Registry
#> 186                                                 Companies and Business Names Registry
#> 187                                                 The Business Information System (BIS)
#> 188                                                        Register of Companies (Sirene)
#> 189                                                                                  <NA>
#> 190                                                    Register of Commerce and Companies
#> 191                                                                                  <NA>
#> 192                                                                    Companies Register
#> 193                                                                                  <NA>
#> 194                                                                   Commercial Register
#> 195                                                                   Commercial Register
#> 196                                                                   Commercial Register
#> 197                                                                   Commercial Register
#> 198                                                                   Commercial Register
#> 199                                                                   Commercial Register
#> 200                                                                   Commercial Register
#>                                                                                                                             local_name
#> 1                                                                                                                                 <NA>
#> 2                                                                                                                                 <NA>
#> 3                                                                                                                 Registre du Commerce
#> 4                                                                                                     Registre de Societats Mercantils
#> 5                                                                                             Ficheiro Central de Denominações Sociais
#> 6                                                                                                                  Commercial Registry
#> 7                                                                                                                                 <NA>
#> 8                                                                                                                                 <NA>
#> 9                                                                                                                                 <NA>
#> 10                                                                                                     Registro Nacional de Sociedades
#> 11                                         Հայաստանի Հանրապետության արդարադատության նախարարության իրավաբանական անձանց պետական ռեգիստրի
#> 12                                                                                                                     Handelsregister
#> 13                                                                                                        Australian Business Register
#> 14                                                                                                               Register of Companies
#> 15                                                                                            Register of Financial Services Licensees
#> 16                                                                                                 Register of Indigenous Corporations
#> 17                                                                                                                          Firmenbuch
#> 18                                                                                                                                <NA>
#> 19                                                                                             Kommersiya qurumlarının dövlət reyestri
#> 20                                                                                                                  Companies Register
#> 21                                                                                                                                <NA>
#> 22                                                                                                                                <NA>
#> 23                                                                                                                                <NA>
#> 24                                                    Единый государственный регистр юридических лиц и индивидуальных предпринимателей
#> 25  in Dutch: Kruispuntbank van Ondernemingen; in French: Banque-Carrefour des  Entreprises; in German: Zentrale Unternehmensdatenbank
#> 26                                                                    Las Empresas de Belice y el Registro de los Asuntos Corporativos
#> 27                                                                                                                                <NA>
#> 28                                                                                                                  Companies Register
#> 29                                                                                                                                <NA>
#> 30                                                                                                                                <NA>
#> 31                                                                                                                     Handelsregister
#> 32                                                                                                                     Handelsregister
#> 33                                                                                  Registri poslovnih subjekata u Bosni i Hercegovini
#> 34                                                                                                               Register of Companies
#> 35                                                                                                                                <NA>
#> 36                                                                                                                                <NA>
#> 37                                                                                                                                <NA>
#> 38                                                                                                                                <NA>
#> 39                                                                                                                                <NA>
#> 40                                                                                                                                <NA>
#> 41                                                                                                                                <NA>
#> 42                                                                                                                                <NA>
#> 43                                                                                                                                <NA>
#> 44                                                                                                                                <NA>
#> 45                                                                                                                                <NA>
#> 46                                                                                                                                <NA>
#> 47                                                                                                                                <NA>
#> 48                                                                                                                                <NA>
#> 49                                                                                                                                <NA>
#> 50                                                                                                                                <NA>
#> 51                                                                                                                                <NA>
#> 52                                                                                                                                <NA>
#> 53                                                                                                                                <NA>
#> 54                                                                                                                                <NA>
#> 55                                                                                                                                <NA>
#> 56                                                                                                                                <NA>
#> 57                                                                                                                                <NA>
#> 58                                                                                                                                <NA>
#> 59                                                                                                                                <NA>
#> 60                                                                                                                                <NA>
#> 61                                                                                                                                <NA>
#> 62                                                                                                               Register of Companies
#> 63                                                                                                                                <NA>
#> 64                                                                                                                  Търговски регистър
#> 65                                                                                                     Електронен регистър и картотека
#> 66                                                                                                                                <NA>
#> 67                                                                                                                                <NA>
#> 68                                                                                                                                <NA>
#> 69                                                                                                                                <NA>
#> 70                                                                                                                                <NA>
#> 71                                                                                                                  Corporate Registry
#> 72                                                                                            Corporate Registry (Province of Alberta)
#> 73                                                                                   Corporate Registry (Province of British Columbia)
#> 74                                                                                                                  Companies Registry
#> 75                                                                                      Corporate Registry (Province of New Brunswick)
#> 76                                                                       Registry of Companies (Province of Newfoundland and Labrador)
#> 77                                                                         Registry of Joint Stock Companies (Province of Nova Scotia)
#> 78                                                                                            Corporate Registry (Province of Ontario)
#> 79                                                                              Prince Edward Island Corporate/Business Names Registry
#> 80                                                                                                         Registraire des Entreprises
#> 81                                                                                                     Saskatchewan Corporate Registry
#> 82                                                                                          Corporate Registry (Department of Justice)
#> 83                                                                                          Corporate Registry (Department of Justice)
#> 84                                                                                                                  Corporate Registry
#> 85                                                                                                               Registry of Companies
#> 86                                                                                                                                <NA>
#> 87                                                                                                                                <NA>
#> 88                                                                                               Registre du Commerce et du Immobilier
#> 89                                                                                                                Registro de Comercio
#> 90                                                                                                                Registro de Comercio
#> 91                                                                                                            全国企业信用信息公示系统
#> 92                                                                                                    Registro Único Empresarial (RUE)
#> 93                                       Registro Mercantil, Registro único de proponentes y Registro de entidades sin ánimo de lucro.
#> 94                                       Registro Mercantil, Registro único de proponentes y Registro de entidades sin ánimo de lucro.
#> 95                                       Registro Mercantil, Registro único de proponentes y Registro de entidades sin ánimo de lucro.
#> 96                                       Registro Mercantil, Registro único de proponentes y Registro de entidades sin ánimo de lucro.
#> 97                                       Registro Mercantil, Registro único de proponentes y Registro de entidades sin ánimo de lucro.
#> 98                                       Registro Mercantil, Registro único de proponentes y Registro de entidades sin ánimo de lucro.
#> 99                                       Registro Mercantil, Registro único de proponentes y Registro de entidades sin ánimo de lucro.
#> 100                                      Registro Mercantil, Registro único de proponentes y Registro de entidades sin ánimo de lucro.
#> 101                                      Registro Mercantil, Registro único de proponentes y Registro de entidades sin ánimo de lucro.
#> 102                                      Registro Mercantil, Registro único de proponentes y Registro de entidades sin ánimo de lucro.
#> 103                                      Registro Mercantil, Registro único de proponentes y Registro de entidades sin ánimo de lucro.
#> 104                                      Registro Mercantil, Registro único de proponentes y Registro de entidades sin ánimo de lucro.
#> 105                                      Registro Mercantil, Registro único de proponentes y Registro de entidades sin ánimo de lucro.
#> 106                                      Registro Mercantil, Registro único de proponentes y Registro de entidades sin ánimo de lucro.
#> 107                                      Registro Mercantil, Registro único de proponentes y Registro de entidades sin ánimo de lucro.
#> 108                                      Registro Mercantil, Registro único de proponentes y Registro de entidades sin ánimo de lucro.
#> 109                                      Registro Mercantil, Registro único de proponentes y Registro de entidades sin ánimo de lucro.
#> 110                                      Registro Mercantil, Registro único de proponentes y Registro de entidades sin ánimo de lucro.
#> 111                                      Registro Mercantil, Registro único de proponentes y Registro de entidades sin ánimo de lucro.
#> 112                                      Registro Mercantil, Registro único de proponentes y Registro de entidades sin ánimo de lucro.
#> 113                                      Registro Mercantil, Registro único de proponentes y Registro de entidades sin ánimo de lucro.
#> 114                                      Registro Mercantil, Registro único de proponentes y Registro de entidades sin ánimo de lucro.
#> 115                                      Registro Mercantil, Registro único de proponentes y Registro de entidades sin ánimo de lucro.
#> 116                                      Registro Mercantil, Registro único de proponentes y Registro de entidades sin ánimo de lucro.
#> 117                                      Registro Mercantil, Registro único de proponentes y Registro de entidades sin ánimo de lucro.
#> 118                                      Registro Mercantil, Registro único de proponentes y Registro de entidades sin ánimo de lucro.
#> 119                                      Registro Mercantil, Registro único de proponentes y Registro de entidades sin ánimo de lucro.
#> 120                                      Registro Mercantil, Registro único de proponentes y Registro de entidades sin ánimo de lucro.
#> 121                                      Registro Mercantil, Registro único de proponentes y Registro de entidades sin ánimo de lucro.
#> 122                                      Registro Mercantil, Registro único de proponentes y Registro de entidades sin ánimo de lucro.
#> 123                                      Registro Mercantil, Registro único de proponentes y Registro de entidades sin ánimo de lucro.
#> 124                                      Registro Mercantil, Registro único de proponentes y Registro de entidades sin ánimo de lucro.
#> 125                                      Registro Mercantil, Registro único de proponentes y Registro de entidades sin ánimo de lucro.
#> 126                                      Registro Mercantil, Registro único de proponentes y Registro de entidades sin ánimo de lucro.
#> 127                                      Registro Mercantil, Registro único de proponentes y Registro de entidades sin ánimo de lucro.
#> 128                                      Registro Mercantil, Registro único de proponentes y Registro de entidades sin ánimo de lucro.
#> 129                                      Registro Mercantil, Registro único de proponentes y Registro de entidades sin ánimo de lucro.
#> 130                                      Registro Mercantil, Registro único de proponentes y Registro de entidades sin ánimo de lucro.
#> 131                                      Registro Mercantil, Registro único de proponentes y Registro de entidades sin ánimo de lucro.
#> 132                                      Registro Mercantil, Registro único de proponentes y Registro de entidades sin ánimo de lucro.
#> 133                                      Registro Mercantil, Registro único de proponentes y Registro de entidades sin ánimo de lucro.
#> 134                                      Registro Mercantil, Registro único de proponentes y Registro de entidades sin ánimo de lucro.
#> 135                                      Registro Mercantil, Registro único de proponentes y Registro de entidades sin ánimo de lucro.
#> 136                                      Registro Mercantil, Registro único de proponentes y Registro de entidades sin ánimo de lucro.
#> 137                                      Registro Mercantil, Registro único de proponentes y Registro de entidades sin ánimo de lucro.
#> 138                                      Registro Mercantil, Registro único de proponentes y Registro de entidades sin ánimo de lucro.
#> 139                                      Registro Mercantil, Registro único de proponentes y Registro de entidades sin ánimo de lucro.
#> 140                                      Registro Mercantil, Registro único de proponentes y Registro de entidades sin ánimo de lucro.
#> 141                                      Registro Mercantil, Registro único de proponentes y Registro de entidades sin ánimo de lucro.
#> 142                                      Registro Mercantil, Registro único de proponentes y Registro de entidades sin ánimo de lucro.
#> 143                                      Registro Mercantil, Registro único de proponentes y Registro de entidades sin ánimo de lucro.
#> 144                                      Registro Mercantil, Registro único de proponentes y Registro de entidades sin ánimo de lucro.
#> 145                                      Registro Mercantil, Registro único de proponentes y Registro de entidades sin ánimo de lucro.
#> 146                                      Registro Mercantil, Registro único de proponentes y Registro de entidades sin ánimo de lucro.
#> 147                                      Registro Mercantil, Registro único de proponentes y Registro de entidades sin ánimo de lucro.
#> 148                                      Registro Mercantil, Registro único de proponentes y Registro de entidades sin ánimo de lucro.
#> 149                                      Registro Mercantil, Registro único de proponentes y Registro de entidades sin ánimo de lucro.
#> 150                                                                                         Centre de formalités des entreprises (CFE)
#> 151                                                                                                                               <NA>
#> 152                                                                                                                 Companies Register
#> 153                                                                                                     Registro de Personas Jurídicas
#> 154                                                                                         Registre du Commerce et du Crédit Mobilier
#> 155                                                                                                                   Sudski registrar
#> 156                                                                                                                               <NA>
#> 157                                                                             Registro Estatal de Empresas y Unidades Presupuestadas
#> 158                                                                                                                 Registro Mercantil
#> 159                                                                                                                    Handelsregister
#> 160                                                                                                                               <NA>
#> 161                                                                                                                               <NA>
#> 162                                                                                                                  Obchodní rejstřík
#> 163                                                                                                                   Nadační rejstřík
#> 164                                                                                                                   Nadační rejstřík
#> 165                                                                                                                    Rejstřík ústavů
#> 166                                                                                             Rejstřík obecně prospěšných společnost
#> 167                                                                                                      Registr ekonomických subjektů
#> 168                                                                                  Registre du Commerce et du Crédit Mobilier (RCCM)
#> 169                                                                                                       Centrale Virksomhedsregister
#> 170                                                                                                                               <NA>
#> 171                                                                                                                               <NA>
#> 172                                                                              National Companies and Intellectual Property Registry
#> 173                                                                                                                               <NA>
#> 174                                                                                                                 Registro Mercantil
#> 175                                                                                                      Registro Mercantil de Ecuador
#> 176                                                                                          Registro Nacional de Estadística y Censos
#> 177                                                                                                                               <NA>
#> 178                                                                                                                               <NA>
#> 179                                                                                                               Registro de Comercio
#> 180                                                                                                                        Äriregister
#> 181                                                                                                                               <NA>
#> 182                                                                                                                               <NA>
#> 183                                                                                                                 Companies Register
#> 184                                                                                                                               <NA>
#> 185                                                                                                                               <NA>
#> 186                                                                                                                               <NA>
#> 187                                                                                           Yritys- ja yhteisötietojärjestelmä (YTJ)
#> 188                                                                                                                             Sirene
#> 189                                                                                                                               <NA>
#> 190                                                                                               Registre du Commerce et des Sociétés
#> 191                                                                                  Registre du Commerce et du Crédit Mobilier (RCCM)
#> 192                                                                                                                               <NA>
#> 193                                                                                                                               <NA>
#> 194                                                                                                                    Handelsregister
#> 195                                                                                                                    Handelsregister
#> 196                                                                                                                    Handelsregister
#> 197                                                                                                                    Handelsregister
#> 198                                                                                                                    Handelsregister
#> 199                                                                                                                    Handelsregister
#> 200                                                                                                                    Handelsregister
#>                                                                                                                                                                                website
#> 1                                                                                                                                                              http://www.acbr.gov.af/
#> 2                                                                                                                                                          http://www.qkr.gov.al/home/
#> 3                                                                                                                                           https://sidjilcom.cnrc.dz/web/cnrc/accueil
#> 4                                                                                                                                                http://www.comerc.ad/la-unitat-comerc
#> 5                                                                                                                            http://www.cidadao.gov.ao/VerPrestadorServico.aspx?id=233
#> 6                                                                                                                                                    http://www.commercialregistry.ai/
#> 7                                                                                                                                                               https://abipco.gov.ag/
#> 8                                                                                                                                                              http://www.fsrc.gov.ag/
#> 9                                                                                                                                               http://www.afip.gob.ar/sitio/externos/
#> 10                                                                                                                  https://www.argentina.gob.ar/justicia/registro-nacional-sociedades
#> 11                                                                                                                                                          https://www.e-register.am/
#> 12                                                                                                                                                        http://www.arubachamber.com/
#> 13                                                                                                                                                         http://abr.business.gov.au/
#> 14                                                                                                                                                                     www.asic.gov.au
#> 15                                                                                                                                                                     www.asic.gov.au
#> 16                                                                                                                                                             http://www.oric.gov.au/
#> 17                                                                                              https://www.justiz.gv.at/web2013/html/default/2c9484852308c2a601240b693e1c0860.de.html
#> 18                                                                                                                                                           https://www.fma.gv.at/en/
#> 19                                                                                                                                                                    www.taxes.gov.az
#> 20                                                                                                                                                                  www.bahamas.gov.bs
#> 21                                                                                                                                                        https://www.business.gov.bh/
#> 22                                                                                                                                                                      www.roc.gov.bd
#> 23                                                                                                                                              http://www.caipo.gov.bb/site/index.php
#> 24                                                                                                                                        http://egr.gov.by/egrn/index.jsp?language=en
#> 25                                                                                                                   http://kbopub.economie.fgov.be/kbopub/zoeknummerform.html?lang=en
#> 26                                                                                                                                                                   https://bccar.bz/
#> 27                                                                                                                                                            http://www.ccibenin.org/
#> 28                                                                                                                                            https://www.registrarofcompanies.gov.bm/
#> 29                                                                                                   http://www.bma.bm/investment/investment%20funds/SitePages/Authorised%20Funds.aspx
#> 30                                                                                                                                                             https://www.cra.gov.bt/
#> 31                                                                                                                                                              www.bonairechamber.com
#> 32                                                                                                                                                           www.statiasabachamber.com
#> 33                                                                                                                                                        http://bizreg.pravosudje.ba/
#> 34                                                                                                                                                             https://www.cipa.co.bw/
#> 35                                                                                                                                                                www.juceal.al.gov.br
#> 36                                                                                                                                                          http://www.jucap.ap.gov.br
#> 37                                                                                                                                 http://www.jucea.am.gov.br/pagina/links-e-servicos/
#> 38                                                                                                      http://www.certidaoonline.juceb.ba.gov.br/certidao/publico/consultanireempresa
#> 39                                                                                                                                                            http://www.ceara.gov.br/
#> 40                                                                                                                                                             http://jucis.df.gov.br/
#> 41                                                                                                                                     https://www.jucees.es.gov.br/consulta_empresas/
#> 42                                                                                                                                                         http://www.juceg.go.gov.br/
#> 43                                                                                                                                                   http://www.jucema.ma.gov.br/home/
#> 44                                                                                                                                                       http://www.jucemat.mt.gov.br/
#> 45                                                                                                                                           https://certidaodigital.jucems.ms.gov.br/
#> 46                                                                                                                                              http://www.jucemg.mg.gov.br/ibr/inicio
#> 47                                                                                                                                                        http://www.jucepa.pa.gov.br/
#> 48                                                                                                                                                         http://www.jucep.pb.gov.br/
#> 49                                                                                                   http://www.juntacomercial.pr.gov.br/modules/inscrit_quest/formulario.php?codigo=9
#> 50                                                                                                       http://www.jucepe.pe.gov.br/jucepe.asp?pag=servicos.asp&item=servicosConsulta
#> 51                                                                                                                                               http://www.jucepi.pi.gov.br/index.php
#> 52                                                                                                                                                       http://www.jucerja.rj.gov.br/
#> 53                                                                                                                                                        http://www.jucern.rn.gov.br/
#> 54                                                                                                                                             http://www.jucergs.rs.gov.br/index.asp#
#> 55                                                                                                                                                     http://rondonia.ro.gov.br/jucer
#> 56                                                                                                                                                        http://www.jucerr.rr.gov.br/
#> 57                                                                                                                                                        http://www.jucesc.sc.gov.br/
#> 58                                                                                                                                          http://www.institucional.jucesp.sp.gov.br/
#> 59                                                                                                                                                       https://www.jucese.se.gov.br/
#> 60                                                                                                                                                         https://jucetins.to.gov.br/
#> 61                                                                                                                                                          http://juceac.acre.gov.br/
#> 62                                                                                                                                    https://www.bvifsc.vg/registry-corporate-affairs
#> 63                                                                                                                                                             https://www.roc.gov.bn/
#> 64                                                                                                                                                       http://www.brra.bg/Default.ra
#> 65                                                                                                                                                               http://www.fsc.bg/en/
#> 66                                                                                                                                                                 http://www.me.bf/en
#> 67                                                                                                                                                        https://en.investburundi.bi/
#> 68                                                                                                           https://caboverde.eregulations.org/show-step.asp?mid=6&rid=13&sno=66&l=en
#> 69                                                                                                                                                        http://www.moc.gov.kh/en-us/
#> 70                                                                                                                                                         https://www.minepatgov.org/
#> 71                                                                                                                 http://www.corporationscanada.ic.gc.ca/eic/site/cd-dgc.nsf/eng/home
#> 72                                                                                                                                               http://www.servicealberta.com/731.cfm
#> 73                                                                                                                     http://www.bcregistryservices.gov.bc.ca/bcreg/corppg/index.page
#> 74                                                                                                                                               http://www.companiesoffice.gov.mb.ca/
#> 75                                                                                                                                                  http://www.snb.ca/e/6000/6600e.asp
#> 76                                                                                                                            http://www.servicenl.gov.nl.ca/registries/companies.html
#> 77                                                                                                       http://novascotia.ca/snsmr/access/business/registry-joint-stock-companies.asp
#> 78                                https://www.appmybizaccount.gov.on.ca/sodp/portal/osb/!ut/p/b0/04_Sj9CPykssy0xPLMnMz0vMAfIjCxLTU3My87Kt8ouT9Aryi0oSc_QKSpNyMpP1MvJzU_ULsh0VAfzzwt0!/
#> 79                                                                                                                                         http://www.gov.pe.ca/corporations/index.php
#> 80  https://www.registreentreprises.gouv.qc.ca/RQAnonymeGR/GR/GR03/GR03A2_19A_PIU_RechEnt_PC/PageRechSimple.aspx?T1.CodeService=S00436&Clng=F&WT.co_f=239df6a1f9ccfcd3b941438322839291
#> 81                                                                                                                             https://www.isc.ca/corporateregistry/Pages/default.aspx
#> 82                                                                                          https://www.justice.gov.nt.ca/en/divisions/legal-registries-division/corporate-registries/
#> 83                                                                                                                                  http://nunavutlegalregistries.ca/cr_index_en.shtml
#> 84                                                                                                                                      http://www.community.gov.yk.ca/corp/index.html
#> 85                                                                                                                                                          https://www.ciregistry.ky/
#> 86                                                                                                                                                                https://www.cima.ky/
#> 87                                                                                                                                                           http://www.gufebenin.org/
#> 88                                                                                                                                                                                <NA>
#> 89                                                                                                                                                 http://www.hacienda.cl/english.html
#> 90                                                                                                                                                  https://www.conservador.cl/portal/
#> 91                                                                                                                                                   http://www.gsxt.gov.cn/index.html
#> 92                                                                                                                                                            https://www.rues.org.co/
#> 93                                                                                                                                                                     www.ccas.org.co
#> 94                                                                                                                                                          www.camaraaguachica.org.co
#> 95                                                                                                                                                               www.ccamazonas.org.co
#> 96                                                                                                                                                        www.camaracomercioarauca.com
#> 97                                                                                                                                                            www.camaraarmenia.org.co
#> 98                                                                                                                                                               www.ccbarranca.org.co
#> 99                                                                                                                                                                www.camarabaq.org.co
#> 100                                                                                                                                                                     www.ccb.org.co
#> 101                                                                                                                                                              www.camaradirecta.com
#> 102                                                                                                                                                                      www.ccbun.org
#> 103                                                                                                                                                                  www.ccbuga.org.co
#> 104                                                                                                                                                                     www.ccc.org.co
#> 105                                                                                                                                                             www.cccartagena.org.co
#> 106                                                                                                                                                              www.camaracartago.org
#> 107                                                                                                                                                                  www.cccasanare.co
#> 108                                                                                                                                                                 www.cccauca.org.co
#> 109                                                                                                                                                                www.cccucuta.org.co
#> 110                                                                                                                                           https://www.camaracomerciochinchina.org/
#> 111                                                                                                                                                                  www.camado.org.co
#> 112                                                                                                                                                               www.ccduitama.org.co
#> 113                                                                                                                                                            www.ccfacatativa.org.co
#> 114                                                                                                                                                             www.ccflorencia.org.co
#> 115                                                                                                                                                                 www.ccgirardot.org
#> 116                                                                                                                                                             www.camarahonda.org.co
#> 117                                                                                                                                                                   www.ccibague.org
#> 118                                                                                                                                                               www.ccipiales.org.co
#> 119                                                                                                                                                            www.camaradorada.org.co
#> 120                                                                                                                                                              www.camaraguajira.org
#> 121                                                                                                                                                              www.ccmagangue.org.co
#> 122                                                                                                                                                          http://www.ccmmna.org.co/
#> 123                                                                                                                                                                  www.ccmpc.org.co/
#> 124                                                                                                                                                          www.camaramedellin.com.co
#> 125                                                                                                                                                              www.ccmonteria.org.co
#> 126                                                                                                                                                                    www.ccneiva.org
#> 127                                                                                                                                                                www.camaraocana.com
#> 128                                                                                                                                                                    www.ccoa.org.co
#> 129                                                                                                                                                               www.ccpalmira.org.co
#> 130                                                                                                                                                          www.camarapamplona.org.co
#> 131                                                                                                                                                                 www.ccpasto.org.co
#> 132                                                                                                                                                           www.camarapereira.org.co
#> 133                                                                                                                                                           www.camarapiedemonte.com
#> 134                                                                                                                                                              www.ccputumayo.org.co
#> 135                                                                                                                                                                     www.ccq.org.co
#> 136                                                                                                                                                                  www.camarasai.org
#> 137                                                                                                                                                           www.camarasanjose.org.co
#> 138                                                                                                                                                                    www.ccsm.org.co
#> 139                                                                                                                                                            www.camarasantarosa.org
#> 140                                                                                                                                                          www.camcciosevilla.org.co
#> 141                                                                                                                                                                www.ccsincelejo.org
#> 142                                                                                                                                                             www.camarasogamoso.org
#> 143                                                                                                                                                           www.ccsurortolima.org.co
#> 144                                                                                                                                                                www.camaratulua.org
#> 145                                                                                                                                                                   www.cctumaco.org
#> 146                                                                                                                                                          www.ccomerciotunja.org.co
#> 147                                                                                                                                                                 www.ccuraba.org.co
#> 148                                                                                                                                                            www.ccvalledupar.org.co
#> 149                                                                                                                                                                     www.ccv.org.co
#> 150                                                                                                                                                                               <NA>
#> 151                                                                                                                                                                     www.fsc.gov.ck
#> 152                                                                                                                                   https://registry.justice.gov.ck/corp/search.aspx
#> 153                                                                                                                                                         http://www.rnpdigital.com/
#> 154                                                                                                                                                      http://www.cepici.gouv.ci/en/
#> 155                                                                                                                                    https://sudreg.pravosudje.hr/registar/f?p=150:1
#> 156                                                                                                                                   https://hanfa.hr/investicijski-fondovi/registri/
#> 157                                                                                                                                                    http://www.one.cu/ryc_reeup.htm
#> 158                                                                                                                          https://www.minjus.gob.cu/es/servicios/registro-mercantil
#> 159                                                                                                                     http://www.curacao-chamber.cw/services/registry/search-company
#> 160                                                                                                         http://www.mcit.gov.cy/mcit/drcor/drcor.nsf/index_en/index_en?OpenDocument
#> 161                                                                                                                                                http://www.cysec.gov.cy/en-GB/home/
#> 162                                                                                                                                              https://or.justice.cz/ias/ui/rejstrik
#> 163                                                                                                                                              https://or.justice.cz/ias/ui/rejstrik
#> 164                                                                                                                                              https://or.justice.cz/ias/ui/rejstrik
#> 165                                                                                                                                                            https://www.justice.cz/
#> 166                                                                                                                                                            https://www.justice.cz/
#> 167                                                                                                                                        http://wwwinfo.mfcr.cz/ares/ares_es.html.en
#> 168                                                                                                                                                        http://fr.guichetunique.cd/
#> 169                                                                                                                                                https://danishbusinessauthority.dk/
#> 170                                                                                                          https://virksomhedsregister.finanstilsynet.dk/virksomhedsomraader-en.html
#> 171                                                                                                                                                                 http://www.ccd.dj/
#> 172                                                                                                                                                                    www.cipo.gov.dm
#> 173                                                                                                                                                               http://onapi.gob.do/
#> 174                                                                                                                            https://servicios.camarasantodomingo.do/consultaRm.aspx
#> 175                                                                                                                                          http://registromercantil.gob.ec/index.php
#> 176                                                                                                          http://www.ecuadorencifras.gob.ec/sistema-integrado-de-consultas-redatam/
#> 177                                                                                                                                           https://www.supercias.gob.ec/portalscvs/
#> 178                                                                                                                                                     http://en.cairochamber.org.eg/
#> 179                                                                                                                                        http://www.cnr.gob.sv/registro-de-comercio/
#> 180                                                                                                                                       https://ariregister.rik.ee/index.py?lang=eng
#> 181                                                                                                                                                  http://www.fi.ee/index.php?id=769
#> 182                                                                                                                                        http://www.mot.gov.et/business-registration
#> 183                                                                                                                                             https://www.falklands.gov.fk/registry/
#> 184                                                                                                                            http://www.skraseting.fo/en/companies/search-companies/
#> 185                                                                                                                                                        https://www.roc.doj.gov.fm/
#> 186                                                                                                                                      https://mobile.digital.gov.fj/EServices/Index
#> 187                                                                                                                                          http://www.prh.fi/en/kaupparekisteri.html
#> 188                                                                                                                            http://sirene.fr/sirene/public/accueil?sirene_locale=en
#> 189                                           http://www.amf-france.org/en_US/Recherche-avancee.html?isSearch=true&LANGUAGE=en&subFormId=dij&formId=GECO&DOC_TYPE=BDIF&langSwitch=true
#> 190                                                                                                                                                                 www.infogreffe.com
#> 191                                                                                                                                                           http://www.cdegabon.com/
#> 192                                                                                                                                                    http://www.moj.gov.gm/companies
#> 193                                                                                                                                                                    www.napr.gov.ge
#> 194                                                                                                                                                             www.handelsregister.de
#> 195                                                                                                                                                             www.handelsregister.de
#> 196                                                                                                                                                             www.handelsregister.de
#> 197                                                                                                                                                             www.handelsregister.de
#> 198                                                                                                                                                             www.handelsregister.de
#> 199                                                                                                                                                             www.handelsregister.de
#> 200                                                                                                                                                             www.handelsregister.de
# }
```

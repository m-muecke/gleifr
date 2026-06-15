# Fetch the list of entity legal forms

Fetches the list of entity legal forms (ELF codes) recognized by the
GLEIF API. These resolve the legal form codes that appear in
[`lei_record_by_id()`](https://m-muecke.github.io/gleifr/reference/lei_record_by_id.md)
output to human-readable names.

## Usage

``` r
lei_legal_forms()
```

## Value

A [`data.frame()`](https://rdrr.io/r/base/data.frame.html) with columns:

- **code**: The entity legal form (ELF) code

- **country**: The country the legal form applies to

- **country_code**: The country code

- **status**: The status of the legal form, e.g. `"ACTV"`

- **name**: The local name of the legal form

- **language**: The language of the name

## Examples

``` r
# \donttest{
lei_legal_forms()
#>     code                                              country country_code
#> 1   09K3                                        Faroe Islands           FO
#> 2   0AWU                             United States of America           US
#> 3   0GY3                             United States of America           US
#> 4   0NYS                                            Singapore           SG
#> 5   0OCP                                             Viet Nam           VN
#> 6   0SKB                             United States of America           US
#> 7   0WOU                             United States of America           US
#> 8   106J                                              Belarus           BY
#> 9   106J                                              Belarus           BY
#> 10  10GE                             United States of America           US
#> 11  10ST                     Saint Vincent and the Grenadines           VC
#> 12  10UR                                               Canada           CA
#> 13  11GD                             United States of America           US
#> 14  12F9                                             Honduras           HN
#> 15  12KO                                  Korea (Republic of)           KR
#> 16  12MV                                        Liechtenstein           LI
#> 17  12N6                             United States of America           US
#> 18  135L                                                Italy           IT
#> 19  13AV                                              Germany           DE
#> 20  13T9                                            Lithuania           LT
#> 21  13ZV                                               Poland           PL
#> 22  149O                                      North Macedonia           MK
#> 23  14AT                                             Slovenia           SI
#> 24  14NU                                             Slovakia           SK
#> 25  14OD                             United States of America           US
#> 26  14U1                           Taiwan (Province of China)           TW
#> 27  157O                                               France           FR
#> 28  15A2                                   Russian Federation           RU
#> 29  15BP                                             Cambodia           KH
#> 30  15BP                                             Cambodia           KH
#> 31  15JS                             United States of America           US
#> 32  16GH                                               Canada           CA
#> 33  16RL                                               Canada           CA
#> 34  17FJ                                            Singapore           SG
#> 35  17R0 United Kingdom of Great Britain and Northern Ireland           GB
#> 36  17R7                                   Russian Federation           RU
#> 37  180P                                                India           IN
#> 38  189Q                                             Slovakia           SK
#> 39  194I                                          Puerto Rico           PR
#> 40  194I                                          Puerto Rico           PR
#> 41  1A0A                     Bonaire, Sint Eustatius and Saba           BQ
#> 42  1ADA                             United States of America           US
#> 43  1ADH                                               Canada           CA
#> 44  1AFG                                              Finland           FI
#> 45  1AFG                                              Finland           FI
#> 46  1ASH                             United States of America           US
#> 47  1B88                                               France           FR
#> 48  1BL5                                          Switzerland           CH
#> 49  1BL5                                          Switzerland           CH
#> 50  1BL5                                          Switzerland           CH
#> 51  1BL5                                          Switzerland           CH
#> 52  1CDX                                              Romania           RO
#> 53  1CML                                               Canada           CA
#> 54  1CSW                                             Slovakia           SK
#> 55  1CSZ                                         Sint Maarten           SX
#> 56  1CZS                             United States of America           US
#> 57  1DGT                                        Liechtenstein           LI
#> 58  1E9M                                               Canada           CA
#> 59  1EQC                                               Canada           CA
#> 60  1G26                                          Isle of Man           IM
#> 61  1G29                                                Spain           ES
#> 62  1GLU                                             Slovakia           SK
#> 63  1GNM                                               France           FR
#> 64  1GR6                             Virgin Islands (British)           VG
#> 65  1HEP                                             Slovakia           SK
#> 66  1HGD                                             Portugal           PT
#> 67  1HXP                             United States of America           US
#> 68  1IPK                                               Latvia           LV
#> 69  1IWK                                                China           CN
#> 70  1JGX                                               Canada           CA
#> 71  1JK6                                              Czechia           CZ
#> 72  1JXS                             United States of America           US
#> 73  1K73                                             Slovakia           SK
#> 74  1K9U                             United States of America           US
#> 75  1KU4                             United States of America           US
#> 76  1L24                                               France           FR
#> 77  1MBR                                               Cyprus           CY
#> 78  1MJ0                                   Russian Federation           RU
#> 79  1MQ6                                                 Peru           PE
#> 80  1MWR                                              Denmark           DK
#> 81  1NF1                                               France           FR
#> 82  1NKP                                              Estonia           EE
#> 83  1NOX                                              Austria           AT
#> 84  1ONH                             United States of America           US
#> 85  1OR3                                             Slovenia           SI
#> 86  1PAD                                             Colombia           CO
#> 87  1PWF                     Saint Vincent and the Grenadines           VC
#> 88  1Q16                                               France           FR
#> 89  1Q2B                                             Guernsey           GG
#> 90  1QMT                             United States of America           US
#> 91  1QNZ                                              Uruguay           UY
#> 92  1QU8                                                Spain           ES
#> 93  1RI9                                                Italy           IT
#> 94  1RJ2                                   Russian Federation           RU
#> 95  1RKS                                          Switzerland           CH
#> 96  1RKS                                          Switzerland           CH
#> 97  1RKS                                          Switzerland           CH
#> 98  1RKS                                          Switzerland           CH
#> 99  1RPE                                                Samoa           WS
#> 100 1S9L                             United States of America           US
#> 101 1SL4                                                Spain           ES
#> 102 1SOY                                        Liechtenstein           LI
#> 103 1SVL                                              Curaçao           CW
#> 104 1T06                                              Curaçao           CW
#> 105 1T9S                             United States of America           US
#> 106 1TG4                                          Puerto Rico           PR
#> 107 1TG4                                          Puerto Rico           PR
#> 108 1TN0                                               Sweden           SE
#> 109 1TON                                                Italy           IT
#> 110 1TX8                                              Belgium           BE
#> 111 1TX8                                              Belgium           BE
#> 112 1TX8                                              Belgium           BE
#> 113 1U7Y                                   Russian Federation           RU
#> 114 1V0I                             United States of America           US
#> 115 1VTA                                               Canada           CA
#> 116 1W62 United Kingdom of Great Britain and Northern Ireland           GB
#> 117 1W6I                                              Bahamas           BS
#> 118 1W8B                                             Slovakia           SK
#> 119 1WZP                             United States of America           US
#> 120 1XME                             United States of America           US
#> 121 1XOG                             United States of America           US
#> 122 1Y0C                                               France           FR
#> 123 1YA4                             United States of America           US
#> 124 1YIR                                              Finland           FI
#> 125 1YIR                                              Finland           FI
#> 126 1ZHJ                                                Spain           ES
#> 127 211B                                               France           FR
#> 128 21F4                                               Jersey           JE
#> 129 21OE                             United States of America           US
#> 130 22EO                             United States of America           US
#> 131 22SC                             United States of America           US
#> 132 233U                                               Cyprus           CY
#> 133 23Q4                             United States of America           US
#> 134 23V9                                               Canada           CA
#> 135 23XJ                                               Mexico           MX
#> 136 24EG                                              Croatia           HR
#> 137 24TU                                   Russian Federation           RU
#> 138 254M                                            Hong Kong           HK
#> 139 254M                                            Hong Kong           HK
#> 140 274G                                              Croatia           HR
#> 141 27AW                                               Sweden           SE
#> 142 27WJ                                               Canada           CA
#> 143 28FE                                              Belgium           BE
#> 144 28FE                                              Belgium           BE
#> 145 28FE                                              Belgium           BE
#> 146 28RA                                              Croatia           HR
#> 147 29FA                                               France           FR
#> 148 29OB                                Saint Kitts and Nevis           KN
#> 149 2A44                                              Hungary           HU
#> 150 2AUN                                             Guernsey           GG
#> 151 2B81                                          Switzerland           CH
#> 152 2B81                                          Switzerland           CH
#> 153 2B81                                          Switzerland           CH
#> 154 2B81                                          Switzerland           CH
#> 155 2CC3                                         Sint Maarten           SX
#> 156 2CTG                                             Slovenia           SI
#> 157 2DGO                                    Brunei Darussalam           BN
#> 158 2DK3                                              Czechia           CZ
#> 159 2DVA                                                India           IN
#> 160 2DY1                                              Türkiye           TR
#> 161 2EEG                                             Slovakia           SK
#> 162 2EPF                             United States of America           US
#> 163 2F0A                                Saint Kitts and Nevis           KN
#> 164 2FED                                              Croatia           HR
#> 165 2FHC                                               Canada           CA
#> 166 2GEJ                                                Niger           NE
#> 167 2GV9                                              Ireland           IE
#> 168 2H36                                   Russian Federation           RU
#> 169 2HBR                                              Germany           DE
#> 170 2HC6                                                Italy           IT
#> 171 2I4P                             United States of America           US
#> 172 2IGL                                           Luxembourg           LU
#> 173 2J66                                              Curaçao           CW
#> 174 2J7Z                                                Italy           IT
#> 175 2JB4                             United States of America           US
#> 176 2JEI                                           Luxembourg           LU
#> 177 2JZ4                                          Switzerland           CH
#> 178 2JZ4                                          Switzerland           CH
#> 179 2JZ4                                          Switzerland           CH
#> 180 2JZ4                                          Switzerland           CH
#> 181 2KMA                                             Slovakia           SK
#> 182 2L5O                                                Niger           NE
#> 183 2LB5                                              Hungary           HU
#> 184 2LNV                                               Mexico           MX
#> 185 2M6Y                                                China           CN
#> 186 2MAO                                              Bahrain           BH
#> 187 2N4L                                               France           FR
#> 188 2N9X                                              Czechia           CZ
#> 189 2NAI                                               Mexico           MX
#> 190 2NL6                                               France           FR
#> 191 2NRQ                                                Japan           JP
#> 192 2ODA                                               Canada           CA
#> 193 2OJP                                              Iceland           IS
#> 194 2ONM                                               France           FR
#> 195 2OTW                                   Russian Federation           RU
#> 196 2PHU                                            Singapore           SG
#> 197 2PRK                                              Armenia           AM
#> 198 2QMJ                                            Hong Kong           HK
#> 199 2QSA                                              Belgium           BE
#> 200 2QSA                                              Belgium           BE
#> 201 2QSA                                              Belgium           BE
#> 202 2R1N                             United States of America           US
#> 203 2R46                                   Russian Federation           RU
#> 204 2R82                                               Jordan           JO
#> 205 2RK5                                              Finland           FI
#> 206 2RK5                                              Finland           FI
#> 207 2RVP                                               Mexico           MX
#> 208 2S2U                                           Luxembourg           LU
#> 209 2SPI                                             Malaysia           MY
#> 210 2SZI                                                Italy           IT
#> 211 2T7B                                             Barbados           BB
#> 212 2U3G                                               Canada           CA
#> 213 2UAX                                               Sweden           SE
#> 214 2UBX                                         Sint Maarten           SX
#> 215 2UZP                                                Chile           CL
#> 216 2W1A                                                Spain           ES
#> 217 2WCH                             United States of America           US
#> 218 2WFG                                          Switzerland           CH
#> 219 2WFG                                          Switzerland           CH
#> 220 2WFG                                          Switzerland           CH
#> 221 2WFG                                          Switzerland           CH
#> 222 2WJZ                             United States of America           US
#> 223 2WMP                                               France           FR
#> 224 2XIK                                               France           FR
#> 225 2XJA                                          Switzerland           CH
#> 226 2XJA                                          Switzerland           CH
#> 227 2XJA                                          Switzerland           CH
#> 228 2XJA                                          Switzerland           CH
#> 229 2XNE                                             Slovakia           SK
#> 230 2XXG                             United States of America           US
#> 231 2XXH                                                Italy           IT
#> 232 2Y95                                                India           IN
#>     status
#> 1     ACTV
#> 2     ACTV
#> 3     ACTV
#> 4     ACTV
#> 5     ACTV
#> 6     ACTV
#> 7     ACTV
#> 8     ACTV
#> 9     ACTV
#> 10    ACTV
#> 11    ACTV
#> 12    ACTV
#> 13    ACTV
#> 14    ACTV
#> 15    ACTV
#> 16    ACTV
#> 17    ACTV
#> 18    INAC
#> 19    ACTV
#> 20    ACTV
#> 21    ACTV
#> 22    ACTV
#> 23    ACTV
#> 24    ACTV
#> 25    ACTV
#> 26    ACTV
#> 27    ACTV
#> 28    ACTV
#> 29    ACTV
#> 30    ACTV
#> 31    ACTV
#> 32    ACTV
#> 33    ACTV
#> 34    ACTV
#> 35    ACTV
#> 36    ACTV
#> 37    ACTV
#> 38    ACTV
#> 39    INAC
#> 40    INAC
#> 41    ACTV
#> 42    ACTV
#> 43    ACTV
#> 44    ACTV
#> 45    ACTV
#> 46    ACTV
#> 47    ACTV
#> 48    INAC
#> 49    INAC
#> 50    INAC
#> 51    INAC
#> 52    ACTV
#> 53    ACTV
#> 54    ACTV
#> 55    ACTV
#> 56    ACTV
#> 57    ACTV
#> 58    ACTV
#> 59    ACTV
#> 60    ACTV
#> 61    ACTV
#> 62    ACTV
#> 63    ACTV
#> 64    ACTV
#> 65    ACTV
#> 66    ACTV
#> 67    ACTV
#> 68    ACTV
#> 69    ACTV
#> 70    ACTV
#> 71    ACTV
#> 72    ACTV
#> 73    ACTV
#> 74    ACTV
#> 75    ACTV
#> 76    ACTV
#> 77    INAC
#> 78    ACTV
#> 79    ACTV
#> 80    ACTV
#> 81    ACTV
#> 82    ACTV
#> 83    ACTV
#> 84    ACTV
#> 85    ACTV
#> 86    ACTV
#> 87    ACTV
#> 88    ACTV
#> 89    ACTV
#> 90    ACTV
#> 91    ACTV
#> 92    ACTV
#> 93    ACTV
#> 94    ACTV
#> 95    INAC
#> 96    INAC
#> 97    INAC
#> 98    INAC
#> 99    ACTV
#> 100   ACTV
#> 101   ACTV
#> 102   ACTV
#> 103   ACTV
#> 104   ACTV
#> 105   ACTV
#> 106   ACTV
#> 107   ACTV
#> 108   ACTV
#> 109   ACTV
#> 110   ACTV
#> 111   ACTV
#> 112   ACTV
#> 113   ACTV
#> 114   ACTV
#> 115   ACTV
#> 116   INAC
#> 117   ACTV
#> 118   ACTV
#> 119   ACTV
#> 120   ACTV
#> 121   ACTV
#> 122   ACTV
#> 123   ACTV
#> 124   ACTV
#> 125   ACTV
#> 126   ACTV
#> 127   ACTV
#> 128   ACTV
#> 129   ACTV
#> 130   ACTV
#> 131   ACTV
#> 132   ACTV
#> 133   ACTV
#> 134   ACTV
#> 135   ACTV
#> 136   ACTV
#> 137   ACTV
#> 138   ACTV
#> 139   ACTV
#> 140   ACTV
#> 141   ACTV
#> 142   ACTV
#> 143   ACTV
#> 144   ACTV
#> 145   ACTV
#> 146   ACTV
#> 147   ACTV
#> 148   ACTV
#> 149   ACTV
#> 150   ACTV
#> 151   ACTV
#> 152   ACTV
#> 153   ACTV
#> 154   ACTV
#> 155   ACTV
#> 156   ACTV
#> 157   ACTV
#> 158   ACTV
#> 159   ACTV
#> 160   ACTV
#> 161   ACTV
#> 162   ACTV
#> 163   ACTV
#> 164   ACTV
#> 165   ACTV
#> 166   ACTV
#> 167   ACTV
#> 168   ACTV
#> 169   ACTV
#> 170   ACTV
#> 171   ACTV
#> 172   ACTV
#> 173   ACTV
#> 174   ACTV
#> 175   ACTV
#> 176   ACTV
#> 177   ACTV
#> 178   ACTV
#> 179   ACTV
#> 180   ACTV
#> 181   ACTV
#> 182   ACTV
#> 183   ACTV
#> 184   ACTV
#> 185   ACTV
#> 186   ACTV
#> 187   ACTV
#> 188   ACTV
#> 189   ACTV
#> 190   INAC
#> 191   ACTV
#> 192   ACTV
#> 193   ACTV
#> 194   ACTV
#> 195   ACTV
#> 196   INAC
#> 197   ACTV
#> 198   ACTV
#> 199   ACTV
#> 200   ACTV
#> 201   ACTV
#> 202   ACTV
#> 203   ACTV
#> 204   ACTV
#> 205   ACTV
#> 206   ACTV
#> 207   ACTV
#> 208   ACTV
#> 209   ACTV
#> 210   ACTV
#> 211   ACTV
#> 212   ACTV
#> 213   ACTV
#> 214   ACTV
#> 215   ACTV
#> 216   ACTV
#> 217   ACTV
#> 218   INAC
#> 219   INAC
#> 220   INAC
#> 221   INAC
#> 222   ACTV
#> 223   ACTV
#> 224   ACTV
#> 225   ACTV
#> 226   ACTV
#> 227   ACTV
#> 228   ACTV
#> 229   ACTV
#> 230   ACTV
#> 231   ACTV
#> 232   ACTV
#>                                                                                                                         name
#> 1                                                                                                  Samstarvsfelag við ábyrgd
#> 2                                                                                                               credit union
#> 3                                                                                                               credit union
#> 4                                                                                                                Partnership
#> 5                                                                                                công ty trách nhiệm hữu hạn
#> 6                                                                                                               credit union
#> 7                                                                                                               credit union
#> 8                                                                                            Закрытае акцыянернае таварыства
#> 9                                                                                              Закрытое акционерное общество
#> 10                                                                                                              credit union
#> 11                                                                                                               association
#> 12                                                                                                       Syndicat coopératif
#> 13                                                                                                     Nonprofit Corporation
#> 14                                                                                            Sociedades de Capital Variable
#> 15                                                                                                               회사형 펀드
#> 16                                                                                               Kommanditaktiengesellschaft
#> 17                                                                                      Unincorporated Nonprofit Association
#> 18                                                                         Società Costituita In Base A Leggi Di Altro Stato
#> 19                                                                                   Versicherungsverein auf Gegenseitigkeit
#> 20                                                                                                         Europos bendrovės
#> 21                                                                            samodzielny publiczny zakład opieki zdrowotnej
#> 22                                                                                               Командитно друштво со акции
#> 23                                                                                                            Javna agencija
#> 24                                                                                      Rozpočtové a príspevkové organizácie
#> 25                                                                                                              credit union
#> 26                                                                                                                  兩合公司
#> 27                                                                 Régie d'une collectivité locale à caractère administratif
#> 28                                                            Объединения (ассоциации и союзы) благотворительных организаций
#> 29                                                                                                   Private Limited Company
#> 30                                                                                                  ក្រុមហ៊ុនឯកជនទទួលខុសត្រូវមានកម្រិត
#> 31                                                                                                       Limited Partnership
#> 32                                                       Personne morale sans but lucratif par Loi sur les cercles agricoles
#> 33                                    Personne morale sans but lucratif par Loi sur la mise en marché des produits agricoles
#> 34                                                                                                       Limited Partnership
#> 35                                                                                                Community Interest Company
#> 36                                                                                  Общества с ограниченной ответственностью
#> 37                                                                                                Stand Alone Primary Dealer
#> 38                                                                                   Špecializovaná organizačná jednotka ČSD
#> 39                                                                                                  Professional Corporation
#> 40                                                                         Corporación Especial para el Desarrollo Municipal
#> 41                                                                                                     Besloten vennootschap
#> 42                                                                                                      Family Trust Company
#> 43                                                              Extra-Territorial Corporation(for profit and not-for-profit)
#> 44                                                                                                                 Muu yhtiö
#> 45                                                                                                               Annat bolag
#> 46                                                                                                    Religious corporations
#> 47                                                                                                           SCP de médecins
#> 48                                  Swiss branch of an enterprise domiciled abroad not registered in the commercial register
#> 49                           Succursale suisse d'une entreprise domiciliée à l'étranger non inscrite au registre de commerce
#> 50                                                           Ausländische Niederlassung nicht im Handelsregister eingetragen
#> 51                           Succursali svizzere di una impresa domiciliata all'estero non iscritta al registro di commercio
#> 52                                                                                                       Societate europeană
#> 53                                                                                                       Sole proprietorship
#> 54                                                                                                             Obecný podnik
#> 55                                                                                                                vereniging
#> 56                                                                                                       General Partnership
#> 57                                                                                                           Treuunternehmen
#> 58                                                                                                       Limited Partnership
#> 59                                                                                            trade name/sole proprietorship
#> 60                                                     Public Limited by Guarantee and not having a Share Capital (1931 Act)
#> 61                                                Sociedad Limitada Laboral (o Sociedad de Responsabilidad Limitada laboral)
#> 62                                                                                     Jednotka železničného správneho úradu
#> 63                                                                                                      Syndicat de salariés
#> 64                                                                                                               Partnership
#> 65                                                                                                    Rozpočtová organizácia
#> 66                                                                                                               Cooperativa
#> 67                                                                                             Limited Liability Partnership
#> 68                                                                                                        Komandītsabiedrība
#> 69                                                                                                          外国常驻新闻机构
#> 70                                                                                                       Limited Partnership
#> 71                                                                                            Svépomocné zemědělské družstvo
#> 72                                                                                                              Savings Bank
#> 73                                                                Zahraničná osoba, právnická osoba so sídlom mimo územia SR
#> 74                                                                                                    Non-Profit Corporation
#> 75                                                                                                              credit union
#> 76                                                                                                      Autre société civile
#> 77                                                                                                         Άλλη νομική μορφή
#> 78                                                                                       Крестьянские (фермерские) хозяйства
#> 79                                                                                        Sociedad en Comandita por Acciones
#> 80                                                                                                                      Fond
#> 81                                                                                   SA nationale à conseil d'administration
#> 82                                                                                                                Sihtasutus
#> 83                                                                                                    Sonstiger Rechtsträger
#> 84                                                                                               Public Benefit Corporations
#> 85                                                                                                           delniška družba
#> 86                                                                                                       Empresa Unipersonal
#> 87                                                                                                            public company
#> 88                                                                           Société créée de fait entre personnes physiques
#> 89                                                                                              company limited by guarantee
#> 90                                                                                                      Business Corporation
#> 91                                                                                                                 Fundacion
#> 92                                                                                                      Sociedad Cooperativa
#> 93                                                                                Ente Ecclesiastico Civilmente Riconosciuto
#> 94                                                                                     Автономные некоммерческие организации
#> 95                                                                              Foreign public administration (e.g. embassy)
#> 96                                                                         Administration publique étrangère (ex. Ambassade)
#> 97                                                                                       Ausländische öffentliche Verwaltung
#> 98                                                                          Amministrazione pubblica estera (ex. ambasciata)
#> 99                                                                                                          Charitable trust
#> 100                                                                            Professional Series Limited Liability Company
#> 101                                                                                                    Empresario Individual
#> 102                                                                                               Europäische Genossenschaft
#> 103                                                                                                      Stille vennootschap
#> 104                                                                                                                Stichting
#> 105                                                                                                          Commercial Bank
#> 106                                                                                                           Low Profit LLC
#> 107                                                                      Compañía de Responsabilidad Limitada con Fin Social
#> 108                                                                         Ideell förening (som bedriver näringsverksamhet)
#> 109                                                                                                             Associazione
#> 110                                                           Commanditaire vennootschap op aandelen met een sociaal oogmerk
#> 111                                                                     Société en commandite par actions à finalité sociale
#> 112                                                                Kommanditgesellschaft auf Aktien mit sozialer Zielsetzung
#> 113                                                                                             Благотворительные учреждения
#> 114                                                                                             Domestic Benefit Corporation
#> 115                                            Personne morale sans but lucratif par Loi sur les évêques catholiques romains
#> 116                                                                                                          Oversea Company
#> 117                                                                                            Limited Liability Partnership
#> 118                                                                                                         Zahraničná osoba
#> 119                                                                                                      Limited Partnership
#> 120                                                                                          Housing Cooperative Corporation
#> 121                                                                                       Agricultural Marketing Association
#> 122                                                                                                       SARL d'attribution
#> 123                                                                                                     Statutory Foundation
#> 124                                                                                                      Metsänhoitoyhdistys
#> 125                                                                                                       Skogsvårdsförening
#> 126                                                Sociedad Colectiva Profesional (o Sociedad regular colectiva profesional)
#> 127                                                                                             Société coopérative agricole
#> 128                                                                                            Separate Limited Partnerships
#> 129                                                                                            Limited Liability Partnership
#> 130                                                                                                             credit union
#> 131                                                                                             Savings and Loan Association
#> 132                                                                                                            Συνεταιρισμός
#> 133                                                                                                Non-deposit Trust Company
#> 134                                                                                                      Limited partnership
#> 135                                                 Sociedad anónima de capital variable, sociedad de información crediticia
#> 136                                                                                                           Kreditna unija
#> 137                                                                              Союзы (ассоциации) общественных объединений
#> 138                                                                                                         私人股份有限公司
#> 139                                                                                        Private company limited by shares
#> 140                                                                                                                   Udruga
#> 141                                                                                                          offentlig enhet
#> 142                                                        Personne morale sans but lucratif par Loi sur les cités et villes
#> 143                                                                                                Coöperatieve vennootschap
#> 144                                                                                                      Société coopérative
#> 145                                                                                                           Genossenschaft
#> 146                                                                                                                     Fond
#> 147                                                                                    Institution interrégionale ou entente
#> 148                                                                                                               foundation
#> 149                                                                                                               Egyéni cég
#> 150                                                                                                        incorporated cell
#> 151                                                                                                       Simple partnership
#> 152                                                                                                           Société simple
#> 153                                                                                                    Einfache Gesellschaft
#> 154                                                                                                         Sociéta semplice
#> 155                                                                                                    besloten vennootschap
#> 156                                                                                                                  zadruga
#> 157                                                                                                           Public Company
#> 158                                                                        Podnik nebo hospodářské zařízení politické strany
#> 159                                                                                                      Cooperative Society
#> 160                                                                                                      kamu tüzel kişiliği
#> 161                                                                                                       Akciová spoločnosť
#> 162                                                                                                             Savings Bank
#> 163                                                                                                limited liability company
#> 164                                                                                          Gospodarsko interesno udruženje
#> 165                                                                                                             partnerships
#> 166                                                                                         Société à Responsabilité Limitée
#> 167                                                                                Irish Collective Asset-management Vehicle
#> 168                                                                                          Союзы (ассоциации) кооперативов
#> 169                                                                                    Gesellschaft mit beschränkter Haftung
#> 170                                                                                                 pubblica amministrazione
#> 171                                                                                                       Profit Corporation
#> 172                                                                                                  Entreprise individuelle
#> 173                                                                                              Stichting Particulier Fonds
#> 174                                                                                           Consorzio con attività Esterna
#> 175                                                                                                             Savings Bank
#> 176                                                                                            Association sans but lucratif
#> 177                                                                                                               Foundation
#> 178                                                                                                                Fondation
#> 179                                                                                                                 Stiftung
#> 180                                                                                                               Fondazione
#> 181                                                                                              Štátny podnik v oddieli Pšn
#> 182                                                                                          Groupement d'intérêt économique
#> 183                                                                          Munkavállalói Résztulajdonosi Program szervezet
#> 184                                                             Sociedad anónima de capital variable, institución de seguros
#> 185                                                                                                                   基金会
#> 186                                                                                                   الشركة غير هادفة للربح
#> 187                                                                                        (Autre) Collectivité territoriale
#> 188                                                                                              Česká konsolidační agentura
#> 189                                                                                                                Comunidad
#> 190                                                                      État, collectivité ou établissement public étranger
#> 191                                                                                                             地方公共団体
#> 192                                        Personne morale sans but lucratif par Loi sur les sociétés agricoles et laitières
#> 193                                                                                                        Samlagshlutafélag
#> 194                                                                                            SA d'attribution à directoire
#> 195                                                                                      Муниципальные автономные учреждения
#> 196                                                                                                                 Business
#> 197                                                                                                 Լիակատար ընկերակցություն
#> 198                                                                                                                    Trust
#> 199                                         Coöperatieve vennootschap met beperkte aansprakelijkheid met een sociaal oogmerk
#> 200                                                          Société coopérative à responsabilité limitée à finalité sociale
#> 201                                                         Genossenschaft mit beschränkter Haftung mit sozialer Zielsetzung
#> 202                                                                                             Savings and Loan Association
#> 203                                                                                         Товарищества собственников жилья
#> 204                                                                                                   شركة رأس المال المغامر
#> 205                                                                                                                    Kunta
#> 206                                                                                                                   Kommun
#> 207 Sociedad anónima promotora de inversión de capital variable, sociedad financiera de objeto múltiple, entidad no regulada
#> 208                                                                                            Association d'épargne pension
#> 209                                                                                       Labuan Islamic Limited Partnership
#> 210                                                                                                             Ente Sociale
#> 211                                                                                        society with restricted liability
#> 212                                                                        Société en nom collectif à responsabilité limitée
#> 213                                                                             Trossamfund (som bedriver näringsverksamhet)
#> 214                                                                                   commanditaire vennootschap op aandelen
#> 215                                                                                                 Sociedad Colectiva Civil
#> 216                                                                                                           Sociedad Civil
#> 217                                                                                                             savings bank
#> 218                                                                                                   Foreign public company
#> 219                                                                                            Entreprise publique étrangère
#> 220                                                                                   Ausländisches öffentliches Unternehmen
#> 221                                                                                                  Impresa pubblica estera
#> 222                                                                                                  Cooperative Association
#> 223                                                                             Autre personne morale de droit administratif
#> 224                                                                                                                 Mutuelle
#> 225                                                                                                   Federal administration
#> 226                                                                                       Administration de la Confédération
#> 227                                                                                                    Verwaltung des Bundes
#> 228                                                                                     Amministrazione della Confederazione
#> 229                                                                                                          Komoditná burza
#> 230                                                                                                    Nonprofit Corporation
#> 231                                                                                                         Società Semplice
#> 232                                                                                        Special Purpose Vehicle - Company
#>       language
#> 1      Faroese
#> 2      English
#> 3      English
#> 4      English
#> 5   Vietnamese
#> 6      English
#> 7      English
#> 8   Belarusian
#> 9      Russian
#> 10     English
#> 11     English
#> 12      French
#> 13     English
#> 14     Spanish
#> 15      Korean
#> 16      German
#> 17     English
#> 18     Italian
#> 19      German
#> 20  Lithuanian
#> 21      Polish
#> 22  Macedonian
#> 23     Slovene
#> 24      Slovak
#> 25     English
#> 26     Chinese
#> 27      French
#> 28     Russian
#> 29     English
#> 30       Khmer
#> 31     English
#> 32      French
#> 33      French
#> 34     English
#> 35     English
#> 36     Russian
#> 37     English
#> 38      Slovak
#> 39     English
#> 40     Spanish
#> 41       Dutch
#> 42     English
#> 43     English
#> 44     Finnish
#> 45     Swedish
#> 46     English
#> 47      French
#> 48     English
#> 49      French
#> 50      German
#> 51     Italian
#> 52    Romanian
#> 53     English
#> 54      Slovak
#> 55       Dutch
#> 56     English
#> 57      German
#> 58     English
#> 59     English
#> 60     English
#> 61     Spanish
#> 62      Slovak
#> 63      French
#> 64     English
#> 65      Slovak
#> 66  Portuguese
#> 67     English
#> 68     Latvian
#> 69     Chinese
#> 70     English
#> 71       Czech
#> 72     English
#> 73      Slovak
#> 74     English
#> 75     English
#> 76      French
#> 77       Greek
#> 78     Russian
#> 79     Spanish
#> 80      Danish
#> 81      French
#> 82    Estonian
#> 83      German
#> 84     English
#> 85     Slovene
#> 86     Spanish
#> 87     English
#> 88      French
#> 89     English
#> 90     English
#> 91     Spanish
#> 92     Spanish
#> 93     Italian
#> 94     Russian
#> 95     English
#> 96      French
#> 97      German
#> 98     Italian
#> 99     English
#> 100    English
#> 101    Spanish
#> 102     German
#> 103      Dutch
#> 104      Dutch
#> 105    English
#> 106    English
#> 107    Spanish
#> 108    Swedish
#> 109    Italian
#> 110      Dutch
#> 111     French
#> 112     German
#> 113    Russian
#> 114    English
#> 115     French
#> 116    English
#> 117    English
#> 118     Slovak
#> 119    English
#> 120    English
#> 121    English
#> 122     French
#> 123    English
#> 124    Finnish
#> 125    Swedish
#> 126    Spanish
#> 127     French
#> 128    English
#> 129    English
#> 130    English
#> 131    English
#> 132      Greek
#> 133    English
#> 134    English
#> 135    Spanish
#> 136   Croatian
#> 137    Russian
#> 138    Chinese
#> 139    English
#> 140   Croatian
#> 141    Swedish
#> 142     French
#> 143      Dutch
#> 144     French
#> 145     German
#> 146   Croatian
#> 147     French
#> 148    English
#> 149  Hungarian
#> 150    English
#> 151    English
#> 152     French
#> 153     German
#> 154    Italian
#> 155      Dutch
#> 156    Slovene
#> 157    English
#> 158      Czech
#> 159    English
#> 160    Turkish
#> 161     Slovak
#> 162    English
#> 163    English
#> 164   Croatian
#> 165    English
#> 166     French
#> 167    English
#> 168    Russian
#> 169     German
#> 170    Italian
#> 171    English
#> 172     French
#> 173      Dutch
#> 174    Italian
#> 175    English
#> 176     French
#> 177    English
#> 178     French
#> 179     German
#> 180    Italian
#> 181     Slovak
#> 182     French
#> 183  Hungarian
#> 184    Spanish
#> 185    Chinese
#> 186     Arabic
#> 187     French
#> 188      Czech
#> 189    Spanish
#> 190     French
#> 191   Japanese
#> 192     French
#> 193  Icelandic
#> 194     French
#> 195    Russian
#> 196    English
#> 197   Armenian
#> 198    English
#> 199      Dutch
#> 200     French
#> 201     German
#> 202    English
#> 203    Russian
#> 204     Arabic
#> 205    Finnish
#> 206    Swedish
#> 207    Spanish
#> 208     French
#> 209    English
#> 210    Italian
#> 211    English
#> 212     French
#> 213    Swedish
#> 214      Dutch
#> 215    Spanish
#> 216    Spanish
#> 217    English
#> 218    English
#> 219     French
#> 220     German
#> 221    Italian
#> 222    English
#> 223     French
#> 224     French
#> 225    English
#> 226     French
#> 227     German
#> 228    Italian
#> 229     Slovak
#> 230    English
#> 231    Italian
#> 232    English
# }
```

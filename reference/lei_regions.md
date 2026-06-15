# Fetch LEI regions

Fetches the list of regions from the GLEIF API.

## Usage

``` r
lei_regions()
```

## Value

A [`data.frame()`](https://rdrr.io/r/base/data.frame.html) with columns:

- **code**: The region code

- **language**: The language of the region name

- **name**: The region name

## Examples

``` r
# \donttest{
lei_regions()
#>       code language                            name
#> 1    AD-02       ca                         Canillo
#> 2    AD-03       ca                          Encamp
#> 3    AD-04       ca                      La Massana
#> 4    AD-05       ca                          Ordino
#> 5    AD-06       ca             Sant Julià de Lòria
#> 6    AD-07       ca                Andorra la Vella
#> 7    AD-08       ca              Escaldes-Engordany
#> 8    AE-AJ       ar                          ‘Ajmān
#> 9    AE-AZ       ar                        Abū Z̧aby
#> 10   AE-DU       ar                          Dubayy
#> 11   AE-FU       ar                     Al Fujayrah
#> 12   AE-RK       ar                 Ra’s al Khaymah
#> 13   AE-SH       ar                    Ash Shāriqah
#> 14   AE-UQ       ar                  Umm al Qaywayn
#> 15  AF-BAL       fa                           Balkh
#> 16  AF-BAL       ps                           Balkh
#> 17  AF-BAM       fa                          Bāmyān
#> 18  AF-BAM       ps                          Bāmyān
#> 19  AF-BDG       fa                         Bādghīs
#> 20  AF-BDG       ps                         Bādghīs
#> 21  AF-BDS       fa                      Badakhshān
#> 22  AF-BDS       ps                      Badakhshān
#> 23  AF-BGL       fa                         Baghlān
#> 24  AF-BGL       ps                         Baghlān
#> 25  AF-DAY       fa                        Dāykundī
#> 26  AF-DAY       ps                        Dāykundī
#> 27  AF-FRA       fa                           Farāh
#> 28  AF-FRA       ps                           Farāh
#> 29  AF-FYB       fa                          Fāryāb
#> 30  AF-FYB       ps                          Fāryāb
#> 31  AF-GHA       fa                          Ghaznī
#> 32  AF-GHA       ps                          Ghaznī
#> 33  AF-GHO       fa                            Ghōr
#> 34  AF-GHO       ps                            Ghōr
#> 35  AF-HEL       fa                         Helmand
#> 36  AF-HEL       ps                         Helmand
#> 37  AF-HER       fa                           Herāt
#> 38  AF-HER       ps                           Herāt
#> 39  AF-JOW       fa                         Jowzjān
#> 40  AF-JOW       ps                         Jowzjān
#> 41  AF-KAB       fa                           Kābul
#> 42  AF-KAB       ps                           Kābul
#> 43  AF-KAN       fa                        Kandahār
#> 44  AF-KAN       ps                        Kandahār
#> 45  AF-KAP       fa                          Kāpīsā
#> 46  AF-KAP       ps                          Kāpīsā
#> 47  AF-KDZ       fa                          Kunduz
#> 48  AF-KDZ       ps                          Kunduz
#> 49  AF-KHO       fa                           Khōst
#> 50  AF-KHO       ps                           Khōst
#> 51  AF-KNR       fa                           Kunaṟ
#> 52  AF-KNR       ps                           Kunaṟ
#> 53  AF-LAG       fa                         Laghmān
#> 54  AF-LAG       ps                         Laghmān
#> 55  AF-LOG       fa                           Lōgar
#> 56  AF-LOG       ps                           Lōgar
#> 57  AF-NAN       fa                       Nangarhār
#> 58  AF-NAN       ps                       Nangarhār
#> 59  AF-NIM       fa                          Nīmrōz
#> 60  AF-NIM       ps                          Nīmrōz
#> 61  AF-NUR       fa                        Nūristān
#> 62  AF-NUR       ps                        Nūristān
#> 63  AF-PAN       fa                       Panjshayr
#> 64  AF-PAN       ps                       Panjshayr
#> 65  AF-PAR       fa                          Parwān
#> 66  AF-PAR       ps                          Parwān
#> 67  AF-PIA       fa                         Paktiyā
#> 68  AF-PIA       ps                         Paktiyā
#> 69  AF-PKA       fa                         Paktīkā
#> 70  AF-PKA       ps                         Paktīkā
#> 71  AF-SAM       fa                        Samangān
#> 72  AF-SAM       ps                        Samangān
#> 73  AF-SAR       fa                       Sar-e Pul
#> 74  AF-SAR       ps                       Sar-e Pul
#> 75  AF-TAK       fa                          Takhār
#> 76  AF-TAK       ps                          Takhār
#> 77  AF-URU       fa                         Uruzgān
#> 78  AF-URU       ps                         Uruzgān
#> 79  AF-WAR       fa                          Wardak
#> 80  AF-WAR       ps                          Wardak
#> 81  AF-ZAB       fa                           Zābul
#> 82  AF-ZAB       ps                           Zābul
#> 83   AG-03       en                    Saint George
#> 84   AG-04       en                      Saint John
#> 85   AG-05       en                      Saint Mary
#> 86   AG-06       en                      Saint Paul
#> 87   AG-07       en                     Saint Peter
#> 88   AG-08       en                    Saint Philip
#> 89   AG-10       en                         Barbuda
#> 90   AG-11       en                         Redonda
#> 91   AL-01       sq                           Berat
#> 92   AL-02       sq                          Durrës
#> 93   AL-03       sq                         Elbasan
#> 94   AL-04       sq                            Fier
#> 95   AL-05       sq                     Gjirokastër
#> 96   AL-06       sq                           Korçë
#> 97   AL-07       sq                           Kukës
#> 98   AL-08       sq                           Lezhë
#> 99   AL-09       sq                           Dibër
#> 100  AL-10       sq                         Shkodër
#> 101  AL-11       sq                          Tiranë
#> 102  AL-12       sq                           Vlorë
#> 103  AM-AG       hy                       Aragac̣otn
#> 104  AM-AR       hy                          Ararat
#> 105  AM-AV       hy                         Armavir
#> 106  AM-ER       hy                          Erevan
#> 107  AM-GR       hy                    Geġark'unik'
#> 108  AM-KT       hy                         Kotayk'
#> 109  AM-LO       hy                            Loṙi
#> 110  AM-SH       hy                           Širak
#> 111  AM-SU       hy                         Syunik'
#> 112  AM-TV       hy                           Tavuš
#> 113  AM-VD       hy                       Vayoć Jor
#> 114 AO-BGO       pt                           Bengo
#> 115 AO-BGU       pt                        Benguela
#> 116 AO-BIE       pt                             Bié
#> 117 AO-CAB       pt                         Cabinda
#> 118 AO-CCU       pt                  Cuando Cubango
#> 119 AO-CNN       pt                          Cunene
#> 120 AO-CNO       pt                    Cuanza-Norte
#> 121 AO-CUS       pt                      Cuanza-Sul
#> 122 AO-HUA       pt                          Huambo
#> 123 AO-HUI       pt                           Huíla
#> 124 AO-LNO       pt                     Lunda-Norte
#> 125 AO-LSU       pt                       Lunda-Sul
#> 126 AO-LUA       pt                          Luanda
#> 127 AO-MAL       pt                         Malange
#> 128 AO-MOX       pt                          Moxico
#> 129 AO-NAM       pt                          Namibe
#> 130 AO-UIG       pt                            Uíge
#> 131 AO-ZAI       pt                           Zaire
#> 132   AR-A       es                           Salta
#> 133   AR-B       es                    Buenos Aires
#> 134   AR-C       es Ciudad Autónoma de Buenos Aires
#> 135   AR-D       es                        San Luis
#> 136   AR-E       es                      Entre Ríos
#> 137   AR-F       es                        La Rioja
#> 138   AR-G       es             Santiago del Estero
#> 139   AR-H       es                           Chaco
#> 140   AR-J       es                        San Juan
#> 141   AR-K       es                       Catamarca
#> 142   AR-L       es                        La Pampa
#> 143   AR-M       es                         Mendoza
#> 144   AR-N       es                        Misiones
#> 145   AR-P       es                         Formosa
#> 146   AR-Q       es                         Neuquén
#> 147   AR-R       es                       Río Negro
#> 148   AR-S       es                        Santa Fe
#> 149   AR-T       es                         Tucumán
#> 150   AR-U       es                          Chubut
#> 151   AR-V       es                Tierra del Fuego
#> 152   AR-W       es                      Corrientes
#> 153   AR-X       es                         Córdoba
#> 154   AR-Y       es                           Jujuy
#> 155   AR-Z       es                      Santa Cruz
#> 156   AT-1       de                      Burgenland
#> 157   AT-2       de                         Kärnten
#> 158   AT-3       de                Niederösterreich
#> 159   AT-4       de                  Oberösterreich
#> 160   AT-5       de                        Salzburg
#> 161   AT-6       de                      Steiermark
#> 162   AT-7       de                           Tirol
#> 163   AT-8       de                      Vorarlberg
#> 164   AT-9       de                            Wien
#> 165 AU-ACT       en    Australian Capital Territory
#> 166 AU-NSW       en                 New South Wales
#> 167  AU-NT       en              Northern Territory
#> 168 AU-QLD       en                      Queensland
#> 169  AU-SA       en                 South Australia
#> 170 AU-TAS       en                        Tasmania
#> 171 AU-VIC       en                        Victoria
#> 172  AU-WA       en               Western Australia
#> 173 AZ-ABS       az                         Abşeron
#> 174 AZ-AGA       az                         Ağstafa
#> 175 AZ-AGC       az                        Ağcabədi
#> 176 AZ-AGM       az                           Ağdam
#> 177 AZ-AGS       az                           Ağdaş
#> 178 AZ-AGU       az                            Ağsu
#> 179 AZ-AST       az                          Astara
#> 180  AZ-BA       az                            Bakı
#> 181 AZ-BAB       az                           Babək
#> 182 AZ-BAL       az                         Balakən
#> 183 AZ-BAR       az                           Bərdə
#> 184 AZ-BEY       az                        Beyləqan
#> 185 AZ-BIL       az                       Biləsuvar
#> 186 AZ-CAB       az                        Cəbrayıl
#> 187 AZ-CAL       az                       Cəlilabad
#> 188 AZ-CUL       az                           Culfa
#> 189 AZ-DAS       az                        Daşkəsən
#> 190 AZ-FUZ       az                          Füzuli
#> 191  AZ-GA       az                           Gəncə
#> 192 AZ-GAD       az                         Gədəbəy
#> 193 AZ-GOR       az                        Goranboy
#> 194 AZ-GOY       az                          Göyçay
#> 195 AZ-GYG       az                          Göygöl
#> 196 AZ-HAC       az                       Hacıqabul
#> 197 AZ-IMI       az                          İmişli
#> 198 AZ-ISM       az                       İsmayıllı
#> 199 AZ-KAL       az                        Kəlbəcər
#> 200 AZ-KAN       az                        Kǝngǝrli
#> 201 AZ-KUR       az                        Kürdəmir
#> 202  AZ-LA       az                        Lənkəran
#> 203 AZ-LAC       az                           Laçın
#> 204 AZ-LAN       az                        Lənkəran
#> 205 AZ-LER       az                           Lerik
#> 206 AZ-MAS       az                         Masallı
#> 207  AZ-MI       az                      Mingəçevir
#> 208  AZ-NA       az                        Naftalan
#> 209 AZ-NEF       az                        Neftçala
#> 210  AZ-NV       az                        Naxçıvan
#> 211  AZ-NX       az                        Naxçıvan
#> 212 AZ-OGU       az                            Oğuz
#> 213 AZ-ORD       az                         Ordubad
#> 214 AZ-QAB       az                          Qəbələ
#> 215 AZ-QAX       az                             Qax
#> 216 AZ-QAZ       az                           Qazax
#> 217 AZ-QBA       az                            Quba
#> 218 AZ-QBI       az                         Qubadlı
#> 219 AZ-QOB       az                        Qobustan
#> 220 AZ-QUS       az                           Qusar
#> 221  AZ-SA       az                            Şəki
#> 222 AZ-SAB       az                       Sabirabad
#> 223 AZ-SAD       az                         Sədərək
#> 224 AZ-SAH       az                          Şahbuz
#> 225 AZ-SAK       az                            Şəki
#> 226 AZ-SAL       az                          Salyan
#> 227 AZ-SAR       az                           Şərur
#> 228 AZ-SAT       az                          Saatlı
#> 229 AZ-SBN       az                          Şabran
#> 230 AZ-SIY       az                         Siyəzən
#> 231 AZ-SKR       az                          Şəmkir
#> 232  AZ-SM       az                        Sumqayıt
#> 233 AZ-SMI       az                          Şamaxı
#> 234 AZ-SMX       az                           Samux
# }
```

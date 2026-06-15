# Fetch LEI issuers

Fetches the list of LEI issuers (Local Operating Units) from the GLEIF
API.

## Usage

``` r
lei_issuers()
```

## Value

A [`data.frame()`](https://rdrr.io/r/base/data.frame.html) with columns:

- **lei**: The Legal Entity Identifier of the issuer

- **name**: The issuer name

- **marketing_name**: The marketing name

- **website**: The issuer website

- **accreditation_date**: The accreditation date

## Examples

``` r
# \donttest{
lei_issuers()
#>                     lei
#> 1  029200067A7K6CH0H586
#> 2  097900BEFH0000000217
#> 3  213800WAVVOPS85N2205
#> 4  253400M18U5TB02TW421
#> 5  254900LXHEVKYGERER05
#> 6  254900PMALKJRL1YGQ18
#> 7  259400L3KBYEVNHEJF55
#> 8  315700LK78Z7C0WMIL03
#> 9  335800FVH4MOKZS9VH40
#> 10 335800NFZPTMGTPAHE42
#> 11 353800279ADEFGKNTV65
#> 12 378900F4A0A690EA6735
#> 13 39120001KULK7200U106
#> 14 4117IB8J63IUO2SES575
#> 15 4469000001AVO26P9X86
#> 16 485100001PLJJ09NZT59
#> 17 48510000JZ17NWGUA510
#> 18 506700LOLO7M6V0E4247
#> 19 5299000J2N45DDNE4Y28
#> 20 52990034RLKT0WSOAM90
#> 21 529900F6BNUR3RJ2WH29
#> 22 529900T8BM49AURSDO55
#> 23 5493001KJTIIGC8Y1R12
#> 24 549300O897ZC5H7CY412
#> 25 558600FNC30A8J9EGQ54
#> 26 635400DZBUIMTBCXGA12
#> 27 655600IJ8LS3CCDA4421
#> 28 724500A93Z8V1MJK5349
#> 29 743700OO8O2N3TQKJC81
#> 30 7478000050A040C0D041
#> 31 789000TVSB96MCOKSB52
#> 32 815600EAD78C57FCE690
#> 33 815600F58F7382929F40
#> 34 894500IIP432AHQ64V02
#> 35 959800R2X69K6Y6MX775
#> 36 969500Q2MA9VBQ8BG884
#> 37 98450045AN5EB5FDC780
#> 38 984500ID493BDCR4B368
#> 39 9884008RRMX1X5HV6625
#> 40 EVK05KS7XY1DEII3R011
#>                                                                                             name
#> 1                                                         Central Securities Clearing System PLC
#> 2                                                        Centrálny depozitár cenných papierov SR
#> 3                                                              London Stock Exchange LEI Limited
#> 4    Небанковская кредитная организация акционерное общество "Национальный расчетный депозитарий
#> 5                                                                         Depozitarul Central SA
#> 6                                                                             Qatar Central Bank
#> 7                                                    Krajowy Depozyt Papierów Wartościowych S.A.
#> 8                                                       Centrální Depozitář Cenných Papírů, a.s.
#> 9                                                          Legal Entity Identifier India Limited
#> 10                                                        National Securities Depository Limited
#> 11                                                                        株式会社東京証券取引所
#> 12                                                                              Strate (Pty) Ltd
#> 13                                                                    Bundesanzeiger Verlag GmbH
#> 14                                                                              Tunisie Clearing
#> 15                             ASOCIACION MEXICANA DE ESTANDARES PARA EL COMERCIO ELECTRONICO AC
#> 16                                                                                 Nasdaq CSD SE
#> 17                                               KDD - Centralna klirinško depotna družba d.o.o.
#> 18                                            Office Fédéral de la Statistique (OFS), LEI-Suisse
#> 19                                                                               WM Datenservice
#> 20                                                                                     GS1 AISBL
#> 21                                                                                EQS Group GmbH
#> 22                                                                                  Ubisecure Oy
#> 23                                                                        Bloomberg Finance L.P.
#> 24                                                             Nordic Legal Entity Identifier AB
#> 25                                                                           Saudi Credit Bureau
#> 26                                                                  The Irish Stock Exchange Plc
#> 27                                                          北京国家金融标准化研究院有限责任公司
#> 28                                                                          Kamer van Koophandel
#> 29                                                                Patentti- ja Rekisterihallitus
#> 30                                                                         Zagrebačka burza d.d.
#> 31                                              İstanbul Takas ve Saklama Bankası Anonim Şirketi
#> 32 INFOCAMERE - SOCIETA' CONSORTILE DI INFORMATICA DELLE CAMERE DI COMMERCIO ITALIANE PER AZIONI
#> 33                                                                                  INFOCERT SPA
#> 34                                                                      Xerius Ondernemingsloket
#> 35              Colegio de Registradores de la Propiedad, Mercantiles y Bienes Muebles de España
#> 36                                 INSTITUT NATIONAL DE LA STATISTIQUE ET DES ETUDES ECONOMIQUES
#> 37                                                                                    Unilei ApS
#> 38                                                                     LEI International Pvt Ltd
#> 39                                                                                한국예탁결제원
#> 40                                                                     Business Entity Data B.V.
#>                                                     marketing_name
#> 1                Central Securities Clearing System plc of Nigeria
#> 2                                                     CSD Slovakia
#> 3                                            London Stock Exchange
#> 4                           National Settlement Depository, Russia
#> 5                                     Depozitarul Central, Romania
#> 6                                              Qatar Credit Bureau
#> 7                                                             KDPW
#> 8                                                       CSD Prague
#> 9                                                             LEIL
#> 10                          National Securities Depository Limited
#> 11            Japan Exchange Group/ Tokyo Stock Exchange (JPX/TSE)
#> 12                                                          Strate
#> 13                                           Bundesanzeiger Verlag
#> 14                                                Tunisie Clearing
#> 15                                                      GS1 Mexico
#> 16                                                      Nasdaq LEI
#> 17              KDD – Central Securities Clearing Corporation, LLC
#> 18                                      Federal Statistical Office
#> 19                                                 WM Datenservice
#> 20                                                             GS1
#> 21                                                             EQS
#> 22                                              Ubisecure RapidLEI
#> 23                                                       Bloomberg
#> 24                                                         NordLEI
#> 25                                                    SACB/Moa'rif
#> 26                                                 Euronext Dublin
#> 27 Beijing National Institute of Financial Standardization Co.,Ltd
#> 28                            KVK; Netherlands Chamber of Commerce
#> 29                    Finnish Patent and Registration Office (PRH)
#> 30                                      Zagreb Stock Exchange, ZSE
#> 31                                                       Takasbank
#> 32                                                      InfoCamere
#> 33                                                    INFOCERT SPA
#> 34                                                          Xerius
#> 35                                                          CORPME
#> 36                                                           Insee
#> 37                                                          Unilei
#> 38                                                         TNV‑LEI
#> 39                                                             KSD
#> 40                              GMEI Utility a service of BED B.V.
#>                                                                                                  website
#> 1                                                               https://lei.cscs.ng/cscslei/cscs-lei.php
#> 2                                                                                    https://lei.cdcp.sk
#> 3                                                                               https://www.lseg.com/LEI
#> 4                                                                                https://www.lei-code.ru
#> 5                                                                                https://lei.roclear.ro/
#> 6                                                                             https://www.cb.gov.qa/lei/
#> 7                                                                                   https://lei.kdpw.pl/
#> 8                                                                           https://www.cdcp.cz/?lang=en
#> 9                                                                       https://www.ccilindia-lei.co.in/
#> 10                                                                       http://lei-register.nsdl.co.in/
#> 11                                                           https://www.lei.jpx.co.jp/lei/en/index.html
#> 12                                                                         https://www.lei-strate.co.za/
#> 13                                                                             https://www.leireg.de/de/
#> 14                                                                        http://lei.tunisieclearing.com
#> 15                                                                             https://lei.gs1mexico.org
#> 16                                                                             https://www.nasdaqlei.com
#> 17                                                                          https://storitve.kdd.si/lei/
#> 18                                                                              https://www.lei.admin.ch
#> 19                                                                         https://www.wm-leiportal.org/
#> 20                                                                               https://www.lei.direct/
#> 21                                                                          https://www.lei-manager.com/
#> 22                                                                              https://www.rapidlei.com
#> 23                                                                              http://lei.bloomberg.com
#> 24                                                                                   https://nordlei.org
#> 25                                                                                https://lei.simah.com/
#> 26                                                             https://direct.euronext.com/#/lEIServices
#> 27                                                         https://www.leichina.org/leicn/leicn/mainpage
#> 28 https://www.kvk.nl/english/how-to-register-deregister-and-report-changes/legal-entity-identifier-lei/
#> 29                                                                   https://www.prh.fi/en/leicodes.html
#> 30                                                                                    http://lei.zse.hr/
#> 31                                                                   https://www.leiturkiye.com/leiweb/#
#> 32                                                                       https://lei-italy.infocamere.it
#> 33                                                                         https://infocert.digital/lei/
#> 34                                                                             https://www.xerius.be/lei
#> 35                                                           https://www.justicia.lei.registradores.org/
#> 36                                                                     https://lei-france.insee.fr/index
#> 37                                                                                https://www.unilei.com
#> 38                                                                               https://www.tnvlei.com/
#> 39                                                                                     https://lei-k.com
#> 40                                                                                https://gmei.dtcc.com/
#>           accreditation_date
#> 1  2018-01-30T00:00:00+00:00
#> 2  2018-01-30T00:00:00+00:00
#> 3  2017-11-06T00:00:00+00:00
#> 4  2018-01-05T00:00:00+00:00
#> 5  2018-12-06T00:00:00+00:00
#> 6  2019-07-26T00:00:00+00:00
#> 7  2016-12-21T00:00:00+00:00
#> 8  2017-12-01T00:00:00+00:00
#> 9  2016-12-21T00:00:00+00:00
#> 10 2023-12-06T00:00:00+00:00
#> 11 2017-07-21T00:00:00+00:00
#> 12 2018-01-30T00:00:00+00:00
#> 13 2017-02-22T00:00:00+00:00
#> 14 2020-12-02T00:00:00+00:00
#> 15 2016-12-21T00:00:00+00:00
#> 16 2020-08-14T00:00:00+00:00
#> 17 2017-12-21T00:00:00+00:00
#> 18 2017-12-01T00:00:00+00:00
#> 19 2017-04-13T00:00:00+00:00
#> 20 2017-02-22T00:00:00+00:00
#> 21 2017-09-26T00:00:00+00:00
#> 22 2018-04-03T00:00:00+00:00
#> 23 2017-04-13T00:00:00+00:00
#> 24 2021-08-03T00:00:00+00:00
#> 25 2017-09-26T00:00:00+00:00
#> 26 2018-01-10T00:00:00+00:00
#> 27 2017-12-08T00:00:00+00:00
#> 28 2017-09-26T00:00:00+00:00
#> 29 2018-01-30T00:00:00+00:00
#> 30 2017-12-18T00:00:00+00:00
#> 31 2018-01-30T00:00:00+00:00
#> 32 2017-12-08T00:00:00+00:00
#> 33 2020-05-26T00:00:00+00:00
#> 34 2020-03-06T00:00:00+00:00
#> 35 2018-01-30T00:00:00+00:00
#> 36 2018-01-30T00:00:00+00:00
#> 37 2022-08-03T00:00:00+00:00
#> 38 2025-07-25T00:00:00+00:00
#> 39 2017-10-05T00:00:00+00:00
#> 40 2017-03-13T00:00:00+00:00
# }
```

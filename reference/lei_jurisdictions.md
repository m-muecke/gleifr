# Fetch the list of jurisdictions

Fetches the list of jurisdictions (countries and their subdivisions)
recognized by the GLEIF API.

## Usage

``` r
lei_jurisdictions()
```

## Value

A [`data.frame()`](https://rdrr.io/r/base/data.frame.html) with columns:

- **code**: The jurisdiction code

- **name**: The jurisdiction name

## Examples

``` r
# \donttest{
lei_jurisdictions()
#>       code                       name
#> 1       AD                    Andorra
#> 2    AD-02                       <NA>
#> 3    AD-03                       <NA>
#> 4    AD-04                       <NA>
#> 5    AD-05                       <NA>
#> 6    AD-06                       <NA>
#> 7    AD-07                       <NA>
#> 8    AD-08                       <NA>
#> 9       AE United Arab Emirates (the)
#> 10   AE-AJ                       <NA>
#> 11   AE-AZ                       <NA>
#> 12   AE-DU                       <NA>
#> 13   AE-FU                       <NA>
#> 14   AE-RK                       <NA>
#> 15   AE-SH                       <NA>
#> 16   AE-UQ                       <NA>
#> 17      AF                Afghanistan
#> 18  AF-BAL                       <NA>
#> 19  AF-BAM                       <NA>
#> 20  AF-BDG                       <NA>
#> 21  AF-BDS                       <NA>
#> 22  AF-BGL                       <NA>
#> 23  AF-DAY                       <NA>
#> 24  AF-FRA                       <NA>
#> 25  AF-FYB                       <NA>
#> 26  AF-GHA                       <NA>
#> 27  AF-GHO                       <NA>
#> 28  AF-HEL                       <NA>
#> 29  AF-HER                       <NA>
#> 30  AF-JOW                       <NA>
#> 31  AF-KAB                       <NA>
#> 32  AF-KAN                       <NA>
#> 33  AF-KAP                       <NA>
#> 34  AF-KDZ                       <NA>
#> 35  AF-KHO                       <NA>
#> 36  AF-KNR                       <NA>
#> 37  AF-LAG                       <NA>
#> 38  AF-LOG                       <NA>
#> 39  AF-NAN                       <NA>
#> 40  AF-NIM                       <NA>
#> 41  AF-NUR                       <NA>
#> 42  AF-PAN                       <NA>
#> 43  AF-PAR                       <NA>
#> 44  AF-PIA                       <NA>
#> 45  AF-PKA                       <NA>
#> 46  AF-SAM                       <NA>
#> 47  AF-SAR                       <NA>
#> 48  AF-TAK                       <NA>
#> 49  AF-URU                       <NA>
#> 50  AF-WAR                       <NA>
#> 51  AF-ZAB                       <NA>
#> 52      AG        Antigua and Barbuda
#> 53   AG-03                       <NA>
#> 54   AG-04                       <NA>
#> 55   AG-05                       <NA>
#> 56   AG-06                       <NA>
#> 57   AG-07                       <NA>
#> 58   AG-08                       <NA>
#> 59   AG-10                       <NA>
#> 60   AG-11                       <NA>
#> 61      AI                   Anguilla
#> 62      AL                    Albania
#> 63   AL-01                       <NA>
#> 64   AL-02                       <NA>
#> 65   AL-03                       <NA>
#> 66   AL-04                       <NA>
#> 67   AL-05                       <NA>
#> 68   AL-06                       <NA>
#> 69   AL-07                       <NA>
#> 70   AL-08                       <NA>
#> 71   AL-09                       <NA>
#> 72   AL-10                       <NA>
#> 73   AL-11                       <NA>
#> 74   AL-12                       <NA>
#> 75      AM                    Armenia
#> 76   AM-AG                       <NA>
#> 77   AM-AR                       <NA>
#> 78   AM-AV                       <NA>
#> 79   AM-ER                       <NA>
#> 80   AM-GR                       <NA>
#> 81   AM-KT                       <NA>
#> 82   AM-LO                       <NA>
#> 83   AM-SH                       <NA>
#> 84   AM-SU                       <NA>
#> 85   AM-TV                       <NA>
#> 86   AM-VD                       <NA>
#> 87      AO                     Angola
#> 88  AO-BGO                       <NA>
#> 89  AO-BGU                       <NA>
#> 90  AO-BIE                       <NA>
#> 91  AO-CAB                       <NA>
#> 92  AO-CCU                       <NA>
#> 93  AO-CNN                       <NA>
#> 94  AO-CNO                       <NA>
#> 95  AO-CUS                       <NA>
#> 96  AO-HUA                       <NA>
#> 97  AO-HUI                       <NA>
#> 98  AO-LNO                       <NA>
#> 99  AO-LSU                       <NA>
#> 100 AO-LUA                       <NA>
#> 101 AO-MAL                       <NA>
#> 102 AO-MOX                       <NA>
#> 103 AO-NAM                       <NA>
#> 104 AO-UIG                       <NA>
#> 105 AO-ZAI                       <NA>
#> 106     AQ                 Antarctica
#> 107     AR                  Argentina
#> 108   AR-A                       <NA>
#> 109   AR-B                       <NA>
#> 110   AR-C                       <NA>
#> 111   AR-D                       <NA>
#> 112   AR-E                       <NA>
#> 113   AR-F                       <NA>
#> 114   AR-G                       <NA>
#> 115   AR-H                       <NA>
#> 116   AR-J                       <NA>
#> 117   AR-K                       <NA>
#> 118   AR-L                       <NA>
#> 119   AR-M                       <NA>
#> 120   AR-N                       <NA>
#> 121   AR-P                       <NA>
#> 122   AR-Q                       <NA>
#> 123   AR-R                       <NA>
#> 124   AR-S                       <NA>
#> 125   AR-T                       <NA>
#> 126   AR-U                       <NA>
#> 127   AR-V                       <NA>
#> 128   AR-W                       <NA>
#> 129   AR-X                       <NA>
#> 130   AR-Y                       <NA>
#> 131   AR-Z                       <NA>
#> 132     AS             American Samoa
#> 133     AT                    Austria
#> 134   AT-1                       <NA>
#> 135   AT-2                       <NA>
#> 136   AT-3                       <NA>
#> 137   AT-4                       <NA>
#> 138   AT-5                       <NA>
#> 139   AT-6                       <NA>
#> 140   AT-7                       <NA>
#> 141   AT-8                       <NA>
#> 142   AT-9                       <NA>
#> 143     AU                  Australia
#> 144 AU-ACT                       <NA>
#> 145 AU-NSW                       <NA>
#> 146  AU-NT                       <NA>
#> 147 AU-QLD                       <NA>
#> 148  AU-SA                       <NA>
#> 149 AU-TAS                       <NA>
#> 150 AU-VIC                       <NA>
#> 151  AU-WA                       <NA>
#> 152     AW                      Aruba
#> 153     AX              Åland Islands
#> 154     AZ                 Azerbaijan
#> 155 AZ-ABS                       <NA>
#> 156 AZ-AGA                       <NA>
#> 157 AZ-AGC                       <NA>
#> 158 AZ-AGM                       <NA>
#> 159 AZ-AGS                       <NA>
#> 160 AZ-AGU                       <NA>
#> 161 AZ-AST                       <NA>
#> 162  AZ-BA                       <NA>
#> 163 AZ-BAB                       <NA>
#> 164 AZ-BAL                       <NA>
#> 165 AZ-BAR                       <NA>
#> 166 AZ-BEY                       <NA>
#> 167 AZ-BIL                       <NA>
#> 168 AZ-CAB                       <NA>
#> 169 AZ-CAL                       <NA>
#> 170 AZ-CUL                       <NA>
#> 171 AZ-DAS                       <NA>
#> 172 AZ-FUZ                       <NA>
#> 173  AZ-GA                       <NA>
#> 174 AZ-GAD                       <NA>
#> 175 AZ-GOR                       <NA>
#> 176 AZ-GOY                       <NA>
#> 177 AZ-GYG                       <NA>
#> 178 AZ-HAC                       <NA>
#> 179 AZ-IMI                       <NA>
#> 180 AZ-ISM                       <NA>
#> 181 AZ-KAL                       <NA>
#> 182 AZ-KAN                       <NA>
#> 183 AZ-KUR                       <NA>
#> 184  AZ-LA                       <NA>
#> 185 AZ-LAC                       <NA>
#> 186 AZ-LAN                       <NA>
#> 187 AZ-LER                       <NA>
#> 188 AZ-MAS                       <NA>
#> 189  AZ-MI                       <NA>
#> 190  AZ-NA                       <NA>
#> 191 AZ-NEF                       <NA>
#> 192  AZ-NV                       <NA>
#> 193  AZ-NX                       <NA>
#> 194 AZ-OGU                       <NA>
#> 195 AZ-ORD                       <NA>
#> 196 AZ-QAB                       <NA>
#> 197 AZ-QAX                       <NA>
#> 198 AZ-QAZ                       <NA>
#> 199 AZ-QBA                       <NA>
#> 200 AZ-QBI                       <NA>
# }
```

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
head(lei_record_by_id("529900W18LQJJN6SJ336"))
#>                    lei                                       name
#> 1 529900W18LQJJN6SJ336                     entity_legal_name_name
#> 2 529900W18LQJJN6SJ336                 entity_legal_name_language
#> 3 529900W18LQJJN6SJ336     entity_transliterated_other_names_name
#> 4 529900W18LQJJN6SJ336 entity_transliterated_other_names_language
#> 5 529900W18LQJJN6SJ336     entity_transliterated_other_names_type
#> 6 529900W18LQJJN6SJ336              entity_legal_address_language
#>                                  value
#> 1       Société Générale Effekten GmbH
#> 2                                   fr
#> 3       Societe Generale Effekten GmbH
#> 4                                   fr
#> 5 AUTO_ASCII_TRANSLITERATED_LEGAL_NAME
#> 6                                   de

# get raw API response as named list
str(lei_record_by_id("529900W18LQJJN6SJ336", simplify = FALSE), max.level = 2)
#> List of 2
#>  $ meta:List of 1
#>   ..$ goldenCopy:List of 1
#>  $ data:List of 5
#>   ..$ type         : chr "lei-records"
#>   ..$ id           : chr "529900W18LQJJN6SJ336"
#>   ..$ attributes   :List of 9
#>   ..$ relationships:List of 7
#>   ..$ links        :List of 1
# }
```

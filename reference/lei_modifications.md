# Fetch the change history of a LEI record

Fetches the field-level modification history of a given LEI, i.e. an
audit log of every recorded change to the entity (`recordType` `"LEI"`)
and its relationships (`recordType` `"RR"`).

## Usage

``` r
lei_modifications(id)
```

## Source

<https://www.gleif.org/en/lei-data/gleif-api>

## Arguments

- id:

  (`character(1)`)  
  The Legal Entity Identifier (LEI) to fetch the change history for.

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
if (FALSE) { # \dontrun{
lei_modifications("529900W18LQJJN6SJ336")
} # }
```

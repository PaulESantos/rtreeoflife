# Search Kew Tree of Life species records

Search Kew Tree of Life species records

## Usage

``` r
tol_search_species(
  index = tol_species_index(),
  sequence_id = NULL,
  order = NULL,
  family = NULL,
  genus = NULL,
  specific_epithet = NULL,
  scientific_name = NULL,
  query = NULL,
  ignore_case = TRUE
)
```

## Arguments

- index:

  A species index returned by
  [`tol_species_index()`](https://PaulESantos.github.io/rtreeoflife/reference/tol_species_index.md).
  If omitted, the built-in
  [tol_species](https://PaulESantos.github.io/rtreeoflife/reference/tol_species.md)
  dataset is used.

- sequence_id:

  Optional sequence identifier or vector of identifiers.

- order, family, genus, specific_epithet, scientific_name:

  Optional taxonomic filters.

- query:

  Optional free-text query.

- ignore_case:

  Ignore case in text filters.

## Value

A filtered data frame.

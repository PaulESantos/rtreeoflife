# Match requested species names against the Kew Tree of Life index

Match requested species names against the Kew Tree of Life index

## Usage

``` r
tol_match_species(
  species,
  index = tol_species_index(),
  fuzzy = FALSE,
  max_distance = NULL,
  multiple = c("all", "best"),
  ignore_case = TRUE
)
```

## Arguments

- species:

  Character vector of requested scientific names.

- index:

  A species index returned by
  [`tol_species_index()`](https://PaulESantos.github.io/rtreeoflife/reference/tol_species_index.md).
  If omitted, the built-in
  [tol_species](https://PaulESantos.github.io/rtreeoflife/reference/tol_species.md)
  dataset is used.

- fuzzy:

  If `TRUE`, return the closest available name when no exact match is
  found.

- max_distance:

  Maximum edit distance for fuzzy matching. If `NULL`, a conservative
  threshold is computed from each requested name.

- multiple:

  How to handle multiple records for the same matched species. `"all"`
  returns all records; `"best"` keeps the record with the highest
  `no_of_genes_recovered` and then `no_of_bp_recovered`.

- ignore_case:

  Ignore case when matching names.

## Value

A tibble with requested names, match status, matched records, and FASTA
URLs where available.

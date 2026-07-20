# Read the Kew Tree of Life species index

Read the Kew Tree of Life species index

## Usage

``` r
tol_species_index(file = NULL, use_package_data = TRUE)
```

## Arguments

- file:

  Local path to `all_species_list.csv`. If `NULL`, the package dataset
  [tol_species](https://PaulESantos.github.io/rtreeoflife/reference/tol_species.md)
  is returned.

- use_package_data:

  Use the built-in
  [tol_species](https://PaulESantos.github.io/rtreeoflife/reference/tol_species.md)
  dataset when `file = NULL`.

## Value

A data frame with normalized column names and derived fields.

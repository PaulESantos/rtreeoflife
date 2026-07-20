# Plot an hclust tree with ggplot2

Plot an hclust tree with ggplot2

## Usage

``` r
tol_plot_tree(tree_result, label_offset = NULL, label_size = 3)
```

## Arguments

- tree_result:

  A result returned by
  [`tol_build_gene_tree()`](https://PaulESantos.github.io/rtreeoflife/reference/tol_build_gene_tree.md)
  or an `hclust` object.

- label_offset:

  Numeric offset used to place species labels beyond the end of each
  terminal branch. If `NULL`, an offset is computed from the tree
  height.

- label_size:

  Label text size.

## Value

A ggplot object.

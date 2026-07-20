# Build an illustrative tree from one shared gene

This helper is intended for exploration. It extracts one homologous gene
from each selected FASTA, trims sequences to their common minimum
length, computes raw DNA distances with `ape`, and returns an `hclust`
tree plus the distance matrix. Rigorous phylogenetics should use
explicit alignment and model selection outside this helper.

## Usage

``` r
tol_build_gene_tree(plan, gene_id = NULL, min_records = 3)
```

## Arguments

- plan:

  A data frame returned by
  [`tol_attach_fasta()`](https://PaulESantos.github.io/rtreeoflife/reference/tol_attach_fasta.md)
  or a FASTA plan with local files.

- gene_id:

  Optional gene id. If `NULL`, the most shared gene is selected.

- min_records:

  Minimum records required to build the tree.

## Value

A list with `tree`, `distances`, `gene_id`, `sequences`, and `note`.

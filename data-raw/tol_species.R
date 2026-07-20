# Build package dataset `tol_species` from the local Tree of Life species list.
# Run from the package root:
#   source("data-raw/tol_species.R")

source("R/species.R")

tol_species <- tol_species_index("raw-data/all_species_list.csv", use_package_data = FALSE)

dir.create("data", showWarnings = FALSE)
save(tol_species, file = "data/tol_species.rda", compress = "xz")

# rtreeoflife: consulta, descarga, manipulacion, visualizacion y exportacion
#
# Este workflow usa una filosofia tidyverse: tibbles, pipelines y columnas tipo
# lista. No descarga el repositorio completo; descarga solo los FASTA asociados
# a los registros consultados.

devtools::load_all()
library(rtreeoflife)
library(dplyr)
library(ggplot2)
library(purrr)
library(tidyr)

dir.create("outputs", showWarnings = FALSE)


# 1. Cargar el indice de especies/especimenes -------------------------------

species <- tol_species_index()

species_overview <- species |>
  count(data_source, sort = TRUE)

print(species_overview)


# 2. Consultar registros -----------------------------------------------------

# Seleccion pequena y reproducible: registros de Saxifraga con mejor recuperacion.
saxifraga <- species |>
  tol_search_species(genus = "Saxifraga") |>
  arrange(desc(no_of_genes_recovered), desc(no_of_bp_recovered)) |>
  slice_head(n = 8)

saxifraga_view <- saxifraga |>
  select(
    sequence_id, scientific_name, family, specimen_reference,
    no_of_genes_recovered, no_of_bp_recovered, fasta_file_url
  )

print(saxifraga_view)


# 3. Resolver y descargar FASTA ---------------------------------------------

# Plan temporal sin descargar.
download_plan <- saxifraga |>
  tol_resolve_fasta()

print(download_plan |> select(sequence_id, scientific_name, fasta_file_name, status))

# Descarga temporal. Use dest_dir = "raw-data/fasta/by_recovery" si desea
# descargar directamente de forma permanente.
download_plan <- saxifraga |>
  tol_download_fasta(timeout = 1200, retries = 5, retry_wait = 10)

print(download_plan |> count(status))

# 4. Manipulacion tidy con columnas lista -----------------------------------

# Se trabaja directamente desde los archivos temporales referenciados en
# download_plan$local_path. No es necesario persistir los FASTA para analizarlos.
plan_nested <- download_plan |>
  tol_attach_fasta()

fasta_long <- plan_nested |>
  tol_fasta_long()

fasta_summary <- plan_nested |>
  tol_fasta_summary()

analysis_table <- saxifraga |>
  left_join(fasta_summary, by = c("sequence_id", "scientific_name")) |>
  select(
    sequence_id, scientific_name, data_source, family,
    no_of_genes_recovered, no_of_bp_recovered,
    n_sequences, n_genes, total_bp, mean_bp, median_bp
  )

print(analysis_table)

# Genes compartidos por los FASTA seleccionados. Esto es clave para construir
# un arbol: hay que comparar un gen homologico, no la primera secuencia del
# archivo.
common_genes <- plan_nested |>
  tol_common_genes(min_records = 3)

print(common_genes |> slice_head(n = 10))


# 5. Visualizacion con ggplot2 ----------------------------------------------

p_genes <- saxifraga |>
  tol_plot_gene_recovery()

p_fasta_size <- fasta_summary |>
  tol_plot_fasta_summary()

p_common_genes <- common_genes |>
  slice_head(n = 20) |>
  ggplot(aes(x = reorder(gene_id, n_records), y = n_records)) +
  geom_col(fill = "#3d5a80") +
  coord_flip() +
  labs(
    x = NULL,
    y = "Numero de especimenes",
    title = "Genes compartidos en la seleccion"
  ) +
  theme_minimal()

print(p_genes)
print(p_fasta_size)
print(p_common_genes)


# 6. Construccion de arbol exploratorio -------------------------------------

# La funcion elige el gen mas compartido, recorta las secuencias a una longitud
# comun y construye un arbol exploratorio. No reemplaza un pipeline
# filogenetico con alineamiento y seleccion de modelo.
tree_result <- NULL
p_tree <- NULL

if (nrow(common_genes) > 0) {
  tree_result <- plan_nested |>
    tol_build_gene_tree(gene_id = common_genes$gene_id[[1]], min_records = 3)

  message(tree_result$note)

  p_tree <- tree_result |>
    tol_plot_tree(label_offset = NULL, label_size = 3) +
    labs(title = paste("Arbol exploratorio para gen", tree_result$gene_id))

  print(p_tree)
}

tree_result
# 7. Exportacion -------------------------------------------------------------

write.csv(
  analysis_table,
  file = "outputs/saxifraga_analysis_table.csv",
  row.names = FALSE,
  fileEncoding = "UTF-8"
)

write.csv(
  download_plan,
  file = "outputs/saxifraga_fasta_download_manifest.csv",
  row.names = FALSE,
  fileEncoding = "UTF-8"
)

saveRDS(
  plan_nested,
  file = "outputs/saxifraga_plan_with_fasta.rds"
)

# Exportacion permanente opcional. Se hace al final para no interrumpir el
# flujo de analisis temporal. El objeto exported_plan contiene rutas permanentes.
exported_plan <- download_plan |>
  tol_export_fasta(
    dest_dir = "raw-data/fasta/by_recovery",
    manifest_path = "outputs/saxifraga_fasta_export_manifest.csv",
    overwrite = FALSE
  )

write.csv(
  exported_plan,
  file = "outputs/saxifraga_fasta_exported_paths.csv",
  row.names = FALSE,
  fileEncoding = "UTF-8"
)

write.csv(
  fasta_long |> select(-sequence),
  file = "outputs/saxifraga_fasta_long_metadata.csv",
  row.names = FALSE,
  fileEncoding = "UTF-8"
)

ggsave(
  filename = "outputs/saxifraga_genes_recovered.png",
  plot = p_genes,
  width = 8,
  height = 5,
  dpi = 300
)

ggsave(
  filename = "outputs/saxifraga_fasta_size.png",
  plot = p_fasta_size,
  width = 8,
  height = 5,
  dpi = 300
)

ggsave(
  filename = "outputs/saxifraga_common_genes.png",
  plot = p_common_genes,
  width = 8,
  height = 5,
  dpi = 300
)

if (!is.null(tree_result)) {
  saveRDS(tree_result, "outputs/saxifraga_gene_tree_result.rds")
  utils::write.csv(
    tree_result$sequences,
    file = "outputs/saxifraga_gene_tree_sequences.csv",
    row.names = FALSE,
    fileEncoding = "UTF-8"
  )

  ggsave(
    filename = "outputs/saxifraga_gene_tree.png",
    plot = p_tree,
    width = 8,
    height = 5,
    dpi = 300
  )
}

message("Workflow finalizado. Revise la carpeta outputs/.")

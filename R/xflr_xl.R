xflr_xl <- function(u) {
  x_in <- shQuote(normalizePath(u))
  str <- paste("MassAssayExporter ", x_in)
  shell(str)
}

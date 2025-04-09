to_xl2<- function(u, overwrite = FALSE) {
  if (!file.exists(u)) stop("Input file does not exist: ", u)
  
  ext <- tools::file_ext(u)
  
  loc <- c(
    asyr = "Seahorse Bioscience\\Wave Desktop\\",
    xflr = "Agilent Technologies\\Wave Pro\\"
  )
  
  if (!(ext %in% names(loc))) {
    stop("Unsupported file extension: ", ext)
  }
  
  exe_path <- file.path("C:\\Program Files (x86)", loc[ext], "MassAssayExporter.exe")
  
  if (!file.exists(exe_path)) stop("MassAssayExporter.exe not found at: ", exe_path)
  
  input_file <- normalizePath(u, winslash = "\\")
  output_file <- sub(paste0("\\.", ext, "$"), ".xlsx", basename(u))
  output_file <- file.path(dirname(u), output_file)
  
  args <- c(shQuote(input_file), shQuote(output_file))
  if (overwrite) args <- c(args, "-o")
  
  exit_code <- system2(exe_path, args = args)
  if (exit_code != 0) {
    warning("MassAssayExporter failed with exit code ", exit_code)
  }
}

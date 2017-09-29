export_xl<-function(path_in){
  newpath<-file.path(path_in,"export")
  if (dir.exists(newpath)==FALSE){dir.create(newpath)}
  shell(
    paste('MassAssayExporter.exe',
          shQuote(normalizePath(path_in)),
          shQuote(normalizePath(newpath)),
          sep=" "
    )
  )
}

to_xl<-function(u){
  ext <- tools::file_ext(u)
  loc <- c("asyr" = "Seahorse Bioscience\\Wave Desktop\\" ,
           "xflr" = "Agilent Technologies\\Wave Pro\\"
  )
  M <- shQuote(paste0("C:\\Program Files (x86)\\",loc[ext],"MassAssayExporter.exe"))
  dir <- shQuote(dirname(u))
  fl <-shQuote(basename(u))
  fl2 <- shQuote(gsub(ext,"xlsx",fl))
  str <- paste("cd",dir,"&&",M,fl,fl2,sep = " ")
  shell(str)
}

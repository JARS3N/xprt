open_save_xl_wb<-function(u=getwd()){
  system(
      paste0(
      "Cscript",
      shQuote(normalizePath(system.file("/vbs/open_and_save_xl_workbooks.vbs", package="xprt"))),
      shQuote(normalizePath(u)),
      sep=" "
    )
  )
}

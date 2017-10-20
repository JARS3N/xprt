open_save_xl_wb2<-function(u=getwd()){
  system(
    paste(
      "Cscript",
      shQuote(normalizePath(system.file("/vbs/open_and_save_xl_workbooks.vbs", package="xprt"))),
      shQuote(normalizePath(u)),
      sep=" "
    )
  )
}

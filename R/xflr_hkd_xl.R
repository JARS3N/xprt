 xflr_hkd_xl<-function(path_in=getwd()){
 fls<- list.files(path=path_in,pattern='xflr$',full.names = T)
 renamed<-gsub("[.]xflr",".asyr",fls)
  n<-length(fls)
  if (n<1){
    message("no .xflr files found;go fish!")
    return(NULL)}else{
    file.rename(fls,renamed)
    xprt::export_xl(path_in);
    file.rename(renamed,fls)
    xprt::open_save_xl_wb(file.path(path_in,"export"))
  }
}

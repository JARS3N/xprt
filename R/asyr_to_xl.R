asyr_to_xl<-function(path_in=getwd()){
  n<-length(list.files(path=path_in,pattern='.asyr'))
  if (n>0){
    xprt::export_xl(path_in);
    xprt::open_save_xl_wb(file.path(path_in,"export"))
  }
}

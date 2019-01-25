ls_files<-function(){
lapply(ls(),function(u){dump(u,paste0(u,".R"),append=F)})
}

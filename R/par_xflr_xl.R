par_xflr_xl<-function(files){
  cl <- parallel::detectCores(logical = T)
  cluster <- makeCluster(cl)
  parallel::parLapply(cl = cluster, X = files, fun = xflr_xl)
  parallel::stopCluster(cluster)
}

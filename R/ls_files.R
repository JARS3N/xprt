ls_files <- function() {
  ls <- ls()
  files <- paste0(ls, ".R")
  Map(function(ls, file) {
    dump(ls, file, append = F)
    print(paste0("Created file: ",file))
  }, ls = ls, file = files) 
}

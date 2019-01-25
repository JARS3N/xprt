ls_files <- function(ls) {
  nyet <- lapply(ls, function(l) {
    fl <- paste0(l, ".R")
    dump(l, fl, append = F)
    message(paste0("Created file: ", fl))
  })
}

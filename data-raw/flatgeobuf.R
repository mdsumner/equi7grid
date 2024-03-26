f <- fs::dir_ls("data-raw", regexp = "fgb$")
library(terra)
library(equi7grid)
crs <- crs7()
v <- vector("list", length(crs))
for (i in seq_along(crs)) {
  v0 <- vect(f[i])
  crs(v0) <- crs[i]
  v[[i]] <- project(v0, "EPSG:4326")
}
dir.create("inst/extdata", recursive = T)
v <- vect(v)
v$crs <- crs

writeVector(v, "inst/extdata/equi7_longlat.fgb", filetype = "FlatGeobuf")

f <- fs::dir_ls("data-raw", regexp = "fgb$")
crs <- equi7grid::crs7()
layers <- names(crs)

## establish the dataset

system(sprintf("ogr2ogr data-raw/equi7grid_aeqd.gpkg %s -nln %s", f[1], layers[1]))

for (i in tail(seq_along(layers), -1)) {
  system(sprintf("ogr2ogr -update data-raw/equi7grid_aeqd.gpkg %s -nln %s", f[i], layers[i]))

}

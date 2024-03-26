f <- fs::dir_ls("data-raw", regexp = "fgb$")
crs <- equi7grid::crs7()
layers <- names(crs)

## establish the dataset

system(sprintf("ogr2ogr data-raw/equi7grid.gpkg %s -nln %s", f[1], layers[1]))

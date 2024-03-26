## code to prepare `DATASET` dataset goes here

base <- "https://github.com/TUW-GEO/Equi7Grid/raw/master/src/equi7grid/grids"
zones <- c("AF", "AN", "AS", "EU", "NA", "OC", "SA")
shp <- sprintf("EQUI7_V14_%s_PROJ_ZONE.shp", zones)
shps <- sprintf("/vsicurl/%s/%s/PROJ/%s", base, zones, shp)
#
# for (i in seq_along(shps)) {
#   system(sprintf("ogr2ogr data-raw/%s %s",
#                 gsub("shp$", "fgb", basename(shps[i])), shps[i]))
#
# }

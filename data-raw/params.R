crs <- equi7grid::crs7()

tab <- read.table(text  = unlist(strsplit(gsub("\\+no_defs", "", crs), " ")), sep = "=")
names(tab) <- c("param", "value")

tab$zone <- rep(names(crs), each = 7)
tab$param <- gsub("\\+", "", tab$param)
tab <- dplyr::filter(tab, param != "proj")
write.csv(tab, "data-raw/params.csv", row.names = F)

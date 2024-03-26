
#' equi7grid_crs
#'
#' The seven CRS, each named in a vector.
#' @name equi7grid_crs
#' @docType data
NULL


#' Return the 7 crs in a named vector
#'
#' @return character vector of PROJ strings
#' @export
#'
#' @importFrom utils data
#' @examples
#' crs7()
crs7 <- function() {
  e <- environment()
  data("equi7grid_crs", envir = e)
  e$equi7grid_crs
}

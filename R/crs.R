globalVariables("equi7grid_crs")

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
#' @examples
#' crs7()
crs7 <- function() {
  get("equi7grid_crs")
}

#' Elements of two vectors that are not found in both
#'
#' Complementary to the standard intersect() function, this function returns elements which are not common between two vectors
#'
#' @param x A vector
#' @param y Another vector
#' @keywords difference
#' @export
outersect <- function(x, y) {
  sort(c(setdiff(x, y),setdiff(y, x)))
}

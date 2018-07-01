#' Count all NA values in a list or vector
#'
#' Count NAs in a list or vector
#'
#' @param x Vector or list where to counts NAs
#' @keywords dateFormat
#' @export
countNAs <- function(x){
  n <- which(is.na(x)) %>% length
  return(n)
}

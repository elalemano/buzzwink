#' Remove last n characters from string
#'
#' Removes the last n positions from a string
#'
#' @param string original string
#' @param n number of positions to be removed from end
#' @keywords formatting
#' @export
removeFromEndString <- function(string, n){

newString <-gsub(paste(".{",n ,"}$", "",string))

return(newString)
}



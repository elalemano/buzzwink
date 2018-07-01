#' Remove spaces from string
#'
#' Removes all spaces from a string
#'
#' @param string original string
#' @keywords formatting
#' @export
removeSpacesString <- function(string){

newString <- gsub('\\s+', '', string)

return(newString)
}

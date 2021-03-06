#' Remove spaces from string
#'
#' Removes all spaces from a string
#'
#' @param string original string
#' @keywords formatting
#' @export
removeSpacesString <- function(string){

newString <- string %>% as.character %>% gsub('\\s+', '', .)

return(newString)
}

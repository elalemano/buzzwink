#' Remove last n characters from string
#'
#' Removes the last n positions from a string
#'
#' @param string original string
#' @param n number of positions to be removed from end
#' @keywords formatting
#' @export
removeFromEndString <- function(string, n){

newString <-  string %>% as.character %>% gsub(paste(".{",n ,"}$"), "",.)

return(newString)
}



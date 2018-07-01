#' Create tooltips
#'
#' Create Tooltips in HTML format with appropriate labels and breaks
#'
#' @param characterVector Named character vector
#' @keywords HTML, 
#' @export 

createTooltip <- function(characterVector){
  toolTip  <- paste(names(characterVector),characterVector, sep = ": ") %>% paste(., collapse = " <br> ") %>% HTML
  return(toolTip)
}

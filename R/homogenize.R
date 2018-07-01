#' Homogenize the column of a data frame in terms of formatting
#'
#' Harmonizes an unconsistently formatted  data frame column
#'
#' @param df A data frame
#' @param Column Column that should be harmonized
#' @keywords formatting
#' @export
homogenize      <- function(df, Column){

  if(length(Column)==1){
  df[[Column]] <- gsub('\\s+', '', df[[Column]])
  df[[Column]] <- gsub('-', '', df[[Column]])
  df[[Column]] <- gsub('\\.', '', df[[Column]])
  df[[Column]] <- gsub('/', '', df[[Column]])
  df[[Column]] <- df[,Column]%>% toupper
  } else if(length(Column)>1){

  for(i in 1:length(Column)){
  df[[Column[i]]] <- gsub('\\s+', '', df[[Column[i]]])
  df[[Column[i]]] <- gsub('-', '', df[[Column[i]]])
  df[[Column[i]]] <- gsub('\\.', '', df[[Column[i]]])
  df[[Column[i]]] <- gsub('/', '', df[[Column[i]]])
  df[[Column[i]]] <- df[,Column[i]]%>% toupper
    }
  }

  return(df)
}

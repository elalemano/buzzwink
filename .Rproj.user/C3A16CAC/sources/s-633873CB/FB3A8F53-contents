#' Format dates within data frame
#'
#' This function takes names of columns in a data frame and converts the date format
#'
#' @param df A data frame
#' @param column A column name or a vector of column names
#' @param originalFormat Specify which format the orignal columns have (needs to be consistent)
#' @param newFormat Specify which format to convert to
#' @keywords dateFormat
#' @export
dateFormate    <- function(df, Column, originalFormat = "%Y-%m-%d", newFormat = "%m/%d/%Y"){
  ifelse(!Column %in% colnames(df), "Error: Column name not found", NA)
  if(length(Column)==1){
    df[[Column]]           <- as.Date(df[[Column]], format = originalFormat) %>% format(.,newFormat)
    return(df)
  }
  else if(length(Column)>1){
    for (i in 1:length(Column)){
      df[[Column[i]]]           <- as.Date(df[[Column[i]]], format = originalFormat) %>% format(.,newFormat)
    }
    return(df)
  }

}

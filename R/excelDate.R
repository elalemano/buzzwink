#' Adds an apostrophe to a column so it does not get automatically formatted in excel
#'
#' This function preserves the format of a column for use in excel
#'
#' @param df A data frame
#' @param column Name of the column which should be preserved in current format
#' @keywords excel, Date
#' @export
excelDate <- function(df, column){
  df[[column]] <- paste("'", df[[column]], sep = "")
  return(df)
}

#' Get relative row and column indices
#'
#' This function calculates the relative row and column indices of a grid that is the subset of a larger grid
#'
#' @param df A data frame
#' @param rowName absolute row of larger grid
#' @param colName absolute column  of larger grid
#' @keywords relativeRowAndColumn
#' @export
relativeRowAndColumn <- function(df, rowName = "ABSOLUTE_RANGE", colName = "ABSOLUTE_COLUMN"){
  df$ROW <- df[,rowName] - (df[,rowName] %>% min - 1)
  df$COLUMN <- df[,colName] - (df[,colName] %>% min - 1)
  return(df)
}

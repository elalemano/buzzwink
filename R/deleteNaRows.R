#' Delelte rows with a lot of NAs
#'
#' Keep only rows that have a certain number of non NA values
#'
#' @param df A data frame
#' @param n Cuttoff value for number of values that should not be NA (excluding n)
#' @keywords NA
#' @export
deleteNaRows <- function(df, n=nrow(df)){
  df <- df[rowSums(!is.na(df)) > n,]
  return(df)
}

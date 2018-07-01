#' Difference in days
#'
#' Calculates the difference in daays of two dates
#'
#' @param x A date
#' @param n Another date
#' @param format Character vector of date format used, defaults to "%m/%d/%Y"
#' @keywords time, difference
#' @export
diffDays <- function(x,y, format="%m/%d/%Y"){

dayDifference <- difftime(as.Date(strptime(x, format = format)),as.Date(strptime(y,format = format)), units = "days") %>% as.numeric

return(dayDifference)
}

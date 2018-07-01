#' Smaller queries to data base
#'
#' If the query list needed is less than 1001 of length, this function can be used with a direct sql, not using an R object.
#' Function will terminate connection upon completion of the query. Requires working installation of ROracle package
#'
#' @param sql The character string sql query in standard Oracle sql language
#' @param ORALCE_UID Oracle data base user ID, set up as system variable
#' @param ORALCE_PASS Oracle data base password, set up as system variable
#' @param CON_STRING Oracle data base connections string, set up as system variable
#' @export
queryDb <- function(sql, user_id = Sys.getenv("ORACLE_UID"), password = Sys.getenv("ORACLE_PASS"), conString = Sys.getenv("ORACLE_CON_STRING"), data=NULL ){
  con <- getDbConnection(user_id, password, conString)
  on.exit(ROracle::dbDisconnect(con))
  result <- ROracle::dbGetQuery(con, sql, data)
  return(result)
}

#' Establish connection to Oracle data base
#'
#' Establish a connection to Oracle data base. Should not be called directly but is used by query functions
#'
#' @param ORALCE_UID Oracle data base user ID, set up as system variable
#' @param ORALCE_PASS Oracle data base password, set up as system variable
#' @param CON_STRING Oracle data base connections string, set up as system variable
#' @export
getDbConnection <-function(user_id = Sys.getenv("ORACLE_UID"), password = Sys.getenv("ORACLE_PASS"), conString=Sys.getenv("CON_STRING")) {
  options(java.parameters = "-Xmx20g")
  ora <- ROracle::Oracle()
  ROracle::dbConnect(ora, user_id,password,conString)
}

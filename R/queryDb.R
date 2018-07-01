#' Smaller queries to data base
#'
#' If the query list needed is less than 1001 of length, this function can be used with a direct sql, not using an R object.
#' Function will terminate connection upon completion of the query
#'
#' @param sql The character string sql query in standard Oracle sql language
#' @param ORALCE_UID Oracle data base user ID, set up as system variable
#' @param ORALCE_PASS Oracle data base password, set up as system variable
#' @param CON_STRING Oracle data base connections string, set up as system variable
#' @export
queryDb <- function(sql, user_id = Sys.getenv("ORACLE_UID"), password = Sys.getenv("ORACLE_PASS"), conString ="(DESCRIPTION_LIST= (LOAD_BALANCE=off)(FAILOVER=on) (DESCRIPTION=(ADDRESS_LIST= (LOAD_BALANCE=on) (ADDRESS= (PROTOCOL=TCP)(HOST=prd-scan.monsanto.com)(PORT=1521)) ) (CONNECT_DATA=(SERVICE_NAME=oltppsvc.monsanto.com)(SERVER=DEDICATED)) (RETRY_COUNT=1) (TRANSPORT_CONNECT_TIMEOUT = 3) (CONNECT_TIMEOUT=30) ) (DESCRIPTION=(ADDRESS_LIST= (LOAD_BALANCE=on) (ADDRESS=(PROTOCOL=TCP)(HOST=ppri-scan.monsanto.com)(PORT=1521)) ) (CONNECT_DATA=(SERVICE_NAME=oltppsvc.monsanto.com)(SERVER=DEDICATED)) (RETRY_COUNT=1) (TRANSPORT_CONNECT_TIMEOUT = 3) (CONNECT_TIMEOUT=30) ) )"
                    , data=NULL ){
  con <- getDbConnection(user_id, password, conString)
  on.exit(ROracle::dbDisconnect(con))
  result <- ROracle::dbGetQuery(con, sql, data)
  return(result)
}

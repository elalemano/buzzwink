#' Query data base with large lists
#'
#' For queries with lists of more than 1000 length, this functions splits the list, does the query and rejoins to return the complete result
#'
#' @param sql_frame The character string that represents the frame for the R object to be queried
#' @param queryEntry Character or numeric vector that represents te list of search terms
#' @param ORALCE_UID Oracle data base user ID, set up as system variable
#' @param ORALCE_PASS Oracle data base password, set up as system variable
#' @param ORACLE_CON_STRING Oracle data base connections string, set up as system variable
#' @export
entryQueryDb <- function(sql_frame,queryEntry,data =NULL){

  conString <- Sys.getenv("ORACLE_CON_STRING")
  con       <- getDbConnection(user_id = Sys.getenv("ORACLE_UID"), password = Sys.getenv("ORACLE_PASS"), conString)


  if(is.character(queryEntry)){
    for (c in 1:length(queryEntry)){
      queryEntry[c] <- paste("'",queryEntry[c],"'", sep="")
    }
  }

  sublist <- split(queryEntry, ceiling(seq_along(queryEntry)/1000))

  result <- list()
  for (i in 1:length(sublist)){

    sql <- paste(sql_frame,"(", paste(sublist[[i]], collapse = ", "), ")", sep = " ")

    result[[i]] <- ROracle::dbGetQuery(con, sql, data)

  }
  queryResult <- do.call("rbind", result)
  ROracle::dbDisconnect(con)
  return(queryResult)
}



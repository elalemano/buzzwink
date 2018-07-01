#' For cells to be duplicated
#'
#' Function that can duplicate Rows based on comma separated values in one column
#'
#' @param df The data frame containing the column with values to be separated
#' @param commaSeparatedColumn Column with the values
#' @export
duplicateCommaSeparatedRows <- function(df, commaSeparatedColumn){

separateElements <- sapply(df[,commaSeparatedColumn], FUN = function(x) strsplit(x=x,split=", "))

reps <- lapply(separateElements, length) %>% unlist

newValues <- separateElements %>% unlist

listOfSmallDFs <- list()
for (i in 1:nrow(df)){
    listOfDuplicatedRows <- list()
    for (j in 1:reps[i]){
        listOfDuplicatedRows[[j]] <- df[i,]
        }
    listOfSmallDFs[[i]] <- do.call("rbind", listOfDuplicatedRows)
    }

newDf <- do.call("rbind",listOfSmallDFs)

newDf[,commaSeparatedColumn] <- newValues

return(newDf)
}

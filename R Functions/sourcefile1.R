#Initial assignment of object for which functions are based on
TFtot <- read.table(file.choose(), header = TRUE, sep = ",", fill = TRUE, quote = "", row.names = NULL)

TFnoqtot <- TFtot
TFnoqtot$Quote <- NULL
TFcategory1<- subset(TFnoqtot, grepl("[1]",TFtot$Category))
TFcategory2<- subset(TFnoqtot, grepl("[2]",TFtot$Category))
TFcategory3<- subset(TFnoqtot, grepl("[3]",TFtot$Category))



#' category function
#'
#' @param x Either 1 2 or 3 referencing healthy wealthy or wise
#'
#' @return Will return all guests included in that category
#' @export
#' @import
#'
#' @examples
category <- function(x) {
    print(subset(TFnoqtot, grepl(x,TFtot$Category)))
}

#' pick function
#'
#' @param x The last name of person
#'
#' @return The information in dataset about person
#' @export
#'
#' @examples
pick <- function(x) {
    print(subset(TFtot, grepl(x, TFtot$Last)))
}


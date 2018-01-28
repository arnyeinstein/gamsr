#' Function to read and save the information on all the sets, scalars, parameters and variables from a gdx file. Function used in import_gdxfile()
#' @param filename Name of the gdxfile to be imported.
#' @return Dataframe "parinfo" with info on all sets, scalars, parameters, and variables in the gdxfile
#' @export read_info_gdxfile
#' @examples
#' \dontrun{read_info_gdxfile("trnsport.gdx")}

read_info_gdxfile <- function(filename) {
  ## The output of the gdxinfo() command contains a table with all the
  ## elements, their dimension, type and description
  temp <- gdxrrw::gdxInfo(filename, dump = FALSE, returnDF = TRUE)
  gams_types <- c("sets", "parameters", "variables")
  type_index <- match(gams_types, names(temp))
  length(type_index) == length(gams_types) # build error message and stop
  for (i in type_index) {
    if ( dim(temp[[i]])[1] > 0) temp[[i]]$type <- stringr::str_sub(names(temp)[i], 1, nchar(names(temp)[i])-1)
  }
  temp2 <- rbind(temp$sets, temp$parameters, temp$variables) # change: benutzung von gamstypes
  gams_info <- c("name", "dim", "text", "domnames", "type")
  info_index <- match(gams_info, names(temp2))
  length(info_index) == length(gams_info) # build error message and stop
  parinfo <- temp2[, info_index]

  for (i in 1:length(parinfo[, 1])) {
    if (nchar(parinfo$text[i]) == 0) {
      parinfo[i, "text"] <- "Warning: no description"
    }
  }
  return(parinfo)
}

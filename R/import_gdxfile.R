#' Function to import all the sets, scalars, parameters and variables from a gdx file
#' @param filename Name of the gdxfile to be imported.
#' @param selection Character vector with information on which sets, scalars, parameters or variables to read
#' @return All sets, scalars, parameters, and variables in the gdxfile
#' @export import_gdxfile
#' @examples
#' \dontrun{import_gdxfile("results.gdx")}

import_gdxfile <- function(filename, selection = NULL) {
  parinfo <- read_info_gdxfile(filename)
  if (!is.null(selection)) {
    select_index <- match(selection, parinfo$name)
    parinfo <- parinfo[select_index, ]
  }
  # Save all information and data in one big list we can go through
  write("l.all <- list()", file = "gdxtext.R", append = FALSE)
  text <- ""
  textr <- ""
  for (i in 1:length(parinfo[, 1])) {
    sq <- " "
    # Add squeeze is false if parameter
    if (parinfo[i, "type"] == "parameter") {
      sq <- ", squeeze = FALSE"
    }
    ## produce the gdxrrw command for reading a parameter
    if ((parinfo[i, "type"] == "parameter") &
        parinfo[i, "dim"] != 0) {
      text[i] <-
        paste(
          parinfo[i, "name"],
          " <- ",
          "tibble::as_data_frame(gdxrrw::rgdx.param('",
          filename,
          "', '",
          parinfo[i, "name"],
          "', compress = TRUE, ts = TRUE",
          sq,
          "))", parinfo[i, "ame"],
          "%>% map_if(is.factor, as.character) %>% as_data_frame ->",
          parinfo[i, "name"],
          sep = ""
        )
      texta <- paste("attributes(", parinfo[i, "name"],
                     ")$type <- 'parameter'", sep = "")
    }
    ## produce the gdxrrw command for reading a set
    if ((parinfo[i, "type"] == "set") & parinfo[i, "dim"] != 0) {
      text[i] <- paste(
        parinfo[i, "name"],
        " <- ",
        "gdxrrw::rgdx.set('",
        filename,
        "', '",
        parinfo[i, "name"],
        "', compress = TRUE, ts = TRUE, te = TRUE",
        sq,
        ")",
        sep = ""
      )
      texta <- paste("attributes(", parinfo[i, "name"],
                     ")$type <- 'parameter'", sep = "")
    }
    ## produce the gdxrrw command for reading a scalar
    if (parinfo[i, "type"] == "parameter" &
        parinfo[i, "dim"] == 0) {
      text[i] <-
        paste(
          parinfo[i, "name"],
          " <- ",
          "gdxrrw::rgdx.scalar('",
          filename,
          "', '",
          parinfo[i, "name"],
          "'",
          ", ts = TRUE)",
          sep = ""
        )
      texta <- paste("attributes(", parinfo[i, "name"],
                     ")$type <- 'scalar'", sep = "")
    }
    ## produce the gdxrrw command for reading a variable
    if (parinfo[i, "type"] == "variable") {
      text[i] <- paste(
        parinfo[i, "name"],
        " <- ",
        "gdxrrw::rgdx(\"",
        filename,
        "\", list(name =\"",
        parinfo[i, "name"],
        "\", field = \"all\"))",
        sep = ""
      )
      texta <- paste(
        "attributes(",
        parinfo[i, "name"],
        ")$type <- 'variable'",
        "\n",
        parinfo[i, "name"],
        " <- tibble::as_data_frame(rgdx.var(",
        parinfo[i, "name"],
        ")) \n ", parinfo[i, "name"],
        "%>% map_if(is.factor, as.character) %>% as_data_frame ->",
        parinfo[i, "name"],
        sep = ""
      )
    }
    textl <-
      paste("l.all[[", i, "]] <- list(name ='", parinfo[i, "name"],
            sep = "")
    textl <-
      paste(textl, "', data = ", parinfo[i, "name"], sep = "")
    textl <- paste(textl, ", description = '", parinfo[i, "text"],
                   sep = "")
    textl <-
      paste(textl, "'", ", type = '", parinfo[i, "type"], "')",
            sep = "")
    textn <-
      paste("names(l.all)[", i, "] ='", parinfo[i, "name"], "'",
            sep = "")
    # Replace * in parameters, sets or variables with "index"
    textr[i]  <-
      paste(
        "names(",
        parinfo[i, "name"],
        ") <- gsub(x = names(",
        parinfo[i, "name"],
        "), pattern = '*', replacement = 'index', fixed=TRUE)",
        sep = ""
      )
    text[i] <-
      paste(text[i], texta, textl, textn, textr[i], sep = "\n ")
  }
  ## End for loop

  ## Write the commands to a R file
  write(text, "gdxtext.R", sep = "\n", append = TRUE)
  source("gdxtext.R")
} # End function

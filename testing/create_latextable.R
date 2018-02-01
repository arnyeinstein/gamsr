#' Function to generate a LaTeX table from a dataframe
#' @param filename Dataframe
#' @param digits Vector with number of precision digits. If not used: 1
#' @param perc  Vector pointing to columns containing percentage values
#' @return File with labelled table
#' @export create_latextable
#' @examples
#' \dontrun{create_latextable(dfmm digits = c(1,2,1), perc = c(1,2,1))}


r_digits <- function() {

}

create_latextable <- function(df, digits = NULL, perc = NULL) {
  dfname <- deparse(substitute(df))
  ncolumns <- dim(df)[2]
  if (is.null(digits)) digits = rep(1, ncolumns-1)
  if (is.null(perc)) perc = rep(0, ncolumns-1)
  dflabel <- paste("tab:", dfname, sep="")
  alignment <- tibble::as_tibble(sapply(df, class))
  alignment <- with(alignment, ifelse(alignment == "numeric", "r", "l"))
  df <- dplyr::mutate_if(df, is.numeric, .funs(ifelse(abs(.) > 100, r_digits(.,0), r_digits(.,2))))

  filename      <- paste(dirtables,"/tbl", dfname, ".tex",sep = "")
  if (exists("r_perc", where = df)) {
    df <- dplyr::mutate(df, "Percent change" = paste(r_perc, "%", sep = "")) %>%
      dplyr::select(-r_perc)
  }
  df <- dplyr::mutate_if(df, is.numeric,
                  funs(ifelse(abs(.) > 100, r_digits(.,0), r_digits(.,2))))
  filename   <- paste(dirtables,"/tbl", dfname, ".tex",sep = "")
  dftable    <- table::xtable(df, label = dflabel, align = alignment)
  filename      <- paste(dirtables,"/tbl", dfname, ".tex",sep = "")
  print(dftable, floating = FALSE, file = filename, include.rownames = F)
}

df <- tibble::tibble(a = c("a", "b", "c"), c1 = c(1,2,1), c2 = c(110, 200, -300), c3 = c(0.12, 0.13, 0.1))
df

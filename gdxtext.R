l.all <- list()
z <- gdxrrw::rgdx("trnsport.gdx", list(name ="z", field = "all"))
 attributes(z)$type <- 'variable'
z <- tibble::as_data_frame(rgdx.var(z))
 l.all[[1]] <- list(name ='z', data = z, description = 'total transportation costs in thousands of dollars', type = 'variable')
 names(l.all)[1] ='z'
 names(z) <- gsub(x = names(z), pattern = '*', replacement = 'index', fixed=TRUE)
d <- tibble::as_data_frame(gdxrrw::rgdx.param('trnsport.gdx', 'd', compress = TRUE, squeeze = FALSE))
 attributes(d)$type <- 'parameter'
 l.all[[2]] <- list(name ='d', data = d, description = 'distance in thousands of miles', type = 'parameter')
 names(l.all)[2] ='d'
 names(d) <- gsub(x = names(d), pattern = '*', replacement = 'index', fixed=TRUE)

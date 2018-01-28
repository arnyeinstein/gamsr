l.all <- list()
i <- gdxrrw::rgdx.set('./trnsport.gdx', 'i', compress = TRUE )
 attributes(i)$type <- 'parameter'
 l.all[[1]] <- list(name ='i', data = i, description = 'canning plants', type = 'set')
 names(l.all)[1] ='i'
 names(i) <- gsub(x = names(i), pattern = '*', replacement = 'index', fixed=TRUE)
j <- gdxrrw::rgdx.set('./trnsport.gdx', 'j', compress = TRUE )
 attributes(j)$type <- 'parameter'
 l.all[[2]] <- list(name ='j', data = j, description = 'markets', type = 'set')
 names(l.all)[2] ='j'
 names(j) <- gsub(x = names(j), pattern = '*', replacement = 'index', fixed=TRUE)
a <- tibble::as_data_frame(gdxrrw::rgdx.param('./trnsport.gdx', 'a', compress = TRUE, squeeze = FALSE))
 attributes(a)$type <- 'parameter'
 l.all[[3]] <- list(name ='a', data = a, description = 'capacity of plant i in cases', type = 'parameter')
 names(l.all)[3] ='a'
 names(a) <- gsub(x = names(a), pattern = '*', replacement = 'index', fixed=TRUE)
b <- tibble::as_data_frame(gdxrrw::rgdx.param('./trnsport.gdx', 'b', compress = TRUE, squeeze = FALSE))
 attributes(b)$type <- 'parameter'
 l.all[[4]] <- list(name ='b', data = b, description = 'demand at market j in cases', type = 'parameter')
 names(l.all)[4] ='b'
 names(b) <- gsub(x = names(b), pattern = '*', replacement = 'index', fixed=TRUE)
d <- tibble::as_data_frame(gdxrrw::rgdx.param('./trnsport.gdx', 'd', compress = TRUE, squeeze = FALSE))
 attributes(d)$type <- 'parameter'
 l.all[[5]] <- list(name ='d', data = d, description = 'distance in thousands of miles', type = 'parameter')
 names(l.all)[5] ='d'
 names(d) <- gsub(x = names(d), pattern = '*', replacement = 'index', fixed=TRUE)
f <- gdxrrw::rgdx.scalar('./trnsport.gdx', 'f')
 attributes(f)$type <- 'scalar'
 l.all[[6]] <- list(name ='f', data = f, description = 'freight in dollars per case per thousand miles', type = 'parameter')
 names(l.all)[6] ='f'
 names(f) <- gsub(x = names(f), pattern = '*', replacement = 'index', fixed=TRUE)
c <- tibble::as_data_frame(gdxrrw::rgdx.param('./trnsport.gdx', 'c', compress = TRUE, squeeze = FALSE))
 attributes(c)$type <- 'parameter'
 l.all[[7]] <- list(name ='c', data = c, description = 'transport cost in thousands of dollars per case', type = 'parameter')
 names(l.all)[7] ='c'
 names(c) <- gsub(x = names(c), pattern = '*', replacement = 'index', fixed=TRUE)
x <- gdxrrw::rgdx("./trnsport.gdx", list(name ="x", field = "all"))
 attributes(x)$type <- 'variable'
x <- tibble::as_data_frame(rgdx.var(x))
 l.all[[8]] <- list(name ='x', data = x, description = 'shipment quantities in cases', type = 'variable')
 names(l.all)[8] ='x'
 names(x) <- gsub(x = names(x), pattern = '*', replacement = 'index', fixed=TRUE)
z <- gdxrrw::rgdx("./trnsport.gdx", list(name ="z", field = "all"))
 attributes(z)$type <- 'variable'
z <- tibble::as_data_frame(rgdx.var(z))
 l.all[[9]] <- list(name ='z', data = z, description = 'total transportation costs in thousands of dollars', type = 'variable')
 names(l.all)[9] ='z'
 names(z) <- gsub(x = names(z), pattern = '*', replacement = 'index', fixed=TRUE)

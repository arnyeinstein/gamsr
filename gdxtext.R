l.all <- list()
Merged_set_1 <- gdxrrw::rgdx.set('./merged.gdx', 'Merged_set_1' )
 attributes(Merged_set_1)$type <- 'parameter'
 l.all[[1]] <- list(name ='Merged_set_1', data = Merged_set_1, description = 'Merge set', type = 'set')
 names(l.all)[1] ='Merged_set_1'
 names(Merged_set_1) <- gsub(x = names(Merged_set_1), pattern = '*', replacement = 'index', fixed=TRUE)
results_gdp <- gdxrrw::rgdx.param('./merged.gdx', 'results_gdp', squeeze = FALSE)
 attributes(results_gdp)$type <- 'parameter'
 l.all[[2]] <- list(name ='results_gdp', data = results_gdp, description = 'Warning: no description', type = 'parameter')
 names(l.all)[2] ='results_gdp'
 names(results_gdp) <- gsub(x = names(results_gdp), pattern = '*', replacement = 'index', fixed=TRUE)
results_r <- gdxrrw::rgdx.param('./merged.gdx', 'results_r', squeeze = FALSE)
 attributes(results_r)$type <- 'parameter'
 l.all[[3]] <- list(name ='results_r', data = results_r, description = 'Warning: no description', type = 'parameter')
 names(l.all)[3] ='results_r'
 names(results_r) <- gsub(x = names(results_r), pattern = '*', replacement = 'index', fixed=TRUE)
results_r_reg <- gdxrrw::rgdx.param('./merged.gdx', 'results_r_reg', squeeze = FALSE)
 attributes(results_r_reg)$type <- 'parameter'
 l.all[[4]] <- list(name ='results_r_reg', data = results_r_reg, description = 'Warning: no description', type = 'parameter')
 names(l.all)[4] ='results_r_reg'
 names(results_r_reg) <- gsub(x = names(results_r_reg), pattern = '*', replacement = 'index', fixed=TRUE)
results_r_h <- gdxrrw::rgdx.param('./merged.gdx', 'results_r_h', squeeze = FALSE)
 attributes(results_r_h)$type <- 'parameter'
 l.all[[5]] <- list(name ='results_r_h', data = results_r_h, description = 'Warning: no description', type = 'parameter')
 names(l.all)[5] ='results_r_h'
 names(results_r_h) <- gsub(x = names(results_r_h), pattern = '*', replacement = 'index', fixed=TRUE)
results_a_r <- gdxrrw::rgdx.param('./merged.gdx', 'results_a_r', squeeze = FALSE)
 attributes(results_a_r)$type <- 'parameter'
 l.all[[6]] <- list(name ='results_a_r', data = results_a_r, description = 'Warning: no description', type = 'parameter')
 names(l.all)[6] ='results_a_r'
 names(results_a_r) <- gsub(x = names(results_a_r), pattern = '*', replacement = 'index', fixed=TRUE)
results_f_a_r <- gdxrrw::rgdx.param('./merged.gdx', 'results_f_a_r', squeeze = FALSE)
 attributes(results_f_a_r)$type <- 'parameter'
 l.all[[7]] <- list(name ='results_f_a_r', data = results_f_a_r, description = 'Warning: no description', type = 'parameter')
 names(l.all)[7] ='results_f_a_r'
 names(results_f_a_r) <- gsub(x = names(results_f_a_r), pattern = '*', replacement = 'index', fixed=TRUE)
results_f_r <- gdxrrw::rgdx.param('./merged.gdx', 'results_f_r', squeeze = FALSE)
 attributes(results_f_r)$type <- 'parameter'
 l.all[[8]] <- list(name ='results_f_r', data = results_f_r, description = 'Warning: no description', type = 'parameter')
 names(l.all)[8] ='results_f_r'
 names(results_f_r) <- gsub(x = names(results_f_r), pattern = '*', replacement = 'index', fixed=TRUE)
results_a_c_r <- gdxrrw::rgdx.param('./merged.gdx', 'results_a_c_r', squeeze = FALSE)
 attributes(results_a_c_r)$type <- 'parameter'
 l.all[[9]] <- list(name ='results_a_c_r', data = results_a_c_r, description = 'Warning: no description', type = 'parameter')
 names(l.all)[9] ='results_a_c_r'
 names(results_a_c_r) <- gsub(x = names(results_a_c_r), pattern = '*', replacement = 'index', fixed=TRUE)
results_c_a_h_r <- gdxrrw::rgdx.param('./merged.gdx', 'results_c_a_h_r', squeeze = FALSE)
 attributes(results_c_a_h_r)$type <- 'parameter'
 l.all[[10]] <- list(name ='results_c_a_h_r', data = results_c_a_h_r, description = 'Warning: no description', type = 'parameter')
 names(l.all)[10] ='results_c_a_h_r'
 names(results_c_a_h_r) <- gsub(x = names(results_c_a_h_r), pattern = '*', replacement = 'index', fixed=TRUE)
results_c_r <- gdxrrw::rgdx.param('./merged.gdx', 'results_c_r', squeeze = FALSE)
 attributes(results_c_r)$type <- 'parameter'
 l.all[[11]] <- list(name ='results_c_r', data = results_c_r, description = 'Warning: no description', type = 'parameter')
 names(l.all)[11] ='results_c_r'
 names(results_c_r) <- gsub(x = names(results_c_r), pattern = '*', replacement = 'index', fixed=TRUE)
results_ins_r <- gdxrrw::rgdx.param('./merged.gdx', 'results_ins_r', squeeze = FALSE)
 attributes(results_ins_r)$type <- 'parameter'
 l.all[[12]] <- list(name ='results_ins_r', data = results_ins_r, description = 'Warning: no description', type = 'parameter')
 names(l.all)[12] ='results_ins_r'
 names(results_ins_r) <- gsub(x = names(results_ins_r), pattern = '*', replacement = 'index', fixed=TRUE)
results_ins_f_r <- gdxrrw::rgdx.param('./merged.gdx', 'results_ins_f_r', squeeze = FALSE)
 attributes(results_ins_f_r)$type <- 'parameter'
 l.all[[13]] <- list(name ='results_ins_f_r', data = results_ins_f_r, description = 'Warning: no description', type = 'parameter')
 names(l.all)[13] ='results_ins_f_r'
 names(results_ins_f_r) <- gsub(x = names(results_ins_f_r), pattern = '*', replacement = 'index', fixed=TRUE)
results_c_h_r <- gdxrrw::rgdx.param('./merged.gdx', 'results_c_h_r', squeeze = FALSE)
 attributes(results_c_h_r)$type <- 'parameter'
 l.all[[14]] <- list(name ='results_c_h_r', data = results_c_h_r, description = 'Warning: no description', type = 'parameter')
 names(l.all)[14] ='results_c_h_r'
 names(results_c_h_r) <- gsub(x = names(results_c_h_r), pattern = '*', replacement = 'index', fixed=TRUE)
results_c_r_reg <- gdxrrw::rgdx.param('./merged.gdx', 'results_c_r_reg', squeeze = FALSE)
 attributes(results_c_r_reg)$type <- 'parameter'
 l.all[[15]] <- list(name ='results_c_r_reg', data = results_c_r_reg, description = 'Warning: no description', type = 'parameter')
 names(l.all)[15] ='results_c_r_reg'
 names(results_c_r_reg) <- gsub(x = names(results_c_r_reg), pattern = '*', replacement = 'index', fixed=TRUE)
results_ins_insp_r <- gdxrrw::rgdx.param('./merged.gdx', 'results_ins_insp_r', squeeze = FALSE)
 attributes(results_ins_insp_r)$type <- 'parameter'
 l.all[[16]] <- list(name ='results_ins_insp_r', data = results_ins_insp_r, description = 'Warning: no description', type = 'parameter')
 names(l.all)[16] ='results_ins_insp_r'
 names(results_ins_insp_r) <- gsub(x = names(results_ins_insp_r), pattern = '*', replacement = 'index', fixed=TRUE)
results_f_r_reg <- gdxrrw::rgdx.param('./merged.gdx', 'results_f_r_reg', squeeze = FALSE)
 attributes(results_f_r_reg)$type <- 'parameter'
 l.all[[17]] <- list(name ='results_f_r_reg', data = results_f_r_reg, description = 'Warning: no description', type = 'parameter')
 names(l.all)[17] ='results_f_r_reg'
 names(results_f_r_reg) <- gsub(x = names(results_f_r_reg), pattern = '*', replacement = 'index', fixed=TRUE)

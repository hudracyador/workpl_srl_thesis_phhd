install.packages('RcmdrMisc')
require(psych)
require(RcmdrMisc)

KMO(subset_srl_f)

ev <- eigen(cor(subset_wla))
ev$values
scree(subset_wla, pc=FALSE)
fa.parallel(subset_wla, fa="fa")



princomp(subset_srl_f)

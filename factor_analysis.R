# install.packages("corrr")
# install.packages("ggcorrplot")
# install.packages("FactoMineR")
# install.packages('factoextra')

library(corrr)
library(ggcorrplot)
library("FactoMineR")
library(factoextra)
library(psych)
library(GPArotation)

# WLA Prinicpal component analysis
wla_normalized <- scale(subset_wla)
head(wla_normalized)

cortest.bartlett(wla_normalized)
kmo_wla <- KMO(wla_normalized)
kmo_wla

wla_corr_matrix <- cor(wla_normalized)
ggcorrplot(wla_corr_matrix)

# wla_pca <- princomp(wla_corr_matrix)
# summary(wla_pca)

# fviz_eig(wla_pca, addlabels = TRUE)
# factoextra::fviz_pca_var(wla_pca, col.var = "black")
# fviz_cos2(wla_pca, choice = "var", axes = 1:2)
wla_pca <- psych::principal(wla_corr_matrix, rotate = "none")
wla_pca

# SRL-F Prinicpal component analysis
srl_f_normalized <- scale(subset_srl_f)
head(srl_f_normalized)

cortest.bartlett(srl_f_normalized)
kmo_srl_f <- KMO(srl_f_normalized)
kmo_srl_f

srl_f_corr_matrix <- cor(srl_f_normalized)
ggcorrplot(srl_f_corr_matrix)

# srl_f_pca <- princomp(srl_f_corr_matrix)
# summary(srl_f_pca)

# fviz_eig(srl_f_pca, addlabels = TRUE)
# fviz_pca_var(srl_f_pca, col.var = "black")
# fviz_cos2(srl_f_pca, choice = "var", axes = 1:2)
srl_f_pca <- psych::principal(srl_f_corr_matrix, nfactors = 4, rotate = "none")
srl_f_pca
srl_f_pca_kaiser <- psych::kaiser(srl_f_pca, rotate = "Varimax")
srl_f_pca_kaiser

# SRL-P Prinicpal component analysis
subset_srl_p_pca <- subset_srl_p[,-c(13, 14, 18, 19)]
View(subset_srl_p_pca)

srl_p_normalized <- scale(subset_srl_p_pca)
head(srl_p_normalized)

cortest.bartlett(srl_p_normalized)
kmo_srl_p <- KMO(srl_p_normalized)
kmo_srl_p

srl_p_corr_matrix <- cor(srl_p_normalized)
ggcorrplot(srl_p_corr_matrix)

# srl_p_pca <- princomp(srl_p_corr_matrix)
# summary(srl_p_pca)

# fviz_eig(srl_p_pca, addlabels = TRUE)
# fviz_pca_var(srl_p_pca, col.var = "black")
# fviz_cos2(srl_p_pca, choice = "var", axes = 1:2)
srl_p_pca <- psych::principal(srl_p_corr_matrix, nfactors = 3, rotate = "none")
srl_p_pca_kaiser <- psych::kaiser(srl_p_pca, rotate = "Varimax")
srl_p_pca_kaiser

# SRL-SR Prinicpal component analysis
srl_sr_normalized <- scale(subset_srl_sr)
head(srl_sr_normalized)

cortest.bartlett(srl_sr_normalized)
kmo_srl_sr <- KMO(srl_sr_normalized)
kmo_srl_sr

srl_sr_corr_matrix <- cor(srl_sr_normalized)
ggcorrplot(srl_sr_corr_matrix)

# srl_sr_pca <- princomp(srl_sr_corr_matrix)
# summary(srl_sr_pca)

# fviz_eig(srl_sr_pca, addlabels = TRUE)
# fviz_pca_var(srl_sr_pca, col.var = "black")
# fviz_cos2(srl_sr_pca, choice = "var", axes = 1:2)
srl_sr_pca <- psych::principal(srl_sr_corr_matrix, nfactors = 2, rotate = "none")
srl_sr_pca_kaiser <- psych::kaiser(srl_sr_pca, rotate = "Varimax")
srl_sr_pca_kaiser


# WLC Prinicpal component analysis
wlc_normalized <- scale(subset_wlc)
head(wlc_normalized)

cortest.bartlett(wlc_normalized)
kmo_wlc <- KMO(wlc_normalized)
kmo_wlc

wlc_corr_matrix <- cor(wlc_normalized)
ggcorrplot(wlc_corr_matrix)

# wlc_pca <- princomp(wlc_corr_matrix)
# summary(wlc_pca)

# fviz_eig(wlc_pca, addlabels = TRUE)
# factoextra::fviz_pca_var(wlc_pca, col.var = "black")
# fviz_cos2(wlc_pca, choice = "var", axes = 1:2)
psych::principal(wlc_corr_matrix, rotate = "none")

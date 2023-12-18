# install.packages("corrr")
# install.packages("ggcorrplot")
# install.packages("FactoMineR")
# install.packages('factoextra')

library(corrr)
library(ggcorrplot)
library("FactoMineR")
library(factoextra)

# WLA Prinicpal component analysis
wla_normalized <- scale(subset_wla)
head(wla_normalized)

wla_corr_matrix <- cor(wla_normalized)
ggcorrplot(wla_corr_matrix)

wla_pca <- princomp(wla_corr_matrix)
summary(wla_pca)

fviz_eig(wla_pca, addlabels = TRUE)
fviz_pca_var(wla_pca, col.var = "black")
fviz_cos2(wla_pca, choice = "var", axes = 1:2)

# SRL-F Prinicpal component analysis
srl_f_normalized <- scale(subset_srl_f)
head(srl_f_normalized)

srl_f_corr_matrix <- cor(srl_f_normalized)
ggcorrplot(srl_f_corr_matrix)

srl_f_pca <- princomp(srl_f_corr_matrix)
summary(srl_f_pca)

fviz_eig(srl_f_pca, addlabels = TRUE)
fviz_pca_var(srl_f_pca, col.var = "black")
fviz_cos2(srl_f_pca, choice = "var", axes = 1:2)

# SRL-P Prinicpal component analysis
srl_p_normalized <- scale(subset_srl_p)
head(srl_p_normalized)

srl_p_corr_matrix <- cor(srl_p_normalized)
ggcorrplot(srl_p_corr_matrix)

srl_p_pca <- princomp(srl_p_corr_matrix)
summary(srl_p_pca)

fviz_eig(srl_p_pca, addlabels = TRUE)
fviz_pca_var(srl_p_pca, col.var = "black")
fviz_cos2(srl_p_pca, choice = "var", axes = 1:2)

# SRL-SR Prinicpal component analysis
srl_sr_normalized <- scale(subset_srl_sr)
head(srl_sr_normalized)

srl_sr_corr_matrix <- cor(srl_sr_normalized)
ggcorrplot(srl_sr_corr_matrix)

srl_sr_pca <- princomp(srl_sr_corr_matrix)
summary(srl_sr_pca)

fviz_eig(srl_sr_pca, addlabels = TRUE)
fviz_pca_var(srl_sr_pca, col.var = "black")
fviz_cos2(srl_sr_pca, choice = "var", axes = 1:2)

library(ggplot2)

age <- as.data.frame(df_srl_imp_mean_comb$PD_01_age)

ggplot(age, aes(x=df_srl_imp_mean_comb$PD_01_age)) +
  geom_histogram()
colnames(age)

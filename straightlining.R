library(careless)

# Generate a data frame containing Intra-individual Response Variability (IRV)
# values for all observations previously not already removed for other reasons
# across all scales
irv_all <- irv(df_srl_imp_mean)
df_srl_imp_mean_str <- cbind(df_srl_imp_mean_comb$PD_00_ID, irv_all, df_srl_imp_mean)

# View and manually inspect observations with extremely low or extremely high
# IRV values
View(df_srl_imp_mean_str)


# Generate a data frame containing Intra-individual Response Variability (IRV)
# values for all observations previously not already removed across only SRL scales
irv_srl <- irv(df_srl_imp_mean_comb[9:68])
irv_srl_str <- cbind(df_srl_imp_mean_comb$PD_00_ID, irv_srl, df_srl_imp_mean_comb[9:68])

# View and manually inspect observations with extremely low or extremely high
# IRV values
View(irv_srl_str)


mahad_flags_all <- mahad(df_srl_imp_mean, flag = TRUE)
mahad_flags_srl <- mahad(df_srl_imp_mean_comb[9:68], flag = TRUE)

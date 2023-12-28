library(careless)

# 15/130 Cases für Straightlining
irv_se <- irv(subset_se)
subset_se_str <- cbind(df_srl_imp_mean_comb$PD_00_ID, subset_se, irv_se)

View(subset_se_str)

# 0/130 Cases für Straightlining
irv_srl_f <- irv(subset_srl_f)
subset_srl_f_str <- cbind(df_srl_imp_mean_comb$PD_00_ID, subset_srl_f, irv_srl_f)

View(subset_srl_f_str)

# 0/130 Cases für Straightlining
irv_srl_p <- irv(subset_srl_p)
subset_srl_p_str <- cbind(df_srl_imp_mean_comb$PD_00_ID, subset_srl_p, irv_srl_p)

View(subset_srl_p_str)

# 6/130 Cases für Straightlining
irv_srl_sr <- irv(subset_srl_sr)
subset_srl_sr_str <- cbind(df_srl_imp_mean_comb$PD_00_ID, subset_srl_sr, irv_srl_sr)

View(subset_srl_sr_str)


library(dplyr)
library(psych)

# Create a subset for every individual scale inside the questionnaire
# to facilitate further analysis of the data

# wla subset
subset_wla <- df_srl_imp_mean_comb |> select(c(starts_with("WLA"),))
# View(subset_wla)

# srl subset
subset_srl <- df_srl_imp_mean_comb |> select(c(starts_with("SRL"),))
# View(subset_srl)

# srl_f subset
subset_srl_f <- df_srl_imp_mean_comb |> select(c(starts_with("SRL_F"),))
# View(subset_srl_f)

# srl_p subset
subset_srl_p <- df_srl_imp_mean_comb |> select(c(starts_with("SRL_P"),))
# View(subset_srl_p)

# srl_sr subset
subset_srl_sr <- df_srl_imp_mean_comb |> select(c(starts_with("SRL_SR"),))
# View(subset_srl_sr)

# wlc subset
subset_wlc <- df_srl_imp_mean_comb |> select(c(starts_with("WLC"),))
# View(subset_wlc)

# se subset
subset_se <- df_srl_imp_mean_comb |> select(c(starts_with("SE"),))
# View(subset_se)

# Descriptive check of subsets
descr_srl_f <- as.data.frame(describe(rowMeans(subset_srl_f)))
# describe(subset_srl_f)
descr_srl_p <- as.data.frame(describe(rowMeans(subset_srl_p)))
descr_srl_sr <- as.data.frame(describe(rowMeans(subset_srl_sr)))
descr_wla <- as.data.frame(describe(rowMeans(subset_wla)))
descr_wlc <- as.data.frame(describe(rowMeans(subset_wlc)))
descr_se <- as.data.frame(describe(rowMeans(subset_se)))

# Descriptive check of subsets
descr_srl_f_vars <- as.data.frame(describe(subset_srl_f))
# describe(subset_srl_f)
descr_srl_p_vars <- as.data.frame(describe(subset_srl_p))
descr_srl_sr_vars <- as.data.frame(describe(subset_srl_sr))
descr_wla_vars <- as.data.frame(describe(subset_wla))
descr_wlc_vars <- as.data.frame(describe(subset_wlc))
descr_se_vars <- as.data.frame(describe(subset_se))

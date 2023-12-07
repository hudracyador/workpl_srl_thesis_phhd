# wla subset
subset_wla <- df_srl_na_col_rec |> select(c(starts_with("WLA"),))
View(subset_wla)

# srl subset
subset_srl <- df_srl_na_col_rec |> select(c(starts_with("srl"),))
View(subset_srl)

# srl_f subset
subset_srl_f <- df_srl_na_col_rec |> select(c(starts_with("srl_f"),))
View(subset_srl_f)

# srl_p subset
subset_srl_p <- df_srl_na_col_rec |> select(c(starts_with("srl_p"),))
View(subset_srl_p)

# srl_sr subset
subset_srl_sr <- df_srl_na_col_rec |> select(c(starts_with("srl_sr"),))
View(subset_srl_sr)

# wlc subset
subset_wlc <- df_srl_na_col_rec |> select(c(starts_with("wlc"),))
View(subset_wlc)

# se subset
subset_se <- df_srl_na_col_rec |> select(c(starts_with("se"),))
View(subset_se)


# Descriptive check of subsets
describe(subset_se)
describe(subset_srl_f)
describe(subset_srl_p)
describe(subset_srl_sr)
describe(subset_wla)
describe(subset_wlc)

# Descriptive check of subsets
summary(subset_se)
summary(subset_srl_f)
summary(subset_srl_p)
summary(subset_srl_sr)
summary(subset_wla)
summary(subset_wlc)

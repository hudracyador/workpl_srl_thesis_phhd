library(dplyr)

# wla subset
subset_wla <- df_srl_imp_mean |> select(c(starts_with("WLA"),))
View(subset_wla)

# srl subset
subset_srl <- df_srl_imp_mean |> select(c(starts_with("SRL"),))
View(subset_srl)

# srl_f subset
subset_srl_f <- df_srl_imp_mean |> select(c(starts_with("SRL_F"),))
View(subset_srl_f)

# srl_p subset
subset_srl_p <- df_srl_imp_mean |> select(c(starts_with("SRL_P"),))
View(subset_srl_p)

# srl_sr subset
subset_srl_sr <- df_srl_imp_mean |> select(c(starts_with("SRL_SR"),))
View(subset_srl_sr)

# wlc subset
subset_wlc <- df_srl_imp_mean |> select(c(starts_with("WLC"),))
View(subset_wlc)

# se subset
subset_se <- df_srl_imp_mean |> select(c(starts_with("SE"),))
View(subset_se)

# alter
subset_age <- df_srl |> select(c(starts_with("In welcher Altersgruppe")))
subset_age_na <- na.omit(subset_age)
subset_age_fctrs <- factor(subset_age_na)
sapply(subset_age_fctrs, class)
View(subset_age_fctrs)
likert(subset_age_fctrs)


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

library(dplyr)

# Create subsets from all scales for converting from <num> to <fct>

subset_wla_fct <- df_srl_imp_mean |> select(c(starts_with("WLA_"),))
subset_srl_f_fct <- df_srl_imp_mean |> select(c(starts_with("SRL_F_"),))
subset_srl_p_fct <- df_srl_imp_mean |> select(c(starts_with("SRL_P_"),))
subset_srl_sr_fct <- df_srl_imp_mean |> select(c(starts_with("SRL_SR_"),))
subset_wlc_fct <- df_srl_imp_mean |> select(c(starts_with("WLC_"),))
subset_se_fct <- df_srl_imp_mean |> select(c(starts_with("SE_"),))

# Convert WLA subset from <num> to <fct>
subset_wla_fct <- subset_wla_fct |>
  mutate(
    across(where(is.numeric), as.factor)
  )
# Check if WLA subset is <fct> across all variables
sapply(subset_wla_fct, class)


# Convert SRL-F subset from <num> to <fct>
subset_srl_f_fct <- subset_srl_f_fct |>
  mutate(
    across(where(is.numeric), as.factor)
  )
# Check if SRL-F subset is <fct> across all variables
sapply(subset_srl_f_fct, class)


# Convert SRL-P subset from <num> to <fct>
subset_srl_p_fct <- subset_srl_p_fct |>
  mutate(
    across(where(is.numeric), as.factor)
  )
# Check if SRL-P subset is <fct> across all variables
sapply(subset_srl_p_fct, class)


# Convert SRL-SR subset from <num> to <fct>
subset_srl_sr_fct <- subset_srl_sr_fct |>
  mutate(
    across(where(is.numeric), as.factor)
  )
# Check if SRL-SR subset is <fct> across all variables
sapply(subset_srl_sr_fct, class)


# Convert WLC subset from <num> to <fct>
subset_wlc_fct <- subset_wlc_fct |>
  mutate(
    across(where(is.numeric), as.factor)
  )
# Check if WLC subset is <fct> across all variables
sapply(subset_wlc_fct, class)


# Convert SE subset from <num> to <fct>
subset_se_fct <- subset_se_fct |>
  mutate(
    across(where(is.numeric), as.factor)
  )
# Check if SE subset is <fct> across all variables
sapply(subset_se_fct, class)
# wla subset
subset_wla <- clean_recoded |> select(c(starts_with("wla"),))
View(subset_wla)

# srl subset
subset_srl <- clean_recoded |> select(c(starts_with("srl"),))
View(subset_srl)

# srl_f subset
subset_srl_f <- clean_recoded |> select(c(starts_with("srl_f"),))
View(subset_srl_f)

# srl_p subset
subset_srl_p <- clean_recoded |> select(c(starts_with("srl_p"),))
View(subset_srl_p)

# srl_sr subset
subset_srl_sr <- clean_recoded |> select(c(starts_with("srl_sr"),))
View(subset_srl_sr)

# wlc subset
subset_wlc <- clean_recoded |> select(c(starts_with("wlc"),))
View(subset_wlc)

# se subset
subset_se <- clean_recoded |> select(c(starts_with("se"),))
View(subset_se)

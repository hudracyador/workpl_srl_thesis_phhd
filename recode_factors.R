# Create levels for SRL and SE scales
levels_srl_se <- c(
  "trifft überhaupt nicht auf mich zu",
  "trifft manchmal auf mich zu",
  "trifft eher auf mich zu",
  "trifft auf mich zu",
  "trifft sehr auf mich zu",
)

# Create levels for WLA and WLC scales
levels_wla_wlc <- c(
  "nie",
  "ein- oder zweimal",
  "manchmal",
  "oft",
  "sehr oft oder ständig"
)

wla_factors <- as.data.frame(factor(df_srl[,8:19], levels = levels_wla_wlc))
View(wla_factors)



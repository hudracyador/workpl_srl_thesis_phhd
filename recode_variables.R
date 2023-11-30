require(dplyr)

df_srl_na_col_rec <- df_srl_na_col |>
  mutate(
    across(
      contains("SRL_"),
      ~ case_when(
        . == "trifft überhaupt nicht auf mich zu" ~ 1,
        . == "trifft manchmal auf mich zu" ~ 2,
        . == "trifft eher auf mich zu" ~ 3,
        . == "trifft auf mich zu" ~ 4,
        . == "trifft sehr auf mich zu" ~ 5,
      )
    ),
    across(
      contains("SE_"),
      ~ case_when(
        . == "trifft überhaupt nicht auf mich zu" ~ 1,
        . == "trifft manchmal auf mich zu" ~ 2,
        . == "trifft eher auf mich zu" ~ 3,
        . == "trifft auf mich zu" ~ 4,
        . == "trifft sehr auf mich zu" ~ 5,
      )
    ),
    across(
      contains("WLC_"),
      ~ case_when(
        . == "nie" ~ 1,
        . == "ein- oder zweimal" ~ 2,
        . == "manchmal" ~ 3,
        . == "oft" ~ 4,
        . == "sehr oft oder ständig" ~ 5
      )
    ),
    across(
      contains("WLA_"),
      ~ case_when(
        . == "nie" ~ 1,
        . == "ein- oder zweimal" ~ 2,
        . == "manchmal" ~ 3,
        . == "oft" ~ 4,
        . == "sehr oft oder ständig" ~ 5
      )
    )
  )

View(df_srl_na_col_rec)

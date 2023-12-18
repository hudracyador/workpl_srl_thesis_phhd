library(dplyr)
library(scales)

# Convert work years from <chr> to <num>
df_srl_col$PD_04_work_yrs <- as.numeric(
  as.character(
    df_srl_col$PD_04_work_yrs
  )
)

# df_srl_na_col$PD_07_ho_amount <- as.numeric (
#  as.character(
#    df_srl_na_col$PD_07_ho_amount
#  )
# )

View(df_srl_col)

sapply(df_srl_col$PD_04_work_yrs, class)
# sapply(df_srl_col$PD_07_ho_amount, class)


# Recode variables
df_srl_col_rec <- df_srl_col |>
  mutate(
    across(
      contains("ho_amount"),
      ~ case_when(
        . == "0 %" ~ 0,
        . == "10 %" ~ 0.1,
        . == "20 %" ~ 0.2,
        . == "30 %" ~ 0.3,
        . == "40 %" ~ 0.4,
        . == "50 %" ~ 0.5,
        . == "60 %" ~ 0.6,
        . == "70 %" ~ 0.7,
        . == "80 %" ~ 0.8,
        . == "90 %" ~ 0.9,
        . == "100 %" ~ 1,
      )
    ),
    across(
      contains("age"),
      ~ case_when(
        . == "19 oder jünger" ~ 1,
        . == "20-29" ~ 2,
        . == "30-39" ~ 3,
        . == "40-49" ~ 4,
        . == "50-59" ~ 5,
        . == "60 oder älter" ~ 6,
      )
    ),
    across(
      contains("gender"),
      ~ case_when(
        . == "weiblich" ~ 1,
        . == "männlich" ~ 2,
        . == "divers" ~ 3,
        . == "keine Angabe" ~ 4,
      )
    ),
    across(
      contains("employer"),
      ~ case_when(
        . == "Deutscher Sparkassenverlag GmbH" ~ 1,
        . == "S-Payment GmbH" ~ 2,
        . == "PAYONE GmbH" ~ 3,
        . == "S-Management Services GmbH" ~ 4,
        . == "Sparkassen-Einkaufsgesellschaft mbH" ~ 5,
        . == "MEG Mitarbeiter-Einkaufsgesellschaft mbH" ~ 6,
        . == "S-Communication Services GmbH" ~ 7,
        . == "S-Markt & Mehrwert GmbH & Co. KG" ~ 8,
        . == "DSV Immobilien Service GmbH & Co. KG" ~ 9,
        . == "DSV IT Service GmbH" ~ 10,
        . == "Sonstiges" ~ 11,
      )
    ),
    across(
      contains("work_hrs"),
      ~ case_when(
        . == "Vollzeit" ~ 1,
        . == "Teilzeit" ~ 2,
        . == "Altersteilzeit (unabhängig davon, ob in der Arbeits- oder Freistellungsphase befindlich)" ~ 3,
        . == "In einer beruflichen Ausbildung/Lehre" ~ 4,
        . == "Werkstudent" ~ 5,
        . == "Werkstudent (Teilzeit)" ~ 5
      )
    ),
    across(
      contains("leader"),
      ~ case_when(
        . == "ja" ~ 1,
        . == "nein" ~ 2,
      )
    ),
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

sapply(df_srl_col_rec$PD_07_ho_amount, class)
View(df_srl_col_rec)

# df_srl_na_col_rec$PD_07_ho_amount <- label_percent(
#   accuracy = NULL,
#   scale = 100,
#   prefix = "",
#   suffix = "%",
#   big.mark = " ",
#   decimal.mark = ".",
#   trim = TRUE,
# )



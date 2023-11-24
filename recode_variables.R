require(dplyr)

clean_recoded <- clean |>
  mutate(
    across(
      contains("srl"),
      ~ case_when(
        . == "trifft überhaupt nicht auf mich zu" ~ 1,
        . == "trifft manchmal auf mich zu" ~ 2,
        . == "trifft eher auf mich zu" ~ 3,
        . == "trifft auf mich zu" ~ 4,
        . == "trifft sehr auf mich zu" ~ 5,
      )
    ),
    across(
      contains("se"),
      ~ case_when(
        . == "trifft überhaupt nicht auf mich zu" ~ 1,
        . == "trifft manchmal auf mich zu" ~ 2,
        . == "trifft eher auf mich zu" ~ 3,
        . == "trifft auf mich zu" ~ 4,
        . == "trifft sehr auf mich zu" ~ 5,
      )
    ),
    across(
      contains("wl"),
      ~ case_when(
        . == "nie" ~ 1,
        . == "ein- oder zweimal" ~ 2,
        . == "manchmal" ~ 3,
        . == "oft" ~ 4,
        . == "sehr oft oder ständig" ~ 5
      )
    )
  )

View(clean_recoded)

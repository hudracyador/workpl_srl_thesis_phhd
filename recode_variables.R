require(dplyr)

df_srlwq_deu %>% 
  mutate_at(.vars()
            funs("rc" = recode(.,
                               "trifft überhaupt nicht auf mich zu" = 1,
                               "trifft manchmal auf mich zu" = 2,
                               "trifft eher auf mich zu" = 3,
                               "trifft auf mich zu" = 4,
                               "trifft sehr auf mich zu" = 5)))

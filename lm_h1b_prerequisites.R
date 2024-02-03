# lm_h1b <- lm(
#   cbind(
#     srl_f_f1,
#     srl_f_f2,
#     srl_f_f3,
#     srl_f_f4,
#     srl_p_f1,
#     srl_p_f2,
#     srl_p_f3,
#     srl_sr_f1,
#     srl_sr_f2
#   ) ~
#     wlc_f1,
#   data = factors_regression
# )

## SRL-F SECTION

lm_h1b_f_f1 <- lm(
  srl_f_f1 ~ wlc_f1,
  data = factors_regression
)
summary(lm_h1b_f_f1)

lm_h1b_f_f2 <- lm(
  srl_f_f2 ~ wlc_f1,
  data = factors_regression
)

lm_h1b_f_f3 <- lm(
  srl_f_f3 ~ wlc_f1,
  data = factors_regression
)

lm_h1b_f_f4 <- lm(
  srl_f_f4 ~ wlc_f1,
  data = factors_regression
)


## SRL-P SECTION
lm_h1b_p_f1 <- lm(
  srl_p_f1 ~ wlc_f1,
  data = factors_regression
)

lm_h1b_p_f2 <- lm(
  srl_p_f2 ~ wlc_f1,
  data = factors_regression
)

lm_h1b_p_f3 <- lm(
  srl_p_f3 ~ wlc_f1,
  data = factors_regression
)


## SRL-SR SECTION
lm_h1b_sr_f1 <- lm(
  srl_sr_f1 ~ wlc_f1,
  data = factors_regression
)

lm_h1b_sr_f2 <- lm(
  srl_sr_f2 ~ wlc_f1,
  data = factors_regression
)


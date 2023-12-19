library(psych)
library(multilevel)

# Calculate single linear regression regression model for
# hypothesis H1a
# Linear regression analysis (Enter method)  
lm_h1a <- lm(wla_f1 ~ wlc_f1, data = factors_regression)
summary(lm_h1a)


# Calculate multiple linear regression regression model for
# hypothesis H1b
# Multiple linear regression analysis (Enter method)  
lm_h1b <- lm(
  wlc_f1 ~
    srl_f_f1 +
    srl_f_f2 +
    srl_f_f3 +
    srl_f_f4 +
    srl_p_f1 +
    srl_p_f2 +
    srl_p_f3 +
    srl_sr_f1 +
    srl_sr_f2,
  data = factors_regression
)

summary(lm_h1b)

# Calculate multiple linear regression regression model for
# hypothesis H1c
# Multiple linear regression analysis (Backwards method)  
lm_h1c <- lm(
  wlc_f1 ~
    srl_f_f1 +
    srl_f_f2 +
    srl_f_f3 +
    srl_f_f4 +
    srl_p_f1 +
    srl_p_f2 +
    srl_p_f3 +
    srl_sr_f1 +
    srl_sr_f2,
  data = factors_regression
)

# Calculate Sobel's test values for hypothesis H1d
library(bda)

# srl_f_f1
med_srl_f_f1 <- mediation.test(
factors_regression$wla_f1,
factors_regression$srl_f_f1,
factors_regression$wlc_f1
)
med_srl_f_f1

# srl_f_f2
med_srl_f_f2 <- mediation.test(
  factors_regression$wla_f1,
  factors_regression$srl_f_f1,
  factors_regression$wlc_f1
)
med_srl_f_f2

# srl_f_f3
med_srl_f_f3 <- mediation.test(
  factors_regression$wla_f1,
  factors_regression$srl_f_f1,
  factors_regression$wlc_f1
)
med_srl_f_f3

# srl_f_f4
med_srl_f_f4 <- mediation.test(
  factors_regression$wla_f1,
  factors_regression$srl_f_f4,
  factors_regression$wlc_f1
)
med_srl_f_f4

# srl_p_f1
med_srl_p_f1 <- mediation.test(
  factors_regression$wla_f1,
  factors_regression$srl_p_f1,
  factors_regression$wlc_f1
)
med_srl_p_f1

# srl_p_f2
med_srl_p_f2 <- mediation.test(
  factors_regression$wla_f1,
  factors_regression$srl_p_f2,
  factors_regression$wlc_f1
)
med_srl_p_f2

# srl_p_f3
med_srl_p_f3 <- mediation.test(
  factors_regression$wla_f1,
  factors_regression$srl_p_f3,
  factors_regression$wlc_f1
)
med_srl_p_f3


# srl_sr_f1
med_srl_sr_f1 <- mediation.test(
  factors_regression$wla_f1,
  factors_regression$srl_sr_f1,
  factors_regression$wlc_f1
)
med_srl_sr_f1

# srl_sr_f2
med_srl_sr_f2 <- mediation.test(
  factors_regression$wla_f1,
  factors_regression$srl_sr_f2,
  factors_regression$wlc_f1
)
med_srl_sr_f2

# sobel_comparison <- as.data.frame(
#   c(
#     med_srl_f_f1$Sobel,
#     med_srl_f_f2$Sobel,
#     med_srl_f_f3$Sobel,
#     med_srl_f_f4$Sobel,
#     med_srl_p_f1$Sobel,
#     med_srl_p_f2$Sobel,
#     med_srl_p_f3$Sobel,
#     med_srl_sr_f1$Sobel,
#     med_srl_sr_f2$Sobel
#   )
# )
# 
# View(sobel_comparison)

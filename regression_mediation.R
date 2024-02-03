library(psych)
library(boot)

# Calculate single linear regression regression model for
# hypothesis H1a
# Linear regression analysis (Enter method)

wla_f1_h1a <- wla_f1[-c(31, 51, 61, 103, 107, 111, 119),]
wlc_f1_h1a <- wlc_f1[-c(31, 51, 61, 103, 107, 111, 119),]

lm_h1a <- lm(wla_f1 ~ wlc_f1, data = factors_regression)

lm_h1a <- lm(wla_f1_h1a ~ wlc_f1_h1a, data = factors_regression)
summary(lm_h1a)


# Calculate multiple linear regression regression model for
# hypothesis H1b
# Multiple linear regression analysis (Enter method)
## SRL-F SECTION

# F_F1
srl_f_f1_h1b <- srl_f_f1[-c(8, 13, 42, 62, 101, 121),]
wlc_h1b_f_f1 <- wla_f1[-c(8, 13, 42, 62, 101, 121),] 

lm_h1b_f_f1 <- lm(srl_f_f1 ~ wlc_f1, data = factors_regression)

lm_h1b_f_f1 <- lm(srl_f_f1_h1b ~ wlc_h1b_f_f1, data = factors_regression)
summary(lm_h1b_f_f1)

# F_F2
srl_f_f2_h1b <- srl_f_f2[-c(25, 42, 54, 57, 80, 101, 107, 111),]
wlc_h1b_f_f2 <- wla_f1[-c(25, 42, 54, 57, 80, 101, 107, 111),] 

lm_h1b_f_f2 <- lm(srl_f_f2 ~ wlc_f1, data = factors_regression)

lm_h1b_f_f2 <- lm(srl_f_f2_h1b ~ wlc_h1b_f_f2, data = factors_regression)
summary(lm_h1b_f_f2)


# F_F3
srl_f_f3_h1b <- srl_f_f3[-c(20, 31, 69, 80, 101, 105, 120, 121),]
wlc_h1b_f_f3 <- wla_f1[-c(20, 31, 69, 80, 101, 105, 120, 121),] 

lm_h1b_f_f3 <- lm(srl_f_f3 ~ wlc_f1, data = factors_regression)

lm_h1b_f_f3 <- lm(srl_f_f3_h1b ~ wlc_h1b_f_f3, data = factors_regression)
summary(lm_h1b_f_f3)


# F_F4
srl_f_f4_h1b <- srl_f_f4[-c(11, 31, 45, 49, 98, 101, 104, 112, 120),]
wlc_h1b_f_f4 <- wla_f1[-c(11, 31, 45, 49, 98, 101, 104, 112, 120),] 

lm_h1b_f_f4 <- lm(srl_f_f4 ~ wlc_f1, data = factors_regression)

lm_h1b_f_f4 <- lm(srl_f_f4_h1b ~ wlc_h1b_f_f4, data = factors_regression)
summary(lm_h1b_f_f4)


## SRL-P SECTION

# P_F1
srl_p_f1_h1b <- srl_p_f1[-c(42, 49, 52, 57, 62, 101, 120, 121),]
wlc_h1b_p_f1 <- wla_f1[-c(42, 49, 52, 57, 62, 101, 120, 121),] 

lm_h1b_p_f1 <- lm(srl_p_f1 ~ wlc_f1, data = factors_regression)

lm_h1b_p_f1 <- lm(srl_p_f1_h1b ~ wlc_h1b_p_f1, data = factors_regression)
summary(lm_h1b_p_f1)

lm_h1b_p_f1_boot <- Boot(lm_h1b_p_f1, R = 5000)
summary(lm_h1b_p_f1_boot)
confint(lm_h1b_p_f1_boot, level = .95)


# P_F2
srl_p_f2_h1b <- srl_p_f2[-c(20, 29, 51, 61, 62, 101, 121),]
wlc_h1b_p_f2 <- wla_f1[-c(20, 29, 51, 61, 62, 101, 121),] 

lm_h1b_p_f2 <- lm(srl_p_f2 ~ wlc_f1, data = factors_regression)

lm_h1b_p_f2 <- lm(srl_p_f2_h1b ~ wlc_h1b_p_f2, data = factors_regression)
summary(lm_h1b_p_f2)


# P_F3
srl_p_f3_h1b <- srl_p_f3[-c(4, 18, 20, 49, 66, 101, 107, 120),]
wlc_h1b_p_f3 <- wla_f1[-c(4, 18, 20, 49, 66, 101, 107, 120),] 

lm_h1b_p_f3 <- lm(srl_p_f3 ~ wlc_f1, data = factors_regression)

lm_h1b_p_f3 <- lm(srl_p_f3_h1b ~ wlc_h1b_p_f3, data = factors_regression)
summary(lm_h1b_p_f3)


## SRL-SR SECTION

# SR_F1
srl_sr_f1_h1b <- srl_sr_f1[-c(41, 80, 101, 120, 121),]
wlc_h1b_sr_f1 <- wla_f1[-c(41, 80, 101, 120, 121),] 

lm_h1b_sr_f1 <- lm(srl_sr_f1 ~ wlc_f1, data = factors_regression)

lm_h1b_sr_f1 <- lm(srl_sr_f1_h1b ~ wlc_h1b_sr_f1, data = factors_regression)
summary(lm_h1b_sr_f1)


# SR_F2
srl_sr_f2_h1b <- srl_sr_f2[-c(122, 102, 42),]
wlc_h1b_sr_f2 <- wla_f1[-c(122, 102, 42),] 

lm_h1b_sr_f2 <- lm(srl_sr_f2 ~ wlc_f1, data = factors_regression)

lm_h1b_sr_f2 <- lm(srl_sr_f2_h1b ~ wlc_h1b_sr_f2, data = factors_regression)
summary(lm_h1b_sr_f2)




# Calculate multiple linear regression regression model for
# hypothesis H1c
# Multiple linear regression analysis (Backwards stepwise method)

library(olsrr)

wlc_f1_h1c <- wlc_f1[-c(6, 15, 30, 31, 40, 51, 58, 103, 107, 111, 119),]
srl_f_f1_h1c <- srl_f_f1[-c(6, 15, 30, 31, 40, 51, 58, 103, 107, 111, 119),]
srl_f_f2_h1c <- srl_f_f2[-c(6, 15, 30, 31, 40, 51, 58, 103, 107, 111, 119),]
srl_f_f3_h1c <- srl_f_f3[-c(6, 15, 30, 31, 40, 51, 58, 103, 107, 111, 119),]
srl_f_f4_h1c <- srl_f_f4[-c(6, 15, 30, 31, 40, 51, 58, 103, 107, 111, 119),]
srl_p_f1_h1c <- srl_p_f1[-c(6, 15, 30, 31, 40, 51, 58, 103, 107, 111, 119),]
srl_p_f2_h1c <- srl_p_f2[-c(6, 15, 30, 31, 40, 51, 58, 103, 107, 111, 119),]
srl_p_f3_h1c <- srl_p_f3[-c(6, 15, 30, 31, 40, 51, 58, 103, 107, 111, 119),]
srl_sr_f1_h1c <- srl_sr_f1[-c(6, 15, 30, 31, 40, 51, 58, 103, 107, 111, 119),]
srl_sr_f2_h1c <- srl_sr_f2[-c(6, 15, 30, 31, 40, 51, 58, 103, 107, 111, 119),]
wla_f1_h1c <- wla_f1[-c(66, 15, 30, 31, 40, 51, 58, 103, 107, 111, 119),] 

lm_h1c <- lm(
  wla_f1 ~
    wlc_f1 +
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

lm_h1c <- lm(
  wla_f1_h1c ~
    wlc_f1_h1c +
    srl_f_f1_h1c +
    srl_f_f2_h1c +
    srl_f_f3_h1c +
    srl_f_f4_h1c +
    srl_p_f1_h1c +
    srl_p_f2_h1c +
    srl_p_f3_h1c +
    srl_sr_f1_h1c +
    srl_sr_f2_h1c,
  data = factors_regression
)

summary(lm_h1c)



lm_h1c_backw <- ols_step_backward_p(lm_h1c, 
                                    prem = 0.1,
                                    progress = TRUE,
                                    details = TRUE)
lm_h1c_backw


# Backward method: Second step
lm_h1c_var_rm <- lm(
  wla_f1 ~
    wlc_f1 +
    srl_f_f4 +
    srl_p_f2,
  data = factors_regression
)
summary(lm_h1c_var_rm)

wlc_f1_h1c <- wlc_f1[-c(6, 30, 31, 51, 61, 119),]
srl_f_f4_h1c <- srl_f_f4[-c(6, 30, 31, 51, 61, 119),]
srl_p_f2_h1c <- srl_p_f2[-c(6, 30, 31, 51, 61, 119),]
wla_f1_h1c <- wla_f1[-c(6, 30, 31, 51, 61, 119),]


lm_h1c_var_rm <- lm(
  wla_f1_h1c ~
    wlc_f1_h1c +
    srl_f_f4_h1c +
    srl_p_f2_h1c,
  data = factors_regression
)

summary(lm_h1c_var_rm)



# Calculate Sobel's test values for hypothesis H1d
library(bda)

# srl_f_f4
med_srl_f_f4 <- mediation.test(
  factors_regression$wla_f1,
  factors_regression$srl_f_f4,
  factors_regression$wlc_f1
)
med_srl_f_f4

# srl_p_f2
med_srl_p_f2 <- mediation.test(
  factors_regression$wla_f1,
  factors_regression$srl_p_f2,
  factors_regression$wlc_f1
)
med_srl_p_f2

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

# Calculate multiple linear regression regression model for
# hypothesis H2
# Multiple linear regression analysis (Backwards stepwise method)

# library(olsrr)
#
# lm_h2 <- lm(
#   se_f1 ~
#     srl_f_f1 +
#     srl_f_f2 +
#     srl_f_f3 +
#     srl_f_f4 +
#     srl_p_f1 +
#     srl_p_f2 +
#     srl_p_f3 +
#     srl_sr_f1 +
#     srl_sr_f2,
#   data = factors_regression
# )
#
# lm_h2_backw <- ols_step_backward_p(lm_h2)
# lm_h2_backw


tab_model(lm_h1a, file = "m1.doc", CSS = list(css.table = '+font-family: Arial;'), 
          show.fstat = T, show.ci = 0.95, string.ci = "95% CI",  show.se = F, 
          show.stat = T, show.std = T, string.stat = "t", string.std = "β", 
          string.std_se = "β SE", show.est = F,
          col.order = c("std.est", "std.se", "stat", "p", "ci", "F"))

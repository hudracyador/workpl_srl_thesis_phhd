# Quelle: http://www.regorz-statistik.de/inhalte/r_regressionsvoraussetzungen.html
# Multiple Regression mit umfassender Prüfung der Voraussetzungen

# Benötigte Packages laden
library(car)
library(olsrr)
library(moments)
library(DescTools)
library(lmtest)
library(jtools)



# # Vorbereitung
# 
# # Werte setzen
# konfidenz <- 0.95
# nachkomma <- 3
# 
# # data.frame für grafische Linearitätsprüfung
# # 
# vars_h1a <- data.frame(factors_regression$wla_f1,
#                        factors_regression$wlc_f1)
# 
# # 0. Ausgabe (mit jtools-Package)
# 
# # Unstandardisierte Ergebnisse
# summ(lm_h1a, confint = TRUE, ci.width = konfidenz, digits = nachkomma)
# 
# # Standardisierte Ergebnisse
# summ(lm_h1a, scale = TRUE, transform.response = TRUE, digits = nachkomma)


# OUTLIER-ANALYSE ALS ERSTES

# Cook's Distanz

ols_plot_cooksd_chart(lm_h1a) # 61, 31, 120, 51, 112, 108, 104

# ols_plot_cooksd_chart(lm_h1b)
ols_plot_cooksd_chart(lm_h1b_f_f1) # 62, 42, 8, 102, 122, 13
ols_plot_cooksd_chart(lm_h1b_f_f2) # 102, 42, 25, 112, 54, 57, 81
ols_plot_cooksd_chart(lm_h1b_f_f3) # 122, 20, 31, 81, 102, 121, 106, 70
ols_plot_cooksd_chart(lm_h1b_f_f4) # 121, 49, 99, 45, 105, 113, 102, 31, 11
ols_plot_cooksd_chart(lm_h1b_p_f1) # 102, 122, 49, 121, 42, 57, 52, 62
ols_plot_cooksd_chart(lm_h1b_p_f2) # 29, 122, 62, 102, 51, 61, 20
ols_plot_cooksd_chart(lm_h1b_p_f3) # 20, 49, 66, 102, 18, 121, 4, 108
ols_plot_cooksd_chart(lm_h1b_sr_f1) # 121, 41, 122, 81, 102
ols_plot_cooksd_chart(lm_h1b_sr_f2) # 122, 102, 42

ols_plot_cooksd_chart(lm_h1c) # 51, 15, 31, 108, 6, 30, 40, 75, 91, 104, 112
ols_plot_cooksd_chart(lm_h1c_var_rm) # 51, 31, 6, 61, 15

# Outlier & Leverage

ols_plot_resid_lev(lm_h1a) # O&L: 61; L: 121

# ols_plot_resid_lev(lm_h1b)
ols_plot_resid_lev(lm_h1b_f_f1) # O&L: 42, 62; L: 121;
ols_plot_resid_lev(lm_h1b_f_f2) # O&L: 102, 42; L: 121
ols_plot_resid_lev(lm_h1b_f_f3) # O&L: 122; L: 121
ols_plot_resid_lev(lm_h1b_f_f4) # O&L: 121, 49
ols_plot_resid_lev(lm_h1b_p_f1) # O&L: 122, 102; L: 121
ols_plot_resid_lev(lm_h1b_p_f2) # O&L: 29, 122; L: 121
ols_plot_resid_lev(lm_h1b_p_f3) # O&L: 20; L: 121
ols_plot_resid_lev(lm_h1b_sr_f1) # L: 121
ols_plot_resid_lev(lm_h1b_sr_f2) # O&L: 122; L: 121

ols_plot_resid_lev(lm_h1c) # O: 51, 31, 15
ols_plot_resid_lev(lm_h1c_var_rm) # O&L: 51; O: 31, 6

# SECTION: PREREQUISITES FOR REGRESSION/MEDIATION Hs (H1a-H1d, H2)

# 1. Normalverteilung der Fehler in der Population

# Histogramm der Residuen
ols_plot_resid_hist(lm_h1a)
ols_plot_resid_hist(lm_h1b) 

# PP-Plot / QQ-Plot
ols_plot_resid_qq(lm_h1a)
ols_plot_resid_qq(lm_h1b)

# Shapiro-Wilk-Test (Hypothesentest auf Normalverteilung)
shapiro.test(lm_h1a$residuals)

shapiro.test(lm_h1b$residuals)


# ks.test(lm_h1a$residuals,
#         "pnorm", 
#         mean=mean(lm_h1a$residuals), 
#         sd=sd(lm_h1a$residuals))
# 
# ks.test(lm_h1b$residuals,
#         "pnorm", 
#         mean=mean(lm_h1a$residuals), 
#         sd=sd(lm_h1a$residuals))

# # Schiefe (Wert < 1) & Kurtosis (Wert < 3)
# skewness(lm_h1a$residuals)
# skewness(lm_h1b$residuals)
# 
# kurtosis(lm_h1a$residuals)
# kurtosis(lm_h1b$residuals)
# 
# agostino.test(lm_h1a$residuals)
# agostino.test(lm_h1b$residuals)
# 
# anscombe.test(lm_h1a$residuals)
# anscombe.test(lm_h1b$residuals)

# 2. Homoskedastizität / Varianzhomogenität

# Streudiagramm Fitted Values und Residuen
ols_plot_resid_fit(lm_h1a)
ols_plot_resid_fit(lm_h1b)
ols_plot_resid_fit(lm_h1c)
ols_plot_resid_fit(lm_h1c_var_rm)

ols_test_breusch_pagan(lm_h1a)
ols_test_breusch_pagan(lm_h1b)
ols_test_breusch_pagan(lm_h1c)
ols_test_breusch_pagan(lm_h1c_var_rm)

# plot(fitted.values(lm_h1a),residuals(lm_h1a))
# plot(fitted.values(lm_h1b),residuals(lm_h1b))

# Breusch-Pagan-Test (Hypothesentest auf Homoskedastizität)
# bptest(lm_h1a)
# bptest(lm_h1b)

# 3. Linearität

# Paarweises Streudiagramm
# pairs(vars_h1a, pch = 19, lower.panel = NULL)
# pairs(vars_h1b, pch = 19, lower.panel = NULL)

# Rainbow-Test
raintest(lm_h1a)
raintest(lm_h1b)


# # 4. Keine starke Multikollinearität (nicht für einfache Regression!)
ols_vif_tol(lm_h1c)

# 5. Unkorreliertheit der Fehler

# Cook's Distanz

ols_plot_cooksd_chart(lm_h1a)
ols_plot_cooksd_chart(lm_h1b)

# Studentisierte Residuen
ols_plot_resid_stud(lm_h1a)
ols_plot_resid_stud(lm_h1b)

# DiffBeta

ols_plot_dfbetas(lm_h1a)

# 6. Skaleneigenschaften

# Die Eignung der Skaleneigenschaften ergibt sich aus
# der Betrachtung der verwendeten Skalen
# (keine empirische Prüfung).

# 7. Keine starken Ausreißer



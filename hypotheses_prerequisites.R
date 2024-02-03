# Quelle: http://www.regorz-statistik.de/inhalte/r_regressionsvoraussetzungen.html
# Multiple Regression mit umfassender Prüfung der Voraussetzungen

# Benötigte Packages laden
library(car)
library(olsrr)
library(moments)
library(DescTools)
library(lmtest)
library(jtools)
library(lmtest)

# Parameter für den Output der Regression
konfidenz <- 0.95
nachkomma <- 3

# 1.1 Unstandardisierte Ergebnisse
summ(lm_h1c_var_rm, confint=TRUE, ci.width = konfidenz,
     digits = nachkomma)

# 1.2 Standardisierte Ergebnisse
summ(lm_h1c_var_rm, scale=TRUE, transform.response = TRUE, digits=nachkomma)


# OUTLIER-ANALYSE ALS ERSTES

# Cook's Distanz

ols_plot_cooksd_chart(lm_h1a) # 31, 51, 61, 103, 107, 111, 119

# ols_plot_cooksd_chart(lm_h1b)
ols_plot_cooksd_chart(lm_h1b_f_f1) # 8, 13, 42, 62, 101, 121
ols_plot_cooksd_chart(lm_h1b_f_f2) # 25, 42, 54, 57, 80, 101, 107, 111
ols_plot_cooksd_chart(lm_h1b_f_f3) # 20, 31, 69, 80, 101, 105, 120, 121
ols_plot_cooksd_chart(lm_h1b_f_f4) # 11, 31, 45, 49, 98, 101, 104, 112, 120
ols_plot_cooksd_chart(lm_h1b_p_f1) # 42, 49, 52, 57, 62, 101, 120, 121
ols_plot_cooksd_chart(lm_h1b_p_f2) # 20, 29, 51, 61, 62, 101, 121
ols_plot_cooksd_chart(lm_h1b_p_f3) # 4, 18, 20, 49, 66, 101, 107, 120
ols_plot_cooksd_chart(lm_h1b_sr_f1) # 41, 80, 101, 120, 121
ols_plot_cooksd_chart(lm_h1b_sr_f2) # 122, 102, 42

ols_plot_cooksd_chart(lm_h1c) # 6, 15, 30, 31, 40, 51, 74, 90, 103, 107, 111
ols_plot_cooksd_chart(lm_h1c_var_rm) # 6, 30, 31, 51, 61, 119

# Outlier & Leverage

ols_plot_resid_lev(lm_h1a) # O&L: 61; L: 121

# ols_plot_resid_lev(lm_h1b)
ols_plot_resid_lev(lm_h1b_f_f1) # O&L: 42, 62; L: 121;
ols_plot_resid_lev(lm_h1b_f_f2) # O&L: 102, 42; L: 121
ols_plot_resid_lev(lm_h1b_f_f3) # O&L: 122; L: 121
ols_plot_resid_lev(lm_h1b_f_f4) # O&L: 31, 120, 6, 98, 45, 104
ols_plot_resid_lev(lm_h1b_p_f1) # O&L: 122, 102; L: 121
ols_plot_resid_lev(lm_h1b_p_f2) # O&L: 29, 122; L: 121
ols_plot_resid_lev(lm_h1b_p_f3) # O&L: 20; L: 121
ols_plot_resid_lev(lm_h1b_sr_f1) # L: 121
ols_plot_resid_lev(lm_h1b_sr_f2) # O&L: 122; L: 121

ols_plot_resid_lev(lm_h1c) # O: 51, 31, 15
ols_plot_resid_lev(lm_h1c_var_rm) # O&L: 51; O: 31, 6


# SECTION: PREREQUISITES FOR REGRESSION/MEDIATION Hs (H1a-H1c)

# 1. Normalverteilung der Fehler in der Population

# Histogramm der Residuen
ols_plot_resid_hist(lm_h1a)
ols_plot_resid_hist(lm_h1b_f_f1)
ols_plot_resid_hist(lm_h1b_f_f2)
ols_plot_resid_hist(lm_h1b_f_f3)
ols_plot_resid_hist(lm_h1b_f_f4)
ols_plot_resid_hist(lm_h1b_p_f1)
ols_plot_resid_hist(lm_h1b_p_f2)
ols_plot_resid_hist(lm_h1b_p_f3)
ols_plot_resid_hist(lm_h1b_sr_f1)
ols_plot_resid_hist(lm_h1b_sr_f2)
ols_plot_resid_hist(lm_h1c)
ols_plot_resid_hist(lm_h1c_var_rm)

# PP-Plot / QQ-Plot
ols_plot_resid_qq(lm_h1a)
ols_plot_resid_qq(lm_h1b_f_f1)
ols_plot_resid_qq(lm_h1b_f_f2)
ols_plot_resid_qq(lm_h1b_f_f3)
ols_plot_resid_qq(lm_h1b_f_f4)
ols_plot_resid_qq(lm_h1b_p_f1)
ols_plot_resid_qq(lm_h1b_p_f2)
ols_plot_resid_qq(lm_h1b_p_f3)
ols_plot_resid_qq(lm_h1b_sr_f1)
ols_plot_resid_qq(lm_h1b_sr_f2)
ols_plot_resid_qq(lm_h1c)
ols_plot_resid_qq(lm_h1c_var_rm)

# Shapiro-Wilk-Test (Hypothesentest auf Normalverteilung)
shapiro.test(lm_h1a$residuals)
shapiro.test(lm_h1b_f_f1$residuals)
shapiro.test(lm_h1b_f_f2$residuals)
shapiro.test(lm_h1b_f_f3$residuals)
shapiro.test(lm_h1b_f_f4$residuals)
shapiro.test(lm_h1b_p_f1$residuals)
shapiro.test(lm_h1b_p_f2$residuals)
shapiro.test(lm_h1b_p_f3$residuals)
shapiro.test(lm_h1b_sr_f1$residuals)
shapiro.test(lm_h1b_sr_f2$residuals)
shapiro.test(lm_h1c$residuals)
shapiro.test(lm_h1c_var_rm$residuals)

# 2. Homoskedastizität / Varianzhomogenität

# Streudiagramm Fitted Values und Residuen
ols_plot_resid_fit(lm_h1a)
ols_plot_resid_fit(lm_h1b_f_f1)
ols_plot_resid_fit(lm_h1b_f_f2)
ols_plot_resid_fit(lm_h1b_f_f3)
ols_plot_resid_fit(lm_h1b_f_f4)
ols_plot_resid_fit(lm_h1b_p_f1)
ols_plot_resid_fit(lm_h1b_p_f2)
ols_plot_resid_fit(lm_h1b_p_f3)
ols_plot_resid_fit(lm_h1b_sr_f2)
ols_plot_resid_fit(lm_h1b_sr_f3)
ols_plot_resid_fit(lm_h1c)
ols_plot_resid_fit(lm_h1c_var_rm)

bptest(lm_h1a, studentize = TRUE)
bptest(lm_h1b_f_f1, studentize = TRUE)
bptest(lm_h1b_f_f2, studentize = TRUE)
bptest(lm_h1b_f_f3, studentize = TRUE)
bptest(lm_h1b_f_f4, studentize = TRUE)
bptest(lm_h1b_p_f1, studentize = TRUE)
bptest(lm_h1b_p_f2, studentize = TRUE)
bptest(lm_h1b_p_f3, studentize = TRUE)
bptest(lm_h1b_sr_f1, studentize = TRUE)
bptest(lm_h1b_sr_f2, studentize = TRUE)
bptest(lm_h1c, studentize = TRUE)
bptest(lm_h1c_var_rm, studentize = TRUE)

# plot(fitted.values(lm_h1a),residuals(lm_h1a))
# plot(fitted.values(lm_h1b),residuals(lm_h1b))

# Breusch-Pagan-Test (Hypothesentest auf Homoskedastizität)
# bptest(lm_h1a)
# bptest(lm_h1b)

# 3. Linearität

# Paarweises Streudiagramm
pairs(vars_h1a, pch = 19, lower.panel = NULL)
pairs(vars_h1b, pch = 19, lower.panel = NULL)

# Rainbow-Test
raintest(lm_h1a)
raintest(lm_h1b_f_f1)
raintest(lm_h1b_f_f2)
raintest(lm_h1b_f_f3)
raintest(lm_h1b_f_f4)
raintest(lm_h1b_p_f1)
raintest(lm_h1b_p_f2)
raintest(lm_h1b_p_f3)
raintest(lm_h1b_sr_f1)
raintest(lm_h1b_sr_f2)
raintest(lm_h1c)
raintest(lm_h1c_var_rm)


# 4. Keine starke Multikollinearität (nicht für einfache Regression!)
# Problematisch: VIF-Werte über 10
ols_vif_tol(lm_h1c)
ols_vif_tol(lm_h1c_var_rm)

# 5. Ausreißerdiagnostik
# # Studentisierte Residuen
# ols_plot_resid_stud(lm_h1a)
# ols_plot_resid_stud(lm_h1b)

# 6. Unabhängigkeit/Unkorreliertheit der Residuen

# Die Unabhängigkeit der Residuen ergibt sich aus der
# Stichprobenziehung (Querschnittsdesign ohne
# Cluster/hierarchische Datenstrukturen).

# 7. Skaleneigenschaften

# Die Eignung der Skaleneigenschaften ergibt sich aus
# der Betrachtung der verwendeten Skalen
# (keine empirische Prüfung).



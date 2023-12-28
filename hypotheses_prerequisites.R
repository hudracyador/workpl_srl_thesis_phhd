library(car)
library(olsrr)
library(moments)
library(DescTools)
library(lmtest)
library(jtools)

# Vorbereitung

# Werte setzen
konfidenz <- 0.95
nachkomma <- 3

# data.frame für grafische Linearitätsprüfung

vars_h1a <- data.frame(factors_regression$wla_f1,
                       factors_regression$wlc_f1)

# 0. Ausgabe (mit jtools-Package)

# Unstandardisierte Ergebnisse
summ(lm_h1a, confint = TRUE, ci.width = konfidenz, digits = nachkomma)

# Standardisierte Ergebnisse
summ(lm_h1a, scale = TRUE, transform.response = TRUE, digits = nachkomma)

# SECTION: PREREQUISITES FOR REGRESSION/MEDIATION Hs (H1a-H1d, H2)

# 1. Normalverteilung der Fehler in der Population

# Histogramm der Residuen
ols_plot_resid_hist(lm_h1a) # Abweichungen im Rahmen

# PP-Plot / QQ-Plot
ols_plot_resid_qq(lm_h1a) # Abweichungen im Rahmen

# Shapiro-Wilk-Test (Hypothesentest auf Normalverteilung)
shapiro.test(lm_h1a$residuals) # p-value = .8217

# Schiefe (Wert < 1) & Kurtosis (Wert < 3)
skewness(lm_h1a$residuals) #  .051
kurtosis(lm_h1a$residuals) # 2.698


# 2. Homoskedastizität / Varianzhomogenität

# Streudiagramm Fitted Values und Residuen
ols_plot_resid_fit(lm_h1a)
ols_test_breusch_pagan(lm_h1a)

# Breusch-Pagan-Test (Hypothesentest auf Homoskedastizität)
bptest(lm_h1a)


# 3. Linearität

# Paarweises Streudiagramm
pairs(vars_h1a, pch = 19, lower.panel = NULL)

# Rainbow-Test
raintest(lm_h1a)


# 4. Keine starke Multikollinearität (nicht für einfache Regression!)

ols_vif_tol(lm_h1c)

# 5. Unkorreliertheit der Fehler

# Studentisierte Residuen

ols_plot_resid_stud(lm_h1a)

# Cook's Distanz

ols_plot_cooksd_chart(lm_h1a)

# Outlier & Leverage

ols_plot_resid_lev(lm_h1a)

# DiffBeta

ols_plot_dfbetas(lm_h1a)

# 6. Skaleneigenschaften

# Die Eignung der Skaleneigenschaften ergibt sich aus
# der Betrachtung der verwendeten Skalen
# (keine empirische Prüfung).

# 7. Keine starken Ausreißer



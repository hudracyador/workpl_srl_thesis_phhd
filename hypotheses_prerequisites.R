library(car)
library(olsrr)
library(moments)

# SECTION: PREREQUISITES FOR REGRESSION/MEDIATION Hs (H1a-H1d, H2)

# 1. Normalverteilung der Fehler in der Population

# Histogramm der Residuen
ols_plot_resid_hist(lm_h1c) # Abweichungen im Rahmen

# PP-Plot / QQ-Plot
ols_plot_resid_qq(lm_h1c) # Abweichungen im Rahmen

# Shapiro-Wilk-Test
shapiro.test(lm_h1c$residuals) # p-value = .8217

# Schiefe (Wert < 1) & Kurtosis (Wert < 3)
skewness(lm_h1c$residuals) #  .051
kurtosis(lm_h1c$residuals) # 2.698


# 2. Homoskedastizität


# 3. Linearität


# 4. Keine starke Multikollinearität


# 5. Unkorreliertheit der Fehler


# 6. Skaleneigenschaften


# 7. Keine starken Ausreißer





# # Residuen auf Normalverteilung prüfen
# shapiro.test(residuals(lm_h1c))
# 
# # Autokorrelation überprüfen
# durbinWatsonTest(lm_h1c)
# 
# # Multikolinearität mit VIF (variance influence factor) überprüfen
# vif(lm_h1c)

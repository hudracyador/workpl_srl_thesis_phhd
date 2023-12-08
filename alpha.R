# Installiere und lade das Paket psych, das für die Berechnung verwendet wird
library(psych)
unloadNamespace("ggplot2")

# Ziehe ein Subset aus dem gesamten Data-Frame, bei dem aus den Variablen zwischen 
# c([Variablen]) der Reliabilitätswert berechnet wird
# check.key=TRUE überprüft eine eventuelle Inverskodierung
alpha(subset_wla, check.keys = TRUE)
alpha(subset_srl_f, check.keys = TRUE)
alpha(subset_srl_p, check.keys = TRUE)
alpha(subset_srl_sr, check.keys = TRUE)
alpha(subset_wlc, check.keys = TRUE)
alpha(subset_se, check.keys = TRUE)
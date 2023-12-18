# Installiere und lade das Paket psych, das für die Berechnung verwendet wird
library(psych)
unloadNamespace("ggplot2")

# Berechne aus dem jeweiligen Subset den Reliabilitätswert 
# check.key=TRUE überprüft eine eventuelle Inverskodierung

# raw_alpha: 0.81
alpha(subset_wla, check.keys = TRUE)

# raw_alpha: 0.81
alpha(subset_srl_f, check.keys = TRUE)

# raw_alpha: 0.86
alpha(subset_srl_p, check.keys = TRUE)

# raw_alpha: 0.83
alpha(subset_srl_sr, check.keys = TRUE)

# raw_alpha: 0.7
alpha(subset_wlc, check.keys = TRUE)

# raw_alpha: 0.88
alpha(subset_se, check.keys = TRUE)
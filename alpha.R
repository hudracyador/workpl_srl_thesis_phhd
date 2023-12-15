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

library(likert)
p <- as.data.frame(df_srl_na_col_rec[,8:19])


# library
library(likert) 

# Use a provided dataset
data(pisaitems) 
items28 <- pisaitems[, substr(names(pisaitems), 1, 5) == "ST24Q"] 

# Build plot
p <- likert(items28) 
plot(p)

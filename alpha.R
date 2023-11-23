# Installiere und lade das Paket psych, das für die Berechnung verwendet wird
install.packages('psych')
require(psych)

# Ziehe ein Subset aus dem gesamten Data-Frame, bei dem aus den Variablen zwischen 
# c([Variablen]) der Reliabilitätswert berechnet wird
# check.key=TRUE überprüft eine eventuelle Inverskodierung
alpha(subset(data_xls, select = c(Umwelt1, Umwelt2, Umwelt3)), check.keys =TRUE)
library(missMethods)
library(dplyr)

# Function for detecting missings in all subscales
help_percentmissing <- function(x) {
  sum(is.na(x)) / length(x) * 100
  # Hier wird die Summe aller Missings durch die Anzahl der
  # Antworten der Testteilnehmenden geteilt
}

percentmissing <- function(data) {
  (apply(df_srl, 1, help_percentmissing))
  # apply() wendet eine Funktion auf multiple Instanzen an, hier,
  # symbolisiert durch die "1", auf alle Zeilen des Datensatzes
  # ("2" wäre für alle Spalten)
}

nrow(df_srl_na_col_rec) # Proband:innen vorher

table(round(percentmissing(df_srl), digits = 2))

df_srl_na_col_rec_no_na <-
  df_srl_na_col_rec[percentmissing(df_srl_na_col_rec[,1:8]) < 90, ]

nrow(df_srl_na_col_rec_no_na) # Proband:innen nachher
View(df_srl_na_col_rec_no_na)

# df_srl_destr_missings_just_na <-
#  df_srl_destr_missings[rowSums(is.na(df_srl_destr_missings)) > 0, ]
# View(df_srl_destr_missings_just_na)

# Impute missings in all scales after cols 1:8 with mean method
df_srl_imp_mean <- impute_mean(df_srl_na_col_rec_no_na[,9:76])
df_srl_imp_mean <- round(
  df_srl_na_col_rec_no_na[,9:76]
  )
View(df_srl_imp_mean)
which(is.na(df_srl_imp_mean)==TRUE)
df_srl_imp_mean <- bind_cols(df_srl_na_col_rec_no_na[,1:8], df_srl_imp_mean)
View(df_srl_imp_mean)

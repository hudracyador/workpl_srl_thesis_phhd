library(psych)
library(psychTools)
library(tth)
library(rio)

# Generate descriptive data of univariate distribution of data (mean, median,
# mode, standard deviation) for principal examination for all Likert scales
scaleDescriptives <- describe(df_srl_imp_mean)

# scaleDescriptivesLatex <- df2latex(scaleDescriptives, digits = 3, apa = TRUE, 
#          label = "Deskriptive Daten aller Likert-Variablen")
# scaleDescriptivesHTML <- tth(scaleDescriptivesLatex)
# 
# write.table(scaleDescriptivesHTML, 
#             file='scaleDescriptives.html', 
#             quote = FALSE,
#             col.names = FALSE,
#             row.names = FALSE)
# # write.csv(scaleDescriptives, "scaleDescriptives.csv", row.names=TRUE)
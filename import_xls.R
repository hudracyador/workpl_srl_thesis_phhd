# Import the fully prepared xlsx file into RStudio
require(readxl)
df_srl <- read_excel("01_20231123_srlwq_deu.xlsx", 
                     sheet = "Tabelle1", range = "A1:BX117", 
                     na = "NA")
View(df_srl)

# Identify all missings in the data frame
missingCases <- which(is.na(df_srl)==TRUE)
sumMissingCases <- sum(is.na(df_srl))

# create data frame without missings
df_srl_na <- na.omit(df_srl)
View(df_srl_na)

# recode char likert statements to num
require(dplyr)

df_srl_na_rec <- as.numeric(mutate_all(
  df_srl_na, .funs = 
"trifft überhaupt nicht auf mich zu" = 1,
"trifft manchmal auf mich zu" = 2,
"trifft eher auf mich zu" = 3,
"trifft auf mich zu" = 4,
"trifft sehr auf mich zu" = 5))

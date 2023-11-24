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
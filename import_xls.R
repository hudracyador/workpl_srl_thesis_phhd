# Import the fully prepared xlsx file into RStudio
require(readxl)
df_srl <- read_excel("02_20231207_srlwq_deu.xlsx", 
                     sheet = "Tabelle1", range = "A1:BX133", 
                     na = "NA")
View(df_srl)

# Save a duplicate of the original data set for later
df_srl_duplicate <- df_srl

# See, if all 76 columns are present in the imported data set
ncol(df_srl)

# See, if all 132 rows are present in the imported data set
# Original file has 133 rows, the import makes the first row header
# so does not count
nrow(df_srl)

# Identify all missings in the data frame
missingCases <- which(is.na(df_srl)==TRUE)
sumMissingCases <- sum(is.na(df_srl))

# Create data frame with only missings
df_srl_just_na <- df_srl[rowSums(is.na(df_srl)) > 0,]

# Create data frame without missings
df_srl_na <- na.omit(df_srl)
View(df_srl_na)

# Determine sample size
sample_size <- nrow(df_srl_na)
sample_size

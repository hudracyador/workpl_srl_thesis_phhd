# Import the fully prepared xlsx file into RStudio
library(readxl)
df_srl <- read_excel("02_20231207_srlwq_deu.xlsx",
  sheet = "Tabelle1", range = "A1:BX133",
  na = "NA"
)
# View(df_srl)

# Save a duplicate of the original data set for later
df_srl_dupl <- df_srl

# See, if all 76 columns are present in the imported data set
ncol(df_srl)

# See, if all 132 rows are present in the imported data set
# Original file has 133 rows, the import makes the first row the header
# so does not count towards output of ncol()
nrow(df_srl)

# # Identify all missings in the data frame
# missingCases <- which(is.na(df_srl)==TRUE)
# sumMissingCases <- sum(is.na(df_srl))

# Create data frame that contains only observations with more than one 
# missing value
# df_srl_just_na <- df_srl[rowSums(is.na(df_srl)) > 0, ]
# View(df_srl_just_na)

# After manual check of the data outside R remove observations that are... 
# (1)-(5)
# Disclaimer: Time duration per survey participant was not included in the
# Excel output and thus had to be checked separately from RStudio!
library(dplyr)
df_srl <- df_srl |> 
  filter(!row_number() %in% c(29, 108, # (1) Empty alltogether
                              8, 43, 81, # (2) Cases of speeding
                              17, 74, 98,  # (3) Too many missings in observation
                              54, 93 # (4) Cases of Straightlining 
                              )) 
View(df_srl)

# Row number should be 122 afterwards
nrow(df_srl)

# Determine sample size
sample_size <- nrow(df_srl)
sample_size

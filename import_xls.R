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
df_srl_just_na <- df_srl[rowSums(is.na(df_srl)) > 0, ]
# View(df_srl_just_na)

# After manual check of the data outside R remove observations that are
# (1) empty altogether (2 obs.), (2) are cases of speeding (3 obs.), 
# (3) contain too many missings (4 obs.),
# (4) were cases of Straightlining (2 obs.),
# (5) or had unnormal high/low values for Mahalanobis distance (6 obs.)
# Disclaimer: Time duration per survey participant was not included in the
# Excel output and thus had to be checked separately
library(dplyr)
df_srl <- df_srl |> 
  filter(!row_number() %in% c(8, 17, 29, 34, 43, 74, 81, 98, 108, # (1) to (3)
                              54, 93, # (4)
                              90, 30, 56, 74, 76, 69)) # (5)
# View(df_srl)

# Row number should be 123 afterwards
nrow(df_srl)

# Determine sample size
sample_size <- nrow(df_srl)
sample_size

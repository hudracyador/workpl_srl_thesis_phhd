library(missMethods)
library(dplyr)

# Create function for detecting missings in a data frame
help_percentmissing <- function(x) {
  sum(is.na(x)) / length(x) * 100
  # Here, the sum of all missings is divided by the number of answers given
  # by the test participants
}

percentmissing <- function(data) {
  (apply(df_srl_col_rec, 1, help_percentmissing))
  # apply() applies a function to multiple instances, here,
  # symbolized by the "1", to all rows of the data set
  # ("2" would be for all columns)
}

nrow(df_srl_col_rec) # Test subjects before

# Create a data.frame that contains all data records with a total 
# missing percentage of less than 90 percent
df_srl_col_rec_na <-
  df_srl_col_rec[percentmissing(df_srl_col_rec[,1:76]) < 90, ]

nrow(df_srl_col_rec_na) # Test subjects after
View(df_srl_col_rec_na)

# Impute missings in columns 9:76 with mean method
# The hereby generated data frame contains all scales
# apart from personal details
df_srl_imp_mean <- impute_mean(df_srl_col_rec_na[,9:76])

# Round all <num> values from float to integer values
df_srl_imp_mean |>
  mutate(
    across(where(is.numeric), round)
  )

# Truncate all integer values with decimal points to real integers
df_srl_imp_mean <- trunc(df_srl_imp_mean)

# Check if all columns are still <num>
sapply(df_srl_imp_mean, class)
View(df_srl_imp_mean)

# Verify that there are no missings left in data frame containing all scales
# apart from personal details
which(is.na(df_srl_imp_mean)==TRUE)
# Valid if result is "integer(0)"

# Combine columns 1:8 and 9:76 for there were no missings removed in cols 1:8
df_srl_imp_mean_comb <- bind_cols(df_srl_col_rec_na[,1:8], df_srl_imp_mean)
View(df_srl_imp_mean_comb)

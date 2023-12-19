library(dplyr)

# Get SRL scores by calculating row sums of individual observations
srl_scores <- as.data.frame(rowSums(subset_srl))
colnames(srl_scores)[1] <- "srl_scores"
View(srl_scores)

factors_regression <- factors_regression |>
  mutate(
    new_col = srl_scores$srl_scores
  )
colnames(factors_regression)[13] <- "srl_scores"
View(factors_regression)

# Calculate Pearson´s correlation between all factors and SRL score
conv_valid <- cor(factors_regression, method = "pearson")

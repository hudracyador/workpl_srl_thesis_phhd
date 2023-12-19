library(xtable)

# Calculate Pearson´s correlation between all factors and SRL score
conv_valid <- round(cor(factors_regression, method = "pearson"), 2)

upper_conv_valid <- conv_valid
upper_conv_valid[lower.tri(conv_valid)] <- ""
upper_conv_valid <- as.data.frame(upper_conv_valid)
upper_conv_valid

print(xtable(upper_conv_valid), type = "html")
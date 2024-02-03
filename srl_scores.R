library(xtable)

# Calculate Pearson´s correlation between all factors and SRL score
conv_valid <- round(cor(factors_regression, method = "pearson"), 2)

upper_conv_valid <- conv_valid
upper_conv_valid[lower.tri(conv_valid)] <- ""
upper_conv_valid <- as.data.frame(upper_conv_valid)
upper_conv_valid

print(xtable(upper_conv_valid), type = "html")



save_correlation_matrix(df = factors_regression,
                        filename = 'cor_matrix_lower.csv',
                        digits = 3,
                        use = 'lower')

install.packages("cocor")
library(cocor)

# Fischers z-Test
# H1: SRL score <-> WLA
cocor.indep.groups(
  0.61,
  0.459,
  170,
  122)

# Korrelationen unterscheiden sich statistisch nicht signifikant
# Konvergente Validität ist vergleichbar
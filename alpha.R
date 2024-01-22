library(psych)
unloadNamespace("ggplot2")
unloadNamespace("scales")

# Calculate the reliability value from the respective subset
# check.key=TRUE checks for possible inverse coding

# raw_alpha: 0.77
alpha(subset_wla, check.keys = TRUE)

# raw_alpha: 0.84
alpha(subset_srl_f, check.keys = TRUE)

# raw_alpha: 0.84
alpha(subset_srl_p, check.keys = TRUE)

# raw_alpha: 0.82
alpha(subset_srl_sr, check.keys = TRUE)

# raw_alpha: 0.68
alpha(subset_wlc, check.keys = TRUE)

# raw_alpha: 0.87
alpha(subset_se, check.keys = TRUE)


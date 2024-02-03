# library(ggstatsplot)
# library(rstantools)
# 
# # Create a boxplot of the dataset, outliers are shown as two distinct points
# boxplot(df_srl_col_rec[, 9:76])$out
# 
# # Create a boxplot that labels the outliers
# ggbetweenstats(df_srl_col_rec,
#   WLA_08_info_acquire,
#   WLA_09_collab_solution,
#   outlier.tagging = TRUE
# )
# 
# df_srl_col_rec_outl <- df_srl_col_rec[, 9:76]
# 
# Q <- quantile(df_srl_col_rec_outl, probs=c(.25, .75), na.rm = FALSE)
# 
# outliers::outlier(df_srl_col_rec_outl)



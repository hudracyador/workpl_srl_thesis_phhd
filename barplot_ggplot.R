library(ggplot2)

# count number of occurences
table(clean$pd_02)

# Basic barplot
ggplot(clean, aes(factor(clean$pd_04),fill = clean$class)) +
  geom_bar(stat="count", position = "dodge") + 
  scale_fill_brewer(palette = "Set1")
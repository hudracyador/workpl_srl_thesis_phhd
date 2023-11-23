# Import the fully prepared xlsx file into RStudio
install.packages('readxl')
library(readxl)


read_xlsx(
  "excel_file.xlsx",
  range="A1:B2", 
  sheet=1,
  col_types=c("text","guess")
)

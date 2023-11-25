# The function library() will show every package and its version installed in our computer
# However it is too much information
# We can create a vector with the name of the packages to check later if a package is in it

my_packages <- library()$results[,1]
head(my_packages, 10)

# We can list the libraries that are actually loaded doing
(.packages())

# We can unload packages that are no longe needed
unloadNamespace("tidyr")

# empty Workspace
rm(list = ls())

# find out classes of specific data fram
sapply(subset_se, class)

# see dimensions of data set
dim(subset_se)

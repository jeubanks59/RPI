# RPILib.r
# Joshua L. Eubanks
# 1 December 2017

#Installing necessary libraries
install.packages("pROC", repos = 'http://cran.us.r-project.org')
install.packages("reshape2", repos = 'http://cran.us.r-project.org')

#Requiring libraries
library(pROC)
library(reshape2)

# Cleaning up the past
rm(list = ls())


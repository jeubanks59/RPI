# RPIImp.r
# Joshua L. Eubanks
# 1 December 2017

assigned <- read.csv("assigned_to.csv",header = TRUE, stringsAsFactors = FALSE)
bug <- read.csv("bug_status.csv",header = TRUE, stringsAsFactors = FALSE)
opSys <- read.csv("op_sys.csv",header = TRUE, stringsAsFactors = FALSE)
priority <- read.csv("priority.csv",header = TRUE, stringsAsFactors = FALSE)
product <- read.csv("product.csv",header = TRUE, stringsAsFactors = FALSE)
reports <- read.csv("reports.csv",header = TRUE, stringsAsFactors = FALSE)
severity <- read.csv("severity.csv",header = TRUE, stringsAsFactors = FALSE)
version <- read.csv("version.csv",header = TRUE, stringsAsFactors = FALSE)

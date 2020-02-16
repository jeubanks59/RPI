#RPIDf.r

# Merging all the cleaned tables
m1 <- merge(reports, assigned, by.x = "id", by.y = "id")
m2 <- merge(m1, product, by.x = "id", by.y = "id")
m3 <- merge(m2, version, by.x = "id", by.y = "id")

m4 <- merge(m3, opSys, by.x = "id", by.y = "id")
m5 <- merge(m4, severity, by.x = "id", by.y = "id")
m6 <- merge(m5, bug, by.x = "id", by.y = "id")
FinalDF <- merge(m6, priority, by.x = "id", by.y = "id")

# Creating dependent and removing linear dependencies
FinalDF$dependent <- as.numeric(FinalDF$current_resolution=="FIXED")
FinalDF$current_resolution <- NULL
FinalDF$current_status <- NULL
FinalDF$last <- NULL
FinalDF$opening <- NULL
FinalDF$reporter <- NULL
FinalDF$id <- NULL
FinalDF$`jdt-core-triaged` <- NULL
FinalDF$EPP <- NULL
FinalDF$Sym <- NULL
FinalDF$Galileo <- NULL
FinalDF$Europa <- NULL
FinalDF$DEVELOPMENT <- NULL
FinalDF$`4.7` <- NULL
FinalDF$`2008-Ganymede` <- NULL
FinalDF$`2.2.1` <- NULL
FinalDF$`2.2.0` <- NULL
FinalDF$`1.7.1` <- NULL
FinalDF$`0.8.0` <- NULL
FinalDF$`0.6` <- NULL
FinalDF$`0.2` <- NULL
FinalDF$`0 DD 0.9` <- NULL
FinalDF$`3.0.0` <- NULL
FinalDF$`3.0.0` <- NULL
FinalDF$`2.5.0` <- NULL
FinalDF$`2.1.0` <- NULL

# Tidying up the enviroment
rm(assigned,bug,priority,product,reports,severity, version,m1,m2,m3,m4,m5,m6)
   

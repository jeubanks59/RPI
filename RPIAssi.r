# RPIAssi.r

assigned$what <- gsub("@.*","",assigned$what)
assigned <- subset(assigned, with(assigned, unsplit(table(what), what)) >= 30)
assigned <- dcast(assigned, id ~ what, length)

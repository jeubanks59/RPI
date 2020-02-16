# RPIPro.r

product$what <- substr(product$what, 1,3)
product <- subset(product, with(product, unsplit(table(what), what)) >= 30)
product <- dcast(product, id ~ what, length )

# RPIOth.r

priority <- dcast(priority, id ~ what, length )
severity <- dcast(severity, id ~ what, length )
version <- dcast(version, id ~ what, length )
bug <- dcast(bug, id ~ what, length)

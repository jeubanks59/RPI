#RPIOps.r

opSys$what <- substr(opSys$what, 1,3)
opSys <- dcast(opSys, id ~ what, length)

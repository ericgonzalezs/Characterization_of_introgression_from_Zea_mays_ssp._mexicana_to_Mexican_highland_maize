inputfile <- commandArgs(trailingOnly = TRUE)
library(bootstrap)


IN <- read.csv(inputfile[1])

#Jackknife for D statistic
D_num <- function(x, xdata){sum(xdata[x,8])}
D_denom <- function(x, xdata){sum(xdata[x,9])}
D.num.results <- jackknife(1:nrow(IN), D_num, IN)
D.denom.results <- jackknife(1:nrow(IN), D_denom, IN)
D.jacked <- (((D.num.results$jack.values/D.denom.results$jack.values) - 
                sum(IN[,8])/sum(IN[,9]))^2)
StdErr.D <- sqrt(((length(D.jacked)-1)/length(D.jacked))*sum(D.jacked))

#Jackknife for Fhom
Fhom_num <- function(x, xdata){sum(xdata[x,10])}
Fhom_denom <- function(x, xdata){sum(xdata[x,11])}
Fhom.num.results <- jackknife(1:nrow(IN), Fhom_num, IN)
Fhom.denom.results <- jackknife(1:nrow(IN), Fhom_denom, IN)
Fhom.jacked <- (((Fhom.num.results$jack.values/Fhom.denom.results$jack.values) - 
                   sum(IN[,10])/sum(IN[,11]))^2)
StdErr.Fhom <- sqrt(((length(Fhom.jacked)-1)/length(Fhom.jacked))*sum(Fhom.jacked))
#Jackknife for Fd
Fd_num <- function(x, xdata){sum(xdata[x,6])}
Fd_denom <- function(x, xdata){sum(xdata[x,7])}
Fd.num.results <- jackknife(1:nrow(IN), Fd_num, IN)
Fd.denom.results <- jackknife(1:nrow(IN), Fd_denom, IN)
Fd.jacked <- (((Fd.num.results$jack.values/Fd.denom.results$jack.values) - 
                 sum(IN[,6])/sum(IN[,7]))^2)
StdErr.Fd <- sqrt(((length(Fd.jacked)-1)/length(Fd.jacked))*sum(Fd.jacked))

output <- c(StdErr.D, StdErr.Fhom, StdErr.Fd)
write.table(output, file=inputfile[2], quote=F, sep="\t", row.names=F, col.names=F)

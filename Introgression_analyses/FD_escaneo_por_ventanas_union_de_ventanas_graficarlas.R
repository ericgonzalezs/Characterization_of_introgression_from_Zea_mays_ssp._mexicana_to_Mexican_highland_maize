#Fosforo ANGSD, introgression was calculated taking in to account the top fd values 1% abd 10%

setwd("/home/eric/Documentos/Maiz/Introgression/PTs_FOSFORO")
list.files()

Datos_c <- read.table("D_fd_Fhom_ANGSD_Li_newq_high.txt", header=T, sep = "\t", fill= TRUE)

Datos_c <- Datos_c[-c(905535, 905536, 905537),]

Fs <- Datos_c[, c(1,2, 15:22)]

Fs_1 <- subset(Fs, Fs$CHR==1)
Fs_2 <- subset(Fs, Fs$CHR==2)
Fs_3 <- subset(Fs, Fs$CHR==3)
Fs_4 <- subset(Fs, Fs$CHR==4)
Fs_5 <- subset(Fs, Fs$CHR==5)
Fs_6 <- subset(Fs, Fs$CHR==6)
Fs_7 <- subset(Fs, Fs$CHR==7)
Fs_8 <- subset(Fs, Fs$CHR==8)
Fs_9 <- subset(Fs, Fs$CHR==9)
Fs_10 <- subset(Fs, Fs$CHR==10)


#######################Fd en ventanas de 50 SNPs###################################
#chr1

tabla1 <-c()
a <- 1
for(i in 1:round((nrow(Fs_1)/50))) {
  window <- Fs_1[a:c(a+49),]
  a<- a+50 
  FdNum <- sum(window$FdNum)
  FdDenom <- sum(window$FdDenom)
  DNum <- sum(window$DNum)
  DDenom <- sum(window$DDenom)
  FhomNum <- sum(window$FhomNum)
  FhomDenom <- sum(window$FhomDenom)
  D <- DNum/DDenom
  FdRes <- FdNum/FdDenom
  inicio <- window[1,]
  fin <-window[50,]
  medio <- (inicio[,2]+fin[,2])/2
  tabla1 <- rbind(tabla1,data.frame(window[1,1], inicio[,2], fin[,2], fin[,2]-inicio[,2], medio, FdNum, FdDenom, DNum, DDenom, FhomNum, FhomDenom,  D, FdRes))
}

#chr2
tabla2 <-c()
a <- 1
for(i in 1:round((nrow(Fs_2)/50))) {
  window <- Fs_2[a:c(a+49),]
  a<- a+50 
  FdNum <- sum(window$FdNum)
  FdDenom <- sum(window$FdDenom)
  DNum <- sum(window$DNum)
  DDenom <- sum(window$DDenom)
  FhomNum <- sum(window$FhomNum)
  FhomDenom <- sum(window$FhomDenom)
  D <- DNum/DDenom
  FdRes <- FdNum/FdDenom
  inicio <- window[1,]
  fin <-window[50,]
  medio <- (inicio[,2]+fin[,2])/2
  tabla2 <- rbind(tabla2,data.frame(window[1,1], inicio[,2], fin[,2], fin[,2]-inicio[,2], medio, FdNum, FdDenom, DNum, DDenom, FhomNum, FhomDenom,  D, FdRes))
}

#chr3
tabla3 <-c()
a <- 1
for(i in 1:round((nrow(Fs_3)/50))) {
  window <- Fs_3[a:c(a+49),]
  a<- a+50 
  FdNum <- sum(window$FdNum)
  FdDenom <- sum(window$FdDenom)
  DNum <- sum(window$DNum)
  DDenom <- sum(window$DDenom)
  FhomNum <- sum(window$FhomNum)
  FhomDenom <- sum(window$FhomDenom)
  D <- DNum/DDenom
  FdRes <- FdNum/FdDenom
  inicio <- window[1,]
  fin <-window[50,]
  medio <- (inicio[,2]+fin[,2])/2
  tabla3 <- rbind(tabla3,data.frame(window[1,1], inicio[,2], fin[,2], fin[,2]-inicio[,2], medio, FdNum, FdDenom, DNum, DDenom, FhomNum, FhomDenom,  D, FdRes))
}

#chr4

tabla4 <-c()
a <- 1
for(i in 1:round((nrow(Fs_4)/50))) {
  window <- Fs_4[a:c(a+49),]
  a<- a+50 
  FdNum <- sum(window$FdNum)
  FdDenom <- sum(window$FdDenom)
  DNum <- sum(window$DNum)
  DDenom <- sum(window$DDenom)
  FhomNum <- sum(window$FhomNum)
  FhomDenom <- sum(window$FhomDenom)
  D <- DNum/DDenom
  FdRes <- FdNum/FdDenom
  inicio <- window[1,]
  fin <-window[50,]
  medio <- (inicio[,2]+fin[,2])/2
  tabla4 <- rbind(tabla4,data.frame(window[1,1], inicio[,2], fin[,2], fin[,2]-inicio[,2], medio, FdNum, FdDenom, DNum, DDenom, FhomNum, FhomDenom,  D, FdRes))
}

#chr5

tabla5 <-c()
a <- 1
for(i in 1:round((nrow(Fs_5)/50))) {
  window <- Fs_5[a:c(a+49),]
  a<- a+50 
  FdNum <- sum(window$FdNum)
  FdDenom <- sum(window$FdDenom)
  DNum <- sum(window$DNum)
  DDenom <- sum(window$DDenom)
  FhomNum <- sum(window$FhomNum)
  FhomDenom <- sum(window$FhomDenom)
  D <- DNum/DDenom
  FdRes <- FdNum/FdDenom
  inicio <- window[1,]
  fin <-window[50,]
  medio <- (inicio[,2]+fin[,2])/2
  tabla5 <- rbind(tabla5,data.frame(window[1,1], inicio[,2], fin[,2], fin[,2]-inicio[,2], medio, FdNum, FdDenom, DNum, DDenom, FhomNum, FhomDenom,  D, FdRes))
}

#chr6

tabla6 <-c()
a <- 1
for(i in 1:round((nrow(Fs_6)/50))) {
  window <- Fs_6[a:c(a+49),]
  a<- a+50 
  FdNum <- sum(window$FdNum)
  FdDenom <- sum(window$FdDenom)
  DNum <- sum(window$DNum)
  DDenom <- sum(window$DDenom)
  FhomNum <- sum(window$FhomNum)
  FhomDenom <- sum(window$FhomDenom)
  D <- DNum/DDenom
  FdRes <- FdNum/FdDenom
  inicio <- window[1,]
  fin <-window[50,]
  medio <- (inicio[,2]+fin[,2])/2
  tabla6 <- rbind(tabla6,data.frame(window[1,1], inicio[,2], fin[,2], fin[,2]-inicio[,2], medio, FdNum, FdDenom, DNum, DDenom, FhomNum, FhomDenom,  D, FdRes))
}

#chr7
tabla7 <-c()
a <- 1
for(i in 1:round((nrow(Fs_7)/50))) {
  window <- Fs_7[a:c(a+49),]
  a<- a+50 
  FdNum <- sum(window$FdNum)
  FdDenom <- sum(window$FdDenom)
  DNum <- sum(window$DNum)
  DDenom <- sum(window$DDenom)
  FhomNum <- sum(window$FhomNum)
  FhomDenom <- sum(window$FhomDenom)
  D <- DNum/DDenom
  FdRes <- FdNum/FdDenom
  inicio <- window[1,]
  fin <-window[50,]
  medio <- (inicio[,2]+fin[,2])/2
  tabla7 <- rbind(tabla7,data.frame(window[1,1], inicio[,2], fin[,2], fin[,2]-inicio[,2], medio, FdNum, FdDenom, DNum, DDenom, FhomNum, FhomDenom,  D, FdRes))
}

#chr8
tabla8 <-c()
a <- 1
for(i in 1:round((nrow(Fs_8)/50))) {
  window <- Fs_8[a:c(a+49),]
  a<- a+50 
  FdNum <- sum(window$FdNum)
  FdDenom <- sum(window$FdDenom)
  DNum <- sum(window$DNum)
  DDenom <- sum(window$DDenom)
  FhomNum <- sum(window$FhomNum)
  FhomDenom <- sum(window$FhomDenom)
  D <- DNum/DDenom
  FdRes <- FdNum/FdDenom
  inicio <- window[1,]
  fin <-window[50,]
  medio <- (inicio[,2]+fin[,2])/2
  tabla8 <- rbind(tabla8,data.frame(window[1,1], inicio[,2], fin[,2], fin[,2]-inicio[,2], medio, FdNum, FdDenom, DNum, DDenom, FhomNum, FhomDenom,  D, FdRes))
}

#chr9
tabla9 <-c()
a <- 1
for(i in 1:round((nrow(Fs_9)/50))) {
  window <- Fs_9[a:c(a+49),]
  a<- a+50 
  FdNum <- sum(window$FdNum)
  FdDenom <- sum(window$FdDenom)
  DNum <- sum(window$DNum)
  DDenom <- sum(window$DDenom)
  FhomNum <- sum(window$FhomNum)
  FhomDenom <- sum(window$FhomDenom)
  D <- DNum/DDenom
  FdRes <- FdNum/FdDenom
  inicio <- window[1,]
  fin <-window[50,]
  medio <- (inicio[,2]+fin[,2])/2
  tabla9 <- rbind(tabla9, data.frame(window[1,1], inicio[,2], fin[,2], fin[,2]-inicio[,2], medio, FdNum, FdDenom, DNum, DDenom, FhomNum, FhomDenom,  D, FdRes))
}

#chr10
tabla10 <-c()
a <- 1
for(i in 1:round((nrow(Fs_10)/50))) {
  window <- Fs_10[a:c(a+49),]
  a<- a+50 
  FdNum <- sum(window$FdNum)
  FdDenom <- sum(window$FdDenom)
  DNum <- sum(window$DNum)
  DDenom <- sum(window$DDenom)
  FhomNum <- sum(window$FhomNum)
  FhomDenom <- sum(window$FhomDenom)
  D <- DNum/DDenom
  FdRes <- FdNum/FdDenom
  inicio <- window[1,]
  fin <-window[50,]
  medio <- (inicio[,2]+fin[,2])/2
  tabla10 <- rbind(tabla10, data.frame(window[1,1], inicio[,2], fin[,2], fin[,2]-inicio[,2], medio, FdNum, FdDenom, DNum, DDenom, FhomNum, FhomDenom, D, FdRes))
}

tabla10p <- c()
a <- 1
for(i in 1:round((nrow(Fs_10)/50))) {
  window <- Fs_10[a:c(a+49),]
  a<- a+50 
  a1 <- sum(window$FdNum)
  a2 <- sum(window$FdDenom)
  ABBA <- sum(window$ABBA)
  BABA <- sum(window$BABA)
  D <- (ABBA - BABA)/(ABBA + BABA)
  Res <- a1/a2
  inicio <- window[1,]
  fin <-window[50,]
  medio <- (inicio[,2]+fin[,2])/2
  tabla10p <- rbind(tabla10p,data.frame(window[1,c(1,2)], inicio[,2], fin[,2], fin[,2]-inicio[,2], medio, D, Res))
}

#############################subset D > 0 y Fd ente 0 y 1#########################

tabla1.subset_1 <- subset(tabla1, tabla1$D>0)
tabla2.subset_1 <- subset(tabla2, tabla2$D>0)
tabla3.subset_1 <- subset(tabla3, tabla3$D>0)
tabla4.subset_1 <- subset(tabla4, tabla4$D>0)
tabla5.subset_1 <- subset(tabla5, tabla5$D>0)
tabla6.subset_1 <- subset(tabla6, tabla6$D>0)
tabla7.subset_1 <- subset(tabla7, tabla7$D>0)
tabla8.subset_1 <- subset(tabla8, tabla8$D>0)
tabla9.subset_1 <- subset(tabla9, tabla9$D>0)
tabla10.subset_1 <- subset(tabla10, tabla10$D>0)

tabla1.subset_2 <- subset(tabla1.subset_1, tabla1.subset_1$FdRes>=0 & tabla1.subset_1$FdRes<=1)
tabla2.subset_2 <- subset(tabla2.subset_1, tabla2.subset_1$FdRes>=0 & tabla2.subset_1$FdRes<=1)
tabla3.subset_2 <- subset(tabla3.subset_1, tabla3.subset_1$FdRes>=0 & tabla3.subset_1$FdRes<=1)
tabla4.subset_2 <- subset(tabla4.subset_1, tabla4.subset_1$FdRes>=0 & tabla4.subset_1$FdRes<=1)
tabla5.subset_2 <- subset(tabla5.subset_1, tabla5.subset_1$FdRes>=0 & tabla5.subset_1$FdRes<=1)
tabla6.subset_2 <- subset(tabla6.subset_1, tabla6.subset_1$FdRes>=0 & tabla6.subset_1$FdRes<=1)
tabla7.subset_2 <- subset(tabla7.subset_1, tabla7.subset_1$FdRes>=0 & tabla7.subset_1$FdRes<=1)
tabla8.subset_2 <- subset(tabla8.subset_1, tabla8.subset_1$FdRes>=0 & tabla8.subset_1$FdRes<=1)
tabla9.subset_2 <- subset(tabla9.subset_1, tabla9.subset_1$FdRes>=0 & tabla9.subset_1$FdRes<=1)
tabla10.subset_2 <- subset(tabla10.subset_1, tabla10.subset_1$FdRes>=0 & tabla10.subset_1$FdRes<=1)

########################histograma##################################
tabla_sin_filtros_paraD <- rbind.data.frame(tabla1, tabla2, tabla3, tabla4, tabla5, tabla6, tabla7, tabla8, tabla9, tabla10)
write.csv(tabla_sin_filtros_paraD, file = "tabla_sin_filtros_paraD.csv", row.names = FALSE)

tabla_con_filtros <- rbind.data.frame(tabla1.subset_2, tabla2.subset_2, tabla3.subset_2, tabla4.subset_2, tabla5.subset_2, tabla6.subset_2, tabla7.subset_2, tabla8.subset_2, tabla9.subset_2, tabla10.subset_2)
write.csv(tabla_con_filtros, file = "TableS4_RawFd_HighlandTest_subs.csv", row.names = F)
#max(tabla_con_filtros$Res, na.rm = TRUE)
#min(tabla_con_filtros$Res, na.rm = TRUE)
# mean(tabla_con_filtros$Res, na.rm = TRUE)
# median(tabla_con_filtros$Res, na.rm = TRUE)
# Top1percent_con_filtros <- subset(tabla_con_filtros$Res, tabla_con_filtros$Res > quantile(tabla_con_filtros$Res, prob =1-1/100, na.rm = TRUE))
# min(Top1percent_con_filtros)
#Top5percent_50_confiltros <- subset(tabla_con_filtros$Res, tabla_con_filtros$Res > quantile(tabla_con_filtros$Res, prob =1-5/100, na.rm = TRUE))
#min(Top5percent_50_confiltros)
#quantile(tabla_con_filtros$Res, 0.95)
#quantile(tabla_con_filtros$Res, 0.99)
#quantile(tabla_con_filtros$Res, 0.85)

#Top10percent_50_confiltros <- subset(tabla_con_filtros$Res, tabla_con_filtros$Res > quantile(tabla_con_filtros$Res, prob =1-5/100, na.rm = TRUE))
#min(Top5percent_50_confiltros)
#top 10%
quantile(tabla_con_filtros$FdRes, 0.90)
#top 1%
quantile(tabla_con_filtros$FdRes, 0.99)

#visualización de los datos
#hist(tabla_con_filtros$Res, breaks = 100, main = "Filtered highland fd", xlab = "Fd values")
#hist(tabla_sin_filtros$Res, breaks = 100000, main = "Unfiltered parviglumis fd", xlab = "Fd values", xlim = c(-1,1))


#############################union de ventanas#########################

###Chr1
##cut off con reesampleo 0.3538084
#par no filters 0.539
#par filters 0.603
#top 1% 0.753 cubre 0.4181%
#top 10% 0.509
#top 5% 0.6016004 cubre 2.5683% 
#top 15% 0.452199 cubre 7.6749 %
#0.5540841 sin BKN32 cubre 3.6468%
#0.4882463 sin BKN32 sin filtros

tabla1.subset_2$SioNO <-ifelse(tabla1.subset_2$FdRes >=  0.753, "S" , "N")

SIoNO1<-paste(tabla1.subset_2$SioNO, collapse="")
starts1=gregexpr("NS",SIoNO1)
stops1=gregexpr("SN",SIoNO1)

inicio1<-c()
for (i in starts1[[1]]) {
  inicio1 <- append(inicio1, tabla1.subset_2$inicio...2.[i +1])
}

fin1<-c()
for (i in stops1[[1]]) {
  fin1 <- append(fin1, tabla1.subset_2$fin...2.[i])
}

Chr1_ventanas_unidas <- cbind.data.frame(inicio1, fin1)
Chr1_ventanas_unidas$chr <- 1
Chr1_ventanas_unidas$WinSize <- Chr1_ventanas_unidas$fin - Chr1_ventanas_unidas$inicio


###Chr2

tabla2.subset_2$SioNO <-ifelse(tabla2.subset_2$FdRes >=  0.753, "S" , "N")

SIoNO2<-paste(tabla2.subset_2$SioNO, collapse="")
starts2=gregexpr("NS",SIoNO2)
stops2=gregexpr("SN",SIoNO2)

inicio2<-c()
for (i in starts2[[1]]) {
  inicio2 <- append(inicio2, tabla2.subset_2$inicio...2.[i +1])
}

fin2<-c()
for (i in stops2[[1]]) {
  fin2 <- append(fin2, tabla2.subset_2$fin...2.[i])
}

Chr2_ventanas_unidas <- cbind.data.frame(inicio2, fin2)
Chr2_ventanas_unidas$chr <- 2
Chr2_ventanas_unidas$WinSize <- Chr2_ventanas_unidas$fin - Chr2_ventanas_unidas$inicio


###Chr3

tabla3.subset_2$SioNO <-ifelse(tabla3.subset_2$FdRes >=  0.753, "S" , "N")

SIoNO3<-paste(tabla3.subset_2$SioNO, collapse="")
starts3=gregexpr("NS",SIoNO3)
stops3=gregexpr("SN",SIoNO3)

inicio3<-c()
for (i in starts3[[1]]) {
  inicio3 <- append(inicio3, tabla3.subset_2$inicio...2.[i +1])
}

fin3<-c()
for (i in stops3[[1]]) {
  fin3 <- append(fin3, tabla3.subset_2$fin...2.[i])
}

Chr3_ventanas_unidas <- cbind.data.frame(inicio3, fin3)
Chr3_ventanas_unidas$chr <- 3
Chr3_ventanas_unidas$WinSize <- Chr3_ventanas_unidas$fin - Chr3_ventanas_unidas$inicio

###Chr4

tabla4.subset_2$SioNO <-ifelse(tabla4.subset_2$FdRes >=  0.753, "S" , "N")
SIoNO4 <-paste(tabla4.subset_2$SioNO, collapse="")
starts4=gregexpr("NS",SIoNO4)
stops4=gregexpr("SN",SIoNO4)

inicio4<-c()
for (i in starts4[[1]]) {
  inicio4 <- append(inicio4, tabla4.subset_2$inicio...2.[i +1])
}

fin4<-c()
for (i in stops4[[1]]) {
  fin4 <- append(fin4, tabla4.subset_2$fin...2.[i])
}

Chr4_ventanas_unidas <- cbind.data.frame(inicio4, fin4)
Chr4_ventanas_unidas$chr <- 4
Chr4_ventanas_unidas$WinSize <- Chr4_ventanas_unidas$fin - Chr4_ventanas_unidas$inicio

###Chr5

tabla5.subset_2$SioNO <-ifelse(tabla5.subset_2$FdRes >=  0.753, "S" , "N")

SIoNO5 <-paste(tabla5.subset_2$SioNO, collapse="")
starts5=gregexpr("NS",SIoNO5)
stops5=gregexpr("SN",SIoNO5)

inicio5<-c()
for (i in starts5[[1]]) {
  inicio5 <- append(inicio5, tabla5.subset_2$inicio...2.[i +1])
}

fin5<-c()
for (i in stops5[[1]]) {
  fin5 <- append(fin5, tabla5.subset_2$fin...2.[i])
}

Chr5_ventanas_unidas <- cbind.data.frame(inicio5, fin5)
Chr5_ventanas_unidas$chr <- 5
Chr5_ventanas_unidas$WinSize <- Chr5_ventanas_unidas$fin - Chr5_ventanas_unidas$inicio

###Chr6

tabla6.subset_2$SioNO <-ifelse(tabla6.subset_2$FdRes >=  0.753, "S" , "N")

#if(tabla6.subset_2[(nrow(tabla6.subset_2)), 9] == "S") {
 # lastRow6 <- cbind.data.frame(tabla6.subset_2[(nrow(tabla6.subset_2)), 3], tabla6.subset_2[(nrow(tabla6.subset_2)), 4] )
  #colnames(lastRow6) <- c("inicio6", "fin6")
#}
#tabla6.subset_2 <- tabla6.subset_2[-nrow(tabla6.subset_2),]

SIoNO6 <-paste(tabla6.subset_2$SioNO, collapse="")
starts6=gregexpr("NS",SIoNO6)
stops6=gregexpr("SN",SIoNO6)

inicio6<-c()
for (i in starts6[[1]]) {
  inicio6 <- append(inicio6, tabla6.subset_2$inicio...2.[i +1])
}

fin6<-c()
for (i in stops6[[1]]) {
  fin6 <- append(fin6, tabla6.subset_2$fin...2.[i])
}

Chr6_ventanas_unidas <- cbind.data.frame(inicio6, fin6)
#Chr6_ventanas_unidas <- rbind.data.frame(Chr6_ventanas_unidas, lastRow6)
Chr6_ventanas_unidas$chr <- 6
Chr6_ventanas_unidas$WinSize <- Chr6_ventanas_unidas$fin - Chr6_ventanas_unidas$inicio

###Chr7

tabla7.subset_2$SioNO <-ifelse(tabla7.subset_2$FdRes >=  0.753, "S" , "N")

SIoNO7 <-paste(tabla7.subset_2$SioNO, collapse="")
starts7=gregexpr("NS",SIoNO7)
stops7=gregexpr("SN",SIoNO7)

inicio7<-c()
for (i in starts7[[1]]) {
  inicio7 <- append(inicio7, tabla7.subset_2$inicio...2.[i +1])
}

fin7<-c()
for (i in stops7[[1]]) {
  fin7 <- append(fin7, tabla7.subset_2$fin...2.[i])
}

Chr7_ventanas_unidas <- cbind.data.frame(inicio7, fin7)
Chr7_ventanas_unidas$chr <- 7
Chr7_ventanas_unidas$WinSize <- Chr7_ventanas_unidas$fin - Chr7_ventanas_unidas$inicio

###Chr8

tabla8.subset_2$SioNO <-ifelse(tabla8.subset_2$FdRes >=  0.753, "S" , "N")


#if(tabla8.subset_2[(nrow(tabla8.subset_2)), 9] == "S") {
 # lastRow8 <- cbind.data.frame(tabla8.subset_2[(nrow(tabla8.subset_2)), 3], tabla8.subset_2[(nrow(tabla8.subset_2)), 4] )
  #colnames(lastRow8) <- c("inicio8", "fin8")
#}
#tabla8.subset_2 <- tabla8.subset_2[-nrow(tabla8.subset_2),]

SIoNO8 <-paste(tabla8.subset_2$SioNO, collapse="")
starts8=gregexpr("NS",SIoNO8)
stops8=gregexpr("SN",SIoNO8)

inicio8 <-c()
for (i in starts8[[1]]) {
  inicio8 <- append(inicio8, tabla8.subset_2$inicio...2.[i +1])
}

fin8 <-c()
for (i in stops8[[1]]) {
  fin8 <- append(fin8, tabla8.subset_2$fin...2.[i])
}

Chr8_ventanas_unidas <- cbind.data.frame(inicio8, fin8)
#Chr8_ventanas_unidas <- rbind.data.frame(Chr8_ventanas_unidas, lastRow8)
Chr8_ventanas_unidas$chr <- 8
Chr8_ventanas_unidas$WinSize <- Chr8_ventanas_unidas$fin - Chr8_ventanas_unidas$inicio

###Chr9

tabla9.subset_2$SioNO <-ifelse(tabla9.subset_2$FdRes >=  0.753, "S" , "N")

SIoNO9 <-paste(tabla9.subset_2$SioNO, collapse="")
starts9=gregexpr("NS",SIoNO9)
stops9=gregexpr("SN",SIoNO9)

inicio9 <-c()
for (i in starts9[[1]]) {
  inicio9 <- append(inicio9, tabla9.subset_2$inicio...2.[i +1])
}

fin9 <-c()
for (i in stops9[[1]]) {
  fin9 <- append(fin9, tabla9.subset_2$fin...2.[i])
}

Chr9_ventanas_unidas <- cbind.data.frame(inicio9, fin9)
Chr9_ventanas_unidas$chr <- 9
Chr9_ventanas_unidas$WinSize <- Chr9_ventanas_unidas$fin - Chr9_ventanas_unidas$inicio

###Chr10
tabla10.subset_2$SioNO <-ifelse(tabla10.subset_2$FdRes >=  0.753, "S" , "N")

SIoNO10 <-paste(tabla10.subset_2$SioNO, collapse="")
starts10=gregexpr("NS",SIoNO10)
stops10=gregexpr("SN",SIoNO10)

inicio10 <-c()
for (i in starts10[[1]]) {
  inicio10 <- append(inicio10, tabla10.subset_2$inicio...2.[i +1])
}

fin10 <-c()
for (i in stops10[[1]]) {
  fin10 <- append(fin10, tabla10.subset_2$fin...2.[i])
}

Chr10_ventanas_unidas <- cbind.data.frame(inicio10, fin10)
Chr10_ventanas_unidas$chr <- 10
Chr10_ventanas_unidas$WinSize <- Chr10_ventanas_unidas$fin - Chr10_ventanas_unidas$inicio


############filtrando ventanas pequeñas
#Chr1_ventanas_unidas_p <- subset(Chr1_ventanas_unidas, Chr1_ventanas_unidas$WinSize > 5000)
#Chr2_ventanas_unidas_p <- subset(Chr2_ventanas_unidas, Chr2_ventanas_unidas$WinSize > 5000)
#Chr3_ventanas_unidas_p <- subset(Chr3_ventanas_unidas, Chr3_ventanas_unidas$WinSize > 5000)
#Chr4_ventanas_unidas_p <- subset(Chr4_ventanas_unidas, Chr4_ventanas_unidas$WinSize > 5000)
#Chr5_ventanas_unidas_p <- subset(Chr5_ventanas_unidas, Chr5_ventanas_unidas$WinSize > 5000)
#Chr6_ventanas_unidas_p <- subset(Chr6_ventanas_unidas, Chr6_ventanas_unidas$WinSize > 5000)
#Chr7_ventanas_unidas_p <- subset(Chr7_ventanas_unidas, Chr7_ventanas_unidas$WinSize > 5000)
#Chr8_ventanas_unidas_p <- subset(Chr8_ventanas_unidas, Chr8_ventanas_unidas$WinSize > 5000)
#Chr9_ventanas_unidas_p <- subset(Chr9_ventanas_unidas, Chr9_ventanas_unidas$WinSize > 5000)
#Chr10_ventanas_unidas_p <- subset(Chr10_ventanas_unidas, Chr10_ventanas_unidas$WinSize > 5000)

Chr1_ventanas_unidas_p <- Chr1_ventanas_unidas
Chr2_ventanas_unidas_p <- Chr2_ventanas_unidas
Chr3_ventanas_unidas_p <- Chr3_ventanas_unidas
Chr4_ventanas_unidas_p <- Chr4_ventanas_unidas
Chr5_ventanas_unidas_p <- Chr5_ventanas_unidas
Chr6_ventanas_unidas_p <- Chr6_ventanas_unidas
Chr7_ventanas_unidas_p <- Chr7_ventanas_unidas
Chr8_ventanas_unidas_p <- Chr8_ventanas_unidas
Chr9_ventanas_unidas_p <- Chr9_ventanas_unidas
Chr10_ventanas_unidas_p <- Chr10_ventanas_unidas

############Graficando###################################

###Función multiplot

multiplot <- function(..., plotlist=NULL, file, cols=1, layout=NULL) {
  library(grid)
  
  # Make a list from the ... arguments and plotlist
  plots <- c(list(...), plotlist)
  
  numPlots = length(plots)
  
  # If layout is NULL, then use 'cols' to determine layout
  if (is.null(layout)) {
    # Make the panel
    # ncol: Number of columns of plots
    # nrow: Number of rows needed, calculated from # of cols
    layout <- matrix(seq(1, cols * ceiling(numPlots/cols)),
                     ncol = cols, nrow = ceiling(numPlots/cols))
  }
  
  if (numPlots==1) {
    print(plots[[1]])
    
  } else {
    # Set up the page
    grid.newpage()
    pushViewport(viewport(layout = grid.layout(nrow(layout), ncol(layout))))
    
    # Make each plot, in the correct location
    for (i in 1:numPlots) {
      # Get the i,j matrix positions of the regions that contain this subplot
      matchidx <- as.data.frame(which(layout == i, arr.ind = TRUE))
      
      print(plots[[i]], vp = viewport(layout.pos.row = matchidx$row,
                                      layout.pos.col = matchidx$col))
    }
  }
}


####Ploteo

library(ggplot2)
library(grid)
library(gridExtra)

###Para_Chr1_ventanas_unidas
dat1 <- data.frame(
  pos1 = Chr1_ventanas_unidas_p$chr,
  start1 = Chr1_ventanas_unidas_p$inicio1,
  end1 = Chr1_ventanas_unidas_p$fin1
)

chr1_9 <- ggplot(dat1) + geom_segment(aes(x=start1/1000000, y=pos1/1000000, xend=end1/1000000, yend=pos1/1000000),
                                      color="red", size=80) +  xlab("fd") + ylab("") + xlim(0, 305000000/1000000) + ggtitle("Fd Chr1")  + theme(panel.background = element_rect(fill = 'grey90'), panel.grid.major = element_blank(), panel.grid.minor = element_blank(), axis.text.y = element_blank(), axis.ticks.y = element_blank()) +  geom_vline(xintercept = c(0,305000000/1000000)) #+ geom_vline(xintercept = c(134.407196, 135.009178), colour = "purple", linetype="dotted", size = 3)

#chr1_9
###Para_Chr2_ventanas_unidas
dat2 <- data.frame(
  pos2 = Chr2_ventanas_unidas_p$chr,
  start2 = Chr2_ventanas_unidas_p$inicio2,
  end2 = Chr2_ventanas_unidas_p$fin2
)

chr2_9 <- ggplot(dat2) + geom_segment(aes(x=start2/1000000, y=pos2/1000000, xend=end2/1000000, yend=pos2/1000000), 
                                      color="red", size=80) +  xlab("fd") + ylab("") + xlim(0, 305000000/1000000) + ggtitle("Fd Chr2")  + theme(panel.background = element_rect(fill = 'grey90'), panel.grid.major = element_blank(), panel.grid.minor = element_blank(), axis.text.y = element_blank(), axis.ticks.y = element_blank()) +  geom_vline(xintercept = c(0, 238)) #+ geom_vline(xintercept = c(93.530381, 95.330381), colour = "purple", linetype="dotted", size = 3) +
  #geom_vline(xintercept = c(74.942759, 76.708891), colour = "darkred", linetype="dotted", size = 1) + geom_vline(xintercept = c(77.219372, 78.616611), colour = "darkred", linetype="dotted", size = 1) + geom_vline(xintercept = c(116.805706, 118.131868), colour = "darkred", linetype="dotted", size = 1) + geom_vline(xintercept = c(122.756272, 124.439135), colour = "darkred", linetype="dotted", size = 1) + geom_vline(xintercept = c(125.180321, 126.344391), colour = "darkred", linetype="dotted", size = 1) + geom_vline(xintercept = c(154.150990, 155.240331), colour = "darkred", linetype="dotted", size = 1) + geom_vline(xintercept = c(197.059631, 198.180962), colour = "coral1", linetype="dotted", size = 1)

#chr2_9

###Para_Chr3_ventanas_unidas
dat3 <- data.frame(
  pos3 = Chr3_ventanas_unidas_p$chr,
  start3 = Chr3_ventanas_unidas_p$inicio3,
  end3 = Chr3_ventanas_unidas_p$fin3
)

chr3_9 <- ggplot(dat3) + geom_segment(aes(x=start3/1000000, y=pos3/1000000, xend=end3/1000000, yend=pos3/1000000), 
                                      color="red", size=80) +  xlab("fd") + ylab("") + xlim(0, 305000000/1000000) + ggtitle("Fd Chr3")  + theme(panel.background = element_rect(fill = 'grey90'), panel.grid.major = element_blank(), panel.grid.minor = element_blank(), axis.text.y = element_blank(), axis.ticks.y = element_blank()) +  geom_vline(xintercept = c(0, 233))# + geom_vline(xintercept = c(79, 85), colour = "turquoise3", linetype="dotted", size = 3) + geom_vline(xintercept = c(99.714513, 100.714413), colour = "purple", linetype="dotted", size = 3)


#chr3_9
###Para_Ch4_ventanas_unidas
dat4 <- data.frame(
  pos4 = Chr4_ventanas_unidas_p$chr,
  start4 = Chr4_ventanas_unidas_p$inicio4,
  end4 = Chr4_ventanas_unidas_p$fin4
)

chr4_9 <- ggplot(dat4) + geom_segment(aes(x=start4/1000000, y=pos4/1000000, xend=end4/1000000, yend=pos4/1000000), 
                                      color="red", size=80) +  xlab("Mb") + ylab("") + xlim(0, 305000000/1000000) + ggtitle("Fd Chr4")  + theme(panel.background = element_rect(fill = 'grey90'), panel.grid.major = element_blank(), panel.grid.minor = element_blank(), axis.text.y = element_blank(), axis.ticks.y = element_blank()) +  geom_vline(xintercept = c(0, 243)) #+ geom_vline(xintercept = c(168.8, 182.5), colour = "turquoise3", linetype="dotted", size = 3) + geom_vline(xintercept = c(105.324404, 106.124404), colour = "purple", linetype="dotted", size = 3)

#chr4_9

###Para_Ch5_ventanas_unidas
dat5 <- data.frame(
  pos5 = Chr5_ventanas_unidas_p$chr,
  start5 = Chr5_ventanas_unidas_p$inicio5,
  end5 = Chr5_ventanas_unidas_p$fin5
)

chr5_9 <- ggplot(dat5) + geom_segment(aes(x=start5/1000000, y=pos5/1000000, xend=end5/1000000, yend=pos5/1000000), 
                                      color="red", size=80) +  xlab("fd") + ylab("") + xlim(0, 305000000/1000000) + ggtitle("Fd Chr5")  + theme(panel.background = element_rect(fill = 'grey90'), panel.grid.major = element_blank(), panel.grid.minor = element_blank(), axis.text.y = element_blank(), axis.ticks.y = element_blank()) +  geom_vline(xintercept = c(0, 218)) #+ geom_vline(xintercept = c(102.337062, 109.236149), colour = "purple", linetype="dotted", size = 3)

#chr5_9

###Para_Ch6_ventanas_unidas
dat6 <- data.frame(
  pos6 = Chr6_ventanas_unidas_p$chr,
  start6 = Chr6_ventanas_unidas_p$inicio6,
  end6 = Chr6_ventanas_unidas_p$fin6
)

chr6_9 <- ggplot(dat6) + geom_segment(aes(x=start6/1000000, y=pos6/1000000, xend=end6/1000000, yend=pos6/1000000), 
                                      color="red", size=80) +  xlab("fd") + ylab("") + xlim(0, 305000000/1000000) + ggtitle("Fd Chr6")  + theme(panel.background = element_rect(fill = 'grey90'), panel.grid.major = element_blank(), panel.grid.minor = element_blank() , axis.text.y = element_blank(), axis.ticks.y = element_blank()) +  geom_vline(xintercept = c(0, 170)) #+ geom_vline(xintercept = c(49.757970, 50.157970), colour = "purple", linetype="dotted", size = 3)

#chr6_9

###Para_Ch7_ventanas_unidas
dat7 <- data.frame(
  pos7 = Chr7_ventanas_unidas_p$chr,
  start7 = Chr7_ventanas_unidas_p$inicio7,
  end7 = Chr7_ventanas_unidas_p$fin7
)

chr7_9 <- ggplot(dat7) + geom_segment(aes(x=start7/1000000, y=pos7/1000000, xend=end7/1000000, yend=pos7/1000000), 
                                      color="red", size=80) +  xlab("Mb") + ylab("") + xlim(0, 305000000/1000000) + ggtitle("Fd Chr7")  + theme(panel.background = element_rect(fill = 'grey90'), panel.grid.major = element_blank(), panel.grid.minor = element_blank(), axis.text.y = element_blank(), axis.ticks.y = element_blank()) +  geom_vline(xintercept = c(0, 177))# +  geom_vline(xintercept = c(135, 160), colour = "turquoise3", linetype="dotted", size=3) + geom_vline(xintercept = c(54.617921, 62.517666), colour = "purple", linetype="dotted", size = 3)

#chr7_9

###Para_Chr8_ventanas_unidas
dat8 <- data.frame(
  pos8 = Chr8_ventanas_unidas_p$chr,
  start8 = Chr8_ventanas_unidas_p$inicio8,
  end8 = Chr8_ventanas_unidas_p$fin8
)

chr8_9 <- ggplot(dat8) + geom_segment(aes(x=start8/1000000, y=pos8/1000000, xend=end8/1000000, yend=pos8/1000000), 
                                      color="red", size=80) +  xlab("fd") + ylab("") + xlim(0, 305000000/1000000) + ggtitle("Fd Chr8")  + theme(panel.background = element_rect(fill = 'grey90'), panel.grid.major = element_blank(), panel.grid.minor = element_blank(), axis.text.y = element_blank(), axis.ticks.y = element_blank()) +  geom_vline(xintercept = c(0, 176)) #+ geom_vline(xintercept = c(48.518429, 50.918129), colour = "purple", linetype="dotted", size = 3)

#chr8_9

###Para_Chr9_ventanas_unidas
dat9 <- data.frame(
  pos9 = Chr9_ventanas_unidas_p$chr,
  start9 = Chr9_ventanas_unidas_p$inicio9,
  end9 = Chr9_ventanas_unidas_p$fin9
)

chr9_9 <- ggplot(dat9) + geom_segment(aes(x=start9/1000000, y=pos9/1000000, xend=end9/1000000, yend=pos9/1000000), 
                                      color="red", size=80) +  xlab("Mb") + ylab("") + xlim(0, 305000000/1000000) + ggtitle("Fd Chr9")  + theme(panel.background = element_rect(fill = 'grey90'), panel.grid.major = element_blank(), panel.grid.minor = element_blank(), axis.text.y = element_blank(), axis.ticks.y = element_blank()) +  geom_vline(xintercept = c(0, 158))# +  geom_vline(xintercept = c(107, 109), colour = "green1", linetype="dotted", size=2)  +  geom_vline(xintercept = c(100, 150), colour = "turquoise3", linetype="dotted", size=3) + geom_vline(xintercept = c(73.209680, 73.708580), colour = "purple", linetype="dotted", size = 3)

#chr9_9

###Para_Chr10_ventanas_unidas
dat10 <- data.frame(
  pos10 = Chr10_ventanas_unidas_p$chr,
  start10 = Chr10_ventanas_unidas_p$inicio10,
  end10 = Chr10_ventanas_unidas_p$fin10
)

chr10_9 <- ggplot(dat10) + geom_segment(aes(x=start10/1000000, y=pos10/1000000, xend=end10/1000000, yend=pos10/1000000), 
                                        color="red", size=80) +  xlab("Mb") + ylab("") + xlim(0, 305000000/1000000) + ggtitle("Fd Chr 10")  + theme(panel.background = element_rect(fill = 'grey90'), panel.grid.major = element_blank(), panel.grid.minor = element_blank() , axis.text.y = element_blank(), axis.ticks.y = element_blank()) +  geom_vline(xintercept = c(0, 150)) #+ geom_vline(xintercept = c(50.107411, 52.409624), colour = "purple", linetype="dotted", size = 3)

#chr10_9



####Todos los plots en 1

plots <-list(chr1_9, chr2_9, chr3_9, chr4_9, chr5_9, chr6_9, chr7_9, chr8_9, chr9_9, chr10_9)

multiplot(plotlist = plots, cols=1, rows=10)

###GRAFICANDO CON DATOS DE EXPRESION DE MEXICANA
chr1_rna_density

plots1_5 <-list(chr1, chr1_rna_density, chr2, chr2_rna_density, chr3, chr3_rna_density, chr4, chr4_rna_density, chr5, chr5_rna_density) 
plots6_10 <-list(chr6, chr6_rna_density, chr7, chr7_rna_density, chr8, chr8_rna_density, chr9, chr9_rna_density, chr10, chr10_rna_density)              


multiplot(plotlist = plots1_5, cols=1, rows=10)
multiplot(plotlist = plots6_10, cols=1, rows=10)

#chr4 haplotipo de PT y recombinación

plots_chr4 <-list(chr4, chr4_Hap, Chr4_rec_plot) 
multiplot(plotlist = plots_chr4, cols=1, rows=3)


#% que ocupan las introgresiones en el genoma
sum(Chr1_ventanas_unidas_p$WinSize)
sum(Chr2_ventanas_unidas_p$WinSize)
sum(Chr3_ventanas_unidas_p$WinSize)
sum(Chr4_ventanas_unidas_p$WinSize)
sum(Chr5_ventanas_unidas_p$WinSize)
sum(Chr6_ventanas_unidas_p$WinSize)
sum(Chr7_ventanas_unidas_p$WinSize)
sum(Chr8_ventanas_unidas_p$WinSize)
sum(Chr9_ventanas_unidas_p$WinSize)
sum(Chr10_ventanas_unidas_p$WinSize)

Total_cubierto_por_int <- sum(Chr1_ventanas_unidas_p$WinSize) + sum(Chr2_ventanas_unidas_p$WinSize) + sum(Chr3_ventanas_unidas_p$WinSize) + sum(Chr4_ventanas_unidas_p$WinSize) + sum(Chr5_ventanas_unidas_p$WinSize) + sum(Chr6_ventanas_unidas_p$WinSize) + sum(Chr7_ventanas_unidas_p$WinSize) + sum(Chr8_ventanas_unidas_p$WinSize) + sum(Chr9_ventanas_unidas_p$WinSize) + sum(Chr10_ventanas_unidas_p$WinSize)

(Total_cubierto_por_int/2094275986) * 100

###############Crear tabla de all genomes###############


colnames(Chr1_ventanas_unidas_p) <- c("inicio", "fin", "chr", "WinSize")
colnames(Chr2_ventanas_unidas_p) <- c("inicio", "fin", "chr", "WinSize")
colnames(Chr3_ventanas_unidas_p) <- c("inicio", "fin", "chr", "WinSize")
colnames(Chr4_ventanas_unidas_p) <- c("inicio", "fin", "chr", "WinSize")
colnames(Chr5_ventanas_unidas_p) <- c("inicio", "fin", "chr", "WinSize")
colnames(Chr6_ventanas_unidas_p) <- c("inicio", "fin", "chr", "WinSize")
colnames(Chr7_ventanas_unidas_p) <- c("inicio", "fin", "chr", "WinSize")
colnames(Chr8_ventanas_unidas_p) <- c("inicio", "fin", "chr", "WinSize")
colnames(Chr9_ventanas_unidas_p) <- c("inicio", "fin", "chr", "WinSize")
colnames(Chr10_ventanas_unidas_p) <- c("inicio", "fin", "chr", "WinSize")

Tabla_int_Pts_Li_completa <- rbind.data.frame(Chr1_ventanas_unidas_p, Chr2_ventanas_unidas_p, Chr3_ventanas_unidas_p, Chr4_ventanas_unidas_p, Chr5_ventanas_unidas_p, Chr6_ventanas_unidas_p, Chr7_ventanas_unidas_p, Chr8_ventanas_unidas_p, Chr9_ventanas_unidas_p, Chr10_ventanas_unidas_p)

write.csv(Tabla_int_Pts_Li_completa, "Tabla_int_Pts_Li_completa_top1.csv")

#Tabla para Ruairidh
Tabla_Pts_li_para_R <- rbind.data.frame(tabla1.subset_2, tabla2.subset_2, tabla3.subset_2, tabla4.subset_2, tabla5.subset_2, tabla6.subset_2, tabla7.subset_2, tabla8.subset_2, tabla9.subset_2, tabla10.subset_2)

plot(Tabla_Pts_li_para_R$fin...2....inicio...2., Tabla_Pts_li_para_R$Res, ylab = "Fd", xlab = "Window size")

#min(Tabla_1032_9_para_R$fin...2....inicio...2.)
#max(Tabla_1032_9_para_R$fin...2....inicio...2.)

write.csv(Tabla_Pts_li_para_R, "Tabla_Pts_li_para_R_top1.csv", row.names = FALSE, quote = FALSE )



#min y max int
min(Tabla_1032_9_para_R$Res)
max(Tabla_1032_9_para_R$Res)

Tabla_top1 <- read.csv("Tabla_Pts_li_para_R_top1.csv")
Tabla_top10 <- read.csv("Tabla_Pts_li_para_R_top10.csv")

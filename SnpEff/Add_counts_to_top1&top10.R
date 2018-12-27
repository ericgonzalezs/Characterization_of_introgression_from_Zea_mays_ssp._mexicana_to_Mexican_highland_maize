#Leer tablas
#high effects
HIGH_HL <- read.csv("HIGH_HOM_HL.csv", header = TRUE)
HIGH_LOW <- read.csv("HIGH_HOM_LOW.csv", header = TRUE)
HIGH_LOW_Li <- read.csv("HIGH_HOM_LOW_Li.csv", header = TRUE)
HIGH_MEX <- read.csv("HIGH_HOM_MEX.csv", header = TRUE)
HIGH_PAR <- read.csv("HIGH_HOM_PAR.csv", header = TRUE)

#AHORA MODERATE
MOD_HL <- read.csv("MOD_HOM_HL.csv", header = TRUE)
MOD_LOW <- read.csv("MOD_HOM_LOW.csv", header = TRUE)
MOD_LOW_Li <- read.csv("MOD_HOM_LOW_Li.csv", header = TRUE)
MOD_MEX <- read.csv("MOD_HOM_MEX.csv", header = TRUE)
MOD_PAR <- read.csv("MOD_HOM_PAR.csv", header = TRUE)

##AHORA LOW      
LOW_HL <- read.csv("LOW_HOM_HL.csv", header = TRUE)
LOW_LOW <- read.csv("LOW_HOM_LOW.csv", header = TRUE)
LOW_LOW_Li <- read.csv("LOW_HOM_LOW_Li.csv", header = TRUE)
LOW_MEX <- read.csv("LOW_HOM_MEX.csv", header = TRUE)
LOW_PAR <- read.csv("LOW_HOM_PAR.csv", header = TRUE)

#vamos a contar efectos dentro de zonas de introgresión
Int_Windows_top1 <- read.csv("Tabla_top1_win_geneNo_RR.csv")

Int_Windows_top10 <- read.csv("Tabla_top10_win_geneNo_RR.csv")

#####Primero para High

colnames(HIGH_HL) <- c("Principal Gene", "chr", "pos", "Ref", "Alt", "Effect", "Annotation", "RIMMA0703", "RIMMA0733", "TIL25", "TIL08", "TDD39103", "BKN22", "PT1032_6", "PT_1032_9", "MUS", "TIL10", "TIL0
5", "TIL01",  "annotation of other genes", "More data")
colnames(HIGH_LOW) <- c("Principal Gene", "chr", "pos", "Ref", "Alt", "Effect", "Annotation", "RIMMA0703", "RIMMA0733", "TIL25", "TIL08", "TDD39103", "BKN22", "PT1032_6", "PT_1032_9", "MUS", "TIL10", "TIL
05", "TIL01",  "annotation of other genes", "More data")
colnames(HIGH_LOW_Li) <- c("Principal Gene", "chr", "pos", "Ref", "Alt", "Effect", "Annotation", "RIMMA0703", "RIMMA0733", "TIL25", "TIL08", "TDD39103", "BKN22", "PT1032_6", "PT_1032_9", "MUS", "TIL10", "
TIL05", "TIL01",  "annotation of other genes", "More data")
colnames(HIGH_MEX) <- c("Principal Gene", "chr", "pos", "Ref", "Alt", "Effect", "Annotation", "RIMMA0703", "RIMMA0733", "TIL25", "TIL08", "TDD39103", "BKN22", "PT1032_6", "PT_1032_9", "MUS", "TIL10", "TIL
05", "TIL01",  "annotation of other genes", "More data")
colnames(HIGH_PAR) <- c("Principal Gene", "chr", "pos", "Ref", "Alt", "Effect", "Annotation", "RIMMA0703", "RIMMA0733", "TIL25", "TIL08", "TDD39103", "BKN22", "PT1032_6", "PT_1032_9", "MUS", "TIL10", "TIL
05", "TIL01",  "annotation of other genes", "More data")

##MOD
colnames(MOD_HL) <- c("Principal Gene", "chr", "pos", "Ref", "Alt", "Effect", "Annotation", "RIMMA0703", "RIMMA0733", "TIL25", "TIL08", "TDD39103", "BKN22", "PT1032_6", "PT_1032_9", "MUS", "TIL10", "TIL05
", "TIL01",  "annotation of other genes", "More data")
colnames(MOD_LOW) <- c("Principal Gene", "chr", "pos", "Ref", "Alt", "Effect", "Annotation", "RIMMA0703", "RIMMA0733", "TIL25", "TIL08", "TDD39103", "BKN22", "PT1032_6", "PT_1032_9", "MUS", "TIL10", "TIL0
5", "TIL01",  "annotation of other genes", "More data")
colnames(MOD_LOW_Li) <- c("Principal Gene", "chr", "pos", "Ref", "Alt", "Effect", "Annotation", "RIMMA0703", "RIMMA0733", "TIL25", "TIL08", "TDD39103", "BKN22", "PT1032_6", "PT_1032_9", "MUS", "TIL10", "T
IL05", "TIL01",  "annotation of other genes", "More data")
colnames(MOD_MEX) <- c("Principal Gene", "chr", "pos", "Ref", "Alt", "Effect", "Annotation", "RIMMA0703", "RIMMA0733", "TIL25", "TIL08", "TDD39103", "BKN22", "PT1032_6", "PT_1032_9", "MUS", "TIL10", "TIL0
5", "TIL01",  "annotation of other genes", "More data")
colnames(MOD_PAR) <- c("Principal Gene", "chr", "pos", "Ref", "Alt", "Effect", "Annotation", "RIMMA0703", "RIMMA0733", "TIL25", "TIL08", "TDD39103", "BKN22", "PT1032_6", "PT_1032_9", "MUS", "TIL10", "TIL0
5", "TIL01",  "annotation of other genes", "More data")

##LOW
colnames(LOW_HL) <- c("Principal Gene", "chr", "pos", "Ref", "Alt", "Effect", "Annotation", "RIMMA0703", "RIMMA0733", "TIL25", "TIL08", "TDD39103", "BKN22", "PT1032_6", "PT_1032_9", "MUS", "TIL10", "TIL05
", "TIL01",  "annotation of other genes", "More data")
colnames(LOW_LOW) <- c("Principal Gene", "chr", "pos", "Ref", "Alt", "Effect", "Annotation", "RIMMA0703", "RIMMA0733", "TIL25", "TIL08", "TDD39103", "BKN22", "PT1032_6", "PT_1032_9", "MUS", "TIL10", "TIL0
5", "TIL01",  "annotation of other genes", "More data")
colnames(LOW_LOW_Li) <- c("Principal Gene", "chr", "pos", "Ref", "Alt", "Effect", "Annotation", "RIMMA0703", "RIMMA0733", "TIL25", "TIL08", "TDD39103", "BKN22", "PT1032_6", "PT_1032_9", "MUS", "TIL10", "T
IL05", "TIL01",  "annotation of other genes", "More data")
colnames(LOW_MEX) <- c("Principal Gene", "chr", "pos", "Ref", "Alt", "Effect", "Annotation", "RIMMA0703", "RIMMA0733", "TIL25", "TIL08", "TDD39103", "BKN22", "PT1032_6", "PT_1032_9", "MUS", "TIL10", "TIL0
5", "TIL01",  "annotation of other genes", "More data")
colnames(LOW_PAR) <- c("Principal Gene", "chr", "pos", "Ref", "Alt", "Effect", "Annotation", "RIMMA0703", "RIMMA0733", "TIL25", "TIL08", "TDD39103", "BKN22", "PT1032_6", "PT_1032_9", "MUS", "TIL10", "TIL0
5", "TIL01",  "annotation of other genes", "More data")

###########################Conteo######################################
##########################HL to1 y top10###############################
#######################################################################
##primero highlands

HIGH_Regiones_HL_top1 <- c()
for (i in 1:nrow(Int_Windows_top1)){
  HIGH_number_HL <- sum(HIGH_HL$chr == Int_Windows_top1$chr[i] & HIGH_HL$pos >= Int_Windows_top1$inicio[i] &  HIGH_HL$pos <= Int_Windows_top1$fin[i])
  HIGH_Regiones_HL_top1 <- rbind(HIGH_Regiones_HL_top1, data.frame(HIGH_number_HL))
}

Int_Windows_top1 <- cbind.data.frame(Int_Windows_top1, HIGH_Regiones_HL_top1)


HIGH_Regiones_HL_top10 <- c()
for (i in 1:nrow(Int_Windows_top10)){
  HIGH_number_HL <- sum(HIGH_HL$chr == Int_Windows_top10$chr[i] & HIGH_HL$pos >= Int_Windows_top10$inicio[i] &  HIGH_HL$pos <= Int_Windows_top10$fin[i])
  HIGH_Regiones_HL_top10 <- rbind(HIGH_Regiones_HL_top10, data.frame(HIGH_number_HL))
}

#Int_Windows_top10 <- cbind.data.frame(Int_Windows_top10, HIGH_Regiones_HL_top10)

##LOW
HIGH_Regiones_LOW_top1 <- c()
for (i in 1:nrow(Int_Windows_top1)){
  HIGH_number_LOW <- sum(HIGH_LOW$chr == Int_Windows_top1$chr[i] & HIGH_LOW$pos >= Int_Windows_top1$inicio[i] &  HIGH_LOW$pos <= Int_Windows_top1$fin[i])
  HIGH_Regiones_LOW_top1 <- rbind(HIGH_Regiones_LOW_top1, data.frame(HIGH_number_LOW))
}

Int_Windows_top1 <- cbind.data.frame(Int_Windows_top1, HIGH_Regiones_LOW_top1)

##LOW_li
HIGH_Regiones_LOW_top1 <- c()
for (i in 1:nrow(Int_Windows_top1)){
  HIGH_number_LOW_Li <- sum(HIGH_LOW_Li$chr == Int_Windows_top1$chr[i] & HIGH_LOW_Li$pos >= Int_Windows_top1$inicio[i] &  HIGH_LOW_Li$pos <= Int_Windows_top1$fin[i])
  HIGH_Regiones_LOW_top1 <- rbind(HIGH_Regiones_LOW_top1, data.frame(HIGH_number_LOW_Li))
}

Int_Windows_top1 <- cbind.data.frame(Int_Windows_top1, HIGH_Regiones_LOW_top1)

HIGH_Regiones_LOW_top10 <- c()
for (i in 1:nrow(Int_Windows_top10)){
  HIGH_number_LOW <- sum(HIGH_LOW$chr == Int_Windows_top10$chr[i] & HIGH_LOW$pos >= Int_Windows_top10$inicio[i] &  HIGH_LOW$pos <= Int_Windows_top10$fin[i])
  HIGH_Regiones_LOW_top10 <- rbind(HIGH_Regiones_LOW_top10, data.frame(HIGH_number_LOW))
}

Int_Windows_top10 <- cbind.data.frame(Int_Windows_top10, HIGH_Regiones_LOW_top10)

HIGH_Regiones_LOW_top10 <- c()
for (i in 1:nrow(Int_Windows_top10)){
  HIGH_number_LOW_Li <- sum(HIGH_LOW_Li$chr == Int_Windows_top10$chr[i] & HIGH_LOW_Li$pos >= Int_Windows_top10$inicio[i] &  HIGH_LOW_Li$pos <= Int_Windows_top10$fin[i])
  HIGH_Regiones_LOW_top10 <- rbind(HIGH_Regiones_LOW_top10, data.frame(HIGH_number_LOW_Li))
}

#Int_Windows_top10 <- cbind.data.frame(Int_Windows_top10, HIGH_Regiones_LOW_top10)

##PAR
HIGH_Regiones_PAR_top1 <- c()
for (i in 1:nrow(Int_Windows_top1)){
  HIGH_number_PAR <- sum(HIGH_PAR$chr == Int_Windows_top1$chr[i] & HIGH_PAR$pos >= Int_Windows_top1$inicio[i] &  HIGH_PAR$pos <= Int_Windows_top1$fin[i])
  HIGH_Regiones_PAR_top1 <- rbind(HIGH_Regiones_PAR_top1, data.frame(HIGH_number_PAR))
}

Int_Windows_top1 <- cbind.data.frame(Int_Windows_top1, HIGH_Regiones_PAR_top1)

HIGH_Regiones_PAR_top10 <- c()
for (i in 1:nrow(Int_Windows_top10)){
  HIGH_number_PAR <- sum(HIGH_PAR$chr == Int_Windows_top10$chr[i] & HIGH_PAR$pos >= Int_Windows_top10$inicio[i] &  HIGH_PAR$pos <= Int_Windows_top10$fin[i])
  HIGH_Regiones_PAR_top10 <- rbind(HIGH_Regiones_PAR_top10, data.frame(HIGH_number_PAR))
}

Int_Windows_top10 <- cbind.data.frame(Int_Windows_top10, HIGH_Regiones_PAR_top10)

####MEX

HIGH_Regiones_MEX_top1 <- c()
for (i in 1:nrow(Int_Windows_top1)){
  HIGH_number_MEX <- sum(HIGH_MEX$chr == Int_Windows_top1$chr[i] & HIGH_MEX$pos >= Int_Windows_top1$inicio[i] &  HIGH_MEX$pos <= Int_Windows_top1$fin[i])
  HIGH_Regiones_MEX_top1 <- rbind(HIGH_Regiones_MEX_top1, data.frame(HIGH_number_MEX))
}

Int_Windows_top1 <- cbind.data.frame(Int_Windows_top1, HIGH_Regiones_MEX_top1)

HIGH_Regiones_MEX_top10 <- c()
for (i in 1:nrow(Int_Windows_top10)){
  HIGH_number_MEX <- sum(HIGH_MEX$chr == Int_Windows_top10$chr[i] & HIGH_MEX$pos >= Int_Windows_top10$inicio[i] &  HIGH_MEX$pos <= Int_Windows_top10$fin[i])
  HIGH_Regiones_MEX_top10 <- rbind(HIGH_Regiones_MEX_top10, data.frame(HIGH_number_MEX))
}

Int_Windows_top10 <- cbind.data.frame(Int_Windows_top10, HIGH_Regiones_MEX_top10)

###########################Conteo######################################
##########################MODERATE to1 y top10###############################
#######################################################################

MOD_Regiones_HL_top1 <- c()
for (i in 1:nrow(Int_Windows_top1)){
  MOD_number_HL <- sum(MOD_HL$chr == Int_Windows_top1$chr[i] & MOD_HL$pos >= Int_Windows_top1$inicio[i] &  MOD_HL$pos <= Int_Windows_top1$fin[i])
  MOD_Regiones_HL_top1 <- rbind(MOD_Regiones_HL_top1, data.frame(MOD_number_HL))
}

Int_Windows_top1 <- cbind.data.frame(Int_Windows_top1, MOD_Regiones_HL_top1)

MOD_Regiones_HL_top10 <- c()
for (i in 1:nrow(Int_Windows_top10)){
  MOD_number_HL <- sum(MOD_HL$chr == Int_Windows_top10$chr[i] & MOD_HL$pos >= Int_Windows_top10$inicio[i] &  MOD_HL$pos <= Int_Windows_top10$fin[i])
  MOD_Regiones_HL_top10 <- rbind(MOD_Regiones_HL_top10, data.frame(MOD_number_HL))
}

Int_Windows_top10 <- cbind.data.frame(Int_Windows_top10, MOD_Regiones_HL_top10)

##LOW
MOD_Regiones_LOW_top1 <- c()
for (i in 1:nrow(Int_Windows_top1)){
  MOD_number_LOW <- sum(MOD_LOW$chr == Int_Windows_top1$chr[i] & MOD_LOW$pos >= Int_Windows_top1$inicio[i] &  MOD_LOW$pos <= Int_Windows_top1$fin[i])
  MOD_Regiones_LOW_top1 <- rbind(MOD_Regiones_LOW_top1, data.frame(MOD_number_LOW))
}

Int_Windows_top1 <- cbind.data.frame(Int_Windows_top1, MOD_Regiones_LOW_top1)

##low li
MOD_Regiones_LOW_top1 <- c()
for (i in 1:nrow(Int_Windows_top1)){
  MOD_number_LOW_Li <- sum(MOD_LOW_Li$chr == Int_Windows_top1$chr[i] & MOD_LOW_Li$pos >= Int_Windows_top1$inicio[i] &  MOD_LOW_Li$pos <= Int_Windows_top1$fin[i])
  MOD_Regiones_LOW_top1 <- rbind(MOD_Regiones_LOW_top1, data.frame(MOD_number_LOW_Li))
}
 
Int_Windows_top1 <- cbind.data.frame(Int_Windows_top1, MOD_Regiones_LOW_top1)
##View(Int_Windows_top1)


#MOD_Regiones_LOW_top10 <- c()
for (i in 1:nrow(Int_Windows_top10)){
  MOD_number_LOW <- sum(MOD_LOW$chr == Int_Windows_top10$chr[i] & MOD_LOW$pos >= Int_Windows_top10$inicio[i] &  MOD_LOW$pos <= Int_Windows_top10$fin[i])
  MOD_Regiones_LOW_top10 <- rbind(MOD_Regiones_LOW_top10, data.frame(MOD_number_LOW))
}

Int_Windows_top10 <- cbind.data.frame(Int_Windows_top10, MOD_Regiones_LOW_top10)

##li
MOD_Regiones_LOW_top10 <- c()
for (i in 1:nrow(Int_Windows_top10)){
  MOD_number_LOW_Li <- sum(MOD_LOW_Li$chr == Int_Windows_top10$chr[i] & MOD_LOW_Li$pos >= Int_Windows_top10$inicio[i] &  MOD_LOW_Li$pos <= Int_Windows_top10$fin[i])
  MOD_Regiones_LOW_top10 <- rbind(MOD_Regiones_LOW_top10, data.frame(MOD_number_LOW_Li))
}

Int_Windows_top10 <- cbind.data.frame(Int_Windows_top10, MOD_Regiones_LOW_top10)

#

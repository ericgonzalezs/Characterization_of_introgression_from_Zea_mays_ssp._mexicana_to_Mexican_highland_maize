
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

#AHORA LOW      
LOW_HL <- read.csv("LOW_HOM_HL.csv", header = TRUE)
LOW_LOW <- read.csv("LOW_HOM_LOW.csv", header = TRUE)
LOW_LOW_Li <- read.csv("LOW_HOM_LOW_Li.csv", header = TRUE)
LOW_MEX <- read.csv("LOW_HOM_MEX.csv", header = TRUE)
LOW_PAR <- read.csv("LOW_HOM_PAR.csv", header = TRUE)

#vamos a contar efectos dentro de zonas de introgresión

####Primero para High

colnames(HIGH_HL) <- c("Principal Gene", "chr", "pos", "Ref", "Alt", "Effect", "Annotation", "RIMMA0703", "RIMMA0733", "TIL25", "TIL08", "TDD39103", "BKN22", "PT1032_6", "PT_1032_9", "MUS", "TIL10", "TIL05
", "TIL01",  "annotation of other genes", "More data")
colnames(HIGH_LOW) <- c("Principal Gene", "chr", "pos", "Ref", "Alt", "Effect", "Annotation", "RIMMA0703", "RIMMA0733", "TIL25", "TIL08", "TDD39103", "BKN22", "PT1032_6", "PT_1032_9", "MUS", "TIL10", "TIL0
5", "TIL01",  "annotation of other genes", "More data")
colnames(HIGH_LOW_Li) <- c("Principal Gene", "chr", "pos", "Ref", "Alt", "Effect", "Annotation", "RIMMA0703", "RIMMA0733", "TIL25", "TIL08", "TDD39103", "BKN22", "PT1032_6", "PT_1032_9", "MUS", "TIL10", "T
IL05", "TIL01",  "annotation of other genes", "More data")
colnames(HIGH_MEX) <- c("Principal Gene", "chr", "pos", "Ref", "Alt", "Effect", "Annotation", "RIMMA0703", "RIMMA0733", "TIL25", "TIL08", "TDD39103", "BKN22", "PT1032_6", "PT_1032_9", "MUS", "TIL10", "TIL0
5", "TIL01",  "annotation of other genes", "More data")
colnames(HIGH_PAR) <- c("Principal Gene", "chr", "pos", "Ref", "Alt", "Effect", "Annotation", "RIMMA0703", "RIMMA0733", "TIL25", "TIL08", "TDD39103", "BKN22", "PT1032_6", "PT_1032_9", "MUS", "TIL10", "TIL0
5", "TIL01",  "annotation of other genes", "More data")

#MOD
colnames(MOD_HL) <- c("Principal Gene", "chr", "pos", "Ref", "Alt", "Effect", "Annotation", "RIMMA0703", "RIMMA0733", "TIL25", "TIL08", "TDD39103", "BKN22", "PT1032_6", "PT_1032_9", "MUS", "TIL10", "TIL05"
, "TIL01",  "annotation of other genes", "More data")
colnames(MOD_LOW) <- c("Principal Gene", "chr", "pos", "Ref", "Alt", "Effect", "Annotation", "RIMMA0703", "RIMMA0733", "TIL25", "TIL08", "TDD39103", "BKN22", "PT1032_6", "PT_1032_9", "MUS", "TIL10", "TIL05
", "TIL01",  "annotation of other genes", "More data")
colnames(MOD_LOW_Li) <- c("Principal Gene", "chr", "pos", "Ref", "Alt", "Effect", "Annotation", "RIMMA0703", "RIMMA0733", "TIL25", "TIL08", "TDD39103", "BKN22", "PT1032_6", "PT_1032_9", "MUS", "TIL10", "TI
L05", "TIL01",  "annotation of other genes", "More data")
colnames(MOD_MEX) <- c("Principal Gene", "chr", "pos", "Ref", "Alt", "Effect", "Annotation", "RIMMA0703", "RIMMA0733", "TIL25", "TIL08", "TDD39103", "BKN22", "PT1032_6", "PT_1032_9", "MUS", "TIL10", "TIL05
", "TIL01",  "annotation of other genes", "More data")
colnames(MOD_PAR) <- c("Principal Gene", "chr", "pos", "Ref", "Alt", "Effect", "Annotation", "RIMMA0703", "RIMMA0733", "TIL25", "TIL08", "TDD39103", "BKN22", "PT1032_6", "PT_1032_9", "MUS", "TIL10", "TIL05
", "TIL01",  "annotation of other genes", "More data")

#LOW
colnames(LOW_HL) <- c("Principal Gene", "chr", "pos", "Ref", "Alt", "Effect", "Annotation", "RIMMA0703", "RIMMA0733", "TIL25", "TIL08", "TDD39103", "BKN22", "PT1032_6", "PT_1032_9", "MUS", "TIL10", "TIL05"
, "TIL01",  "annotation of other genes", "More data")
colnames(LOW_LOW) <- c("Principal Gene", "chr", "pos", "Ref", "Alt", "Effect", "Annotation", "RIMMA0703", "RIMMA0733", "TIL25", "TIL08", "TDD39103", "BKN22", "PT1032_6", "PT_1032_9", "MUS", "TIL10", "TIL05
", "TIL01",  "annotation of other genes", "More data")
colnames(LOW_LOW_Li) <- c("Principal Gene", "chr", "pos", "Ref", "Alt", "Effect", "Annotation", "RIMMA0703", "RIMMA0733", "TIL25", "TIL08", "TDD39103", "BKN22", "PT1032_6", "PT_1032_9", "MUS", "TIL10", "TI
L05", "TIL01",  "annotation of other genes", "More data")
colnames(LOW_MEX) <- c("Principal Gene", "chr", "pos", "Ref", "Alt", "Effect", "Annotation", "RIMMA0703", "RIMMA0733", "TIL25", "TIL08", "TDD39103", "BKN22", "PT1032_6", "PT_1032_9", "MUS", "TIL10", "TIL05
", "TIL01",  "annotation of other genes", "More data")
colnames(LOW_PAR) <- c("Principal Gene", "chr", "pos", "Ref", "Alt", "Effect", "Annotation", "RIMMA0703", "RIMMA0733", "TIL25", "TIL08", "TDD39103", "BKN22", "PT1032_6", "PT_1032_9", "MUS", "TIL10", "TIL05
", "TIL01",  "annotation of other genes", "More data")

#####################################################################
#####################################################################
#########################CON GENES AHORA#############################
#####################################################################
#####################################################################

por gen
Int_genes <- read.csv("Gene_list_top1_10_RR.csv")

###########efectos HIGH
HIGH HL
HIGH_Regiones <- c()
for (i in 1:nrow(Int_genes)){
  HIGH_number_HL <- sum(HIGH_HL$chr == Int_genes$chr[i] & HIGH_HL$pos >= Int_genes$start[i] &  HIGH_HL$pos <= Int_genes$stop[i])
  HIGH_Regiones <- rbind(HIGH_Regiones, data.frame(HIGH_number_HL))
}

Int_genes <- cbind.data.frame(Int_genes, HIGH_Regiones)


#HIGH LOW
HIGH_Regiones <- c()
for (i in 1:nrow(Int_genes)){
  HIGH_number_LOW <- sum(HIGH_LOW$chr == Int_genes$chr[i] & HIGH_LOW$pos >= Int_genes$start[i] &  HIGH_LOW$pos <= Int_genes$stop[i])
  HIGH_Regiones <- rbind(HIGH_Regiones, data.frame(HIGH_number_LOW))
}

Int_genes <- cbind.data.frame(Int_genes, HIGH_Regiones)
#View(Int_genes)

#HIGH LOW Li
HIGH_Regiones <- c()
for (i in 1:nrow(Int_genes)){
  HIGH_number_LOW_Li <- sum(HIGH_LOW_Li$chr == Int_genes$chr[i] & HIGH_LOW_Li$pos >= Int_genes$start[i] &  HIGH_LOW_Li$pos <= Int_genes$stop[i])
  HIGH_Regiones <- rbind(HIGH_Regiones, data.frame(HIGH_number_LOW_Li))
}

Int_genes <- cbind.data.frame(Int_genes, HIGH_Regiones)
#View(Int_genes)

#HIGH PAR
HIGH_Regiones <- c()
for (i in 1:nrow(Int_genes)){
  HIGH_number_PAR <- sum(HIGH_PAR$chr == Int_genes$chr[i] & HIGH_PAR$pos >= Int_genes$start[i] &  HIGH_PAR$pos <= Int_genes$stop[i])
  HIGH_Regiones <- rbind(HIGH_Regiones, data.frame(HIGH_number_PAR))
}

Int_genes <- cbind.data.frame(Int_genes, HIGH_Regiones)
#View(Int_genes)

#HIGH Mex
HIGH_Regiones <- c()
for (i in 1:nrow(Int_genes)){
  HIGH_number_MEX <- sum(HIGH_MEX$chr == Int_genes$chr[i] & HIGH_MEX$pos >= Int_genes$start[i] &  HIGH_MEX$pos <= Int_genes$stop[i])
  HIGH_Regiones <- rbind(HIGH_Regiones, data.frame(HIGH_number_MEX))
}

Int_genes <- cbind.data.frame(Int_genes, HIGH_Regiones)
#View(Int_genes)


######MOD
#MOD HIGH
MOD_Regiones <- c()
for (i in 1:nrow(Int_genes)){
  MOD_number_HL <- sum(MOD_HL$chr == Int_genes$chr[i] & MOD_HL$pos >= Int_genes$start[i] &  MOD_HL$pos <= Int_genes$stop[i])
  MOD_Regiones <- rbind(MOD_Regiones, data.frame(MOD_number_HL))
}

Int_genes <- cbind.data.frame(Int_genes, MOD_Regiones)
#View(Int_genes)

#MOD LOW
MOD_Regiones <- c()
for (i in 1:nrow(Int_genes)){
  MOD_number_LOW <- sum(MOD_LOW$chr == Int_genes$chr[i] & MOD_LOW$pos >= Int_genes$start[i] &  MOD_LOW$pos <= Int_genes$stop[i])
  MOD_Regiones <- rbind(MOD_Regiones, data.frame(MOD_number_LOW))
}

Int_genes <- cbind.data.frame(Int_genes, MOD_Regiones)
#View(Int_genes)

#MOD LOW Li
MOD_Regiones <- c()
for (i in 1:nrow(Int_genes)){
  MOD_number_LOW_Li <- sum(MOD_LOW_Li$chr == Int_genes$chr[i] & MOD_LOW_Li$pos >= Int_genes$start[i] &  MOD_LOW_Li$pos <= Int_genes$stop[i])
  MOD_Regiones <- rbind(MOD_Regiones, data.frame(MOD_number_LOW_Li))
}

Int_genes <- cbind.data.frame(Int_genes, MOD_Regiones)
#View(Int_genes)

#MOD PAR
MOD_Regiones <- c()
for (i in 1:nrow(Int_genes)){
  MOD_number_PAR <- sum(MOD_PAR$chr == Int_genes$chr[i] & MOD_PAR$pos >= Int_genes$start[i] &  MOD_PAR$pos <= Int_genes$stop[i])
  MOD_Regiones <- rbind(MOD_Regiones, data.frame(MOD_number_PAR))
}

Int_genes <- cbind.data.frame(Int_genes, MOD_Regiones)
#View(Int_genes)

#MOD Mex
MOD_Regiones <- c()
for (i in 1:nrow(Int_genes)){
  MOD_number_MEX <- sum(MOD_MEX$chr == Int_genes$chr[i] & MOD_MEX$pos >= Int_genes$start[i] &  MOD_MEX$pos <= Int_genes$stop[i])
  MOD_Regiones <- rbind(MOD_Regiones, data.frame(MOD_number_MEX))
}

Int_genes <- cbind.data.frame(Int_genes, MOD_Regiones)
#View(Int_genes)

##AHORA
#LOW HIGH
LOW_Regiones <- c()
for (i in 1:nrow(Int_genes)){
  LOW_number_HL <- sum(LOW_HL$chr == Int_genes$chr[i] & LOW_HL$pos >= Int_genes$start[i] &  LOW_HL$pos <= Int_genes$stop[i])
  LOW_Regiones <- rbind(LOW_Regiones, data.frame(LOW_number_HL))
}

Int_genes <- cbind.data.frame(Int_genes, LOW_Regiones)
#View(Int_genes)

#LOW LOW
LOW_Regiones <- c()
for (i in 1:nrow(Int_genes)){
  LOW_number_LOW <- sum(LOW_LOW$chr == Int_genes$chr[i] & LOW_LOW$pos >= Int_genes$start[i] &  LOW_LOW$pos <= Int_genes$stop[i])
  LOW_Regiones <- rbind(LOW_Regiones, data.frame(LOW_number_LOW))
}

Int_genes <- cbind.data.frame(Int_genes, LOW_Regiones)
#View(Int_genes)

#LOW LOW Li
LOW_Regiones <- c()
for (i in 1:nrow(Int_genes)){
  LOW_number_LOW_Li <- sum(LOW_LOW_Li$chr == Int_genes$chr[i] & LOW_LOW_Li$pos >= Int_genes$start[i] &  LOW_LOW_Li$pos <= Int_genes$stop[i])
  LOW_Regiones <- rbind(LOW_Regiones, data.frame(LOW_number_LOW_Li))
}

Int_genes <- cbind.data.frame(Int_genes, LOW_Regiones)
#View(Int_genes)

#LOW PAR
LOW_Regiones <- c()
for (i in 1:nrow(Int_genes)){
  LOW_number_PAR <- sum(LOW_PAR$chr == Int_genes$chr[i] & LOW_PAR$pos >= Int_genes$start[i] &  LOW_PAR$pos <= Int_genes$stop[i])
  LOW_Regiones <- rbind(LOW_Regiones, data.frame(LOW_number_PAR))
}

Int_genes <- cbind.data.frame(Int_genes, LOW_Regiones)
#View(Int_genes)

#LOW Mex
LOW_Regiones <- c()
for (i in 1:nrow(Int_genes)){
  LOW_number_MEX <- sum(LOW_MEX$chr == Int_genes$chr[i] & LOW_MEX$pos >= Int_genes$start[i] &  LOW_MEX$pos <= Int_genes$stop[i])
  LOW_Regiones <- rbind(LOW_Regiones, data.frame(LOW_number_MEX))
}

Int_genes <- cbind.data.frame(Int_genes, LOW_Regiones)
#View(Int_genes)

write.csv(Int_genes, file = "Gene_list_top1_10_RR_HOM_ALT.csv")

rm(HIGH_HL)
rm(HIGH_LOW)
rm(HIGH_LOW_Li)
rm(HIGH_MEX)
rm(HIGH_PAR)

#AHORA MODERATE
rm(MOD_HL)
rm(MOD_LOW)
rm(MOD_LOW_Li)
rm(MOD_MEX)
rm(MOD_PAR)

#AHORA LOW      
rm(LOW_HL)
rm(LOW_LOW)
rm(LOW_LOW_Li)
rm(LOW_MEX)
rm(LOW_PAR)


##########################################################################
#############################HOM REF######################################
##########################################################################

#Leer tablas
#high effects

HIGH_HL <- read.csv("HIGH_HOMR_HL.csv", header = TRUE)
HIGH_LOW <- read.csv("HIGH_HOMR_LOW.csv", header = TRUE)
HIGH_LOW_Li <- read.csv("HIGH_HOMR_LOW_Li.csv", header = TRUE)
HIGH_MEX <- read.csv("HIGH_HOMR_MEX.csv", header = TRUE)
HIGH_PAR <- read.csv("HIGH_HOMR_PAR.csv", header = TRUE)

#AHORA MODERATE
MOD_HL <- read.csv("MOD_HOMR_HL.csv", header = TRUE)
MOD_LOW <- read.csv("MOD_HOMR_LOW.csv", header = TRUE)
MOD_LOW_Li <- read.csv("MOD_HOMR_LOW_Li.csv", header = TRUE)
MOD_MEX <- read.csv("MOD_HOMR_MEX.csv", header = TRUE)
MOD_PAR <- read.csv("MOD_HOMR_PAR.csv", header = TRUE)

#AHORA LOW      
LOW_HL <- read.csv("LOW_HOMR_HL.csv", header = TRUE)
LOW_LOW <- read.csv("LOW_HOMR_LOW.csv", header = TRUE)
LOW_LOW_Li <- read.csv("LOW_HOMR_LOW_Li.csv", header = TRUE)
LOW_MEX <- read.csv("LOW_HOMR_MEX.csv", header = TRUE)
LOW_PAR <- read.csv("LOW_HOMR_PAR.csv", header = TRUE)


####Primero para High

colnames(HIGH_HL) <- c("Principal Gene", "chr", "pos", "Ref", "Alt", "Effect", "Annotation", "RIMMA0703", "RIMMA0733", "TIL25", "TIL08", "TDD39103", "BKN22", "PT1032_6", "PT_1032_9", "MUS", "TIL10", "TIL05
", "TIL01",  "annotation of other genes", "More data")
colnames(HIGH_LOW) <- c("Principal Gene", "chr", "pos", "Ref", "Alt", "Effect", "Annotation", "RIMMA0703", "RIMMA0733", "TIL25", "TIL08", "TDD39103", "BKN22", "PT1032_6", "PT_1032_9", "MUS", "TIL10", "TIL0
5", "TIL01",  "annotation of other genes", "More data")
colnames(HIGH_LOW_Li) <- c("Principal Gene", "chr", "pos", "Ref", "Alt", "Effect", "Annotation", "RIMMA0703", "RIMMA0733", "TIL25", "TIL08", "TDD39103", "BKN22", "PT1032_6", "PT_1032_9", "MUS", "TIL10", "T
IL05", "TIL01",  "annotation of other genes", "More data")
colnames(HIGH_MEX) <- c("Principal Gene", "chr", "pos", "Ref", "Alt", "Effect", "Annotation", "RIMMA0703", "RIMMA0733", "TIL25", "TIL08", "TDD39103", "BKN22", "PT1032_6", "PT_1032_9", "MUS", "TIL10", "TIL0
5", "TIL01",  "annotation of other genes", "More data")
colnames(HIGH_PAR) <- c("Principal Gene", "chr", "pos", "Ref", "Alt", "Effect", "Annotation", "RIMMA0703", "RIMMA0733", "TIL25", "TIL08", "TDD39103", "BKN22", "PT1032_6", "PT_1032_9", "MUS", "TIL10", "TIL0
5", "TIL01",  "annotation of other genes", "More data")

#MOD
colnames(MOD_HL) <- c("Principal Gene", "chr", "pos", "Ref", "Alt", "Effect", "Annotation", "RIMMA0703", "RIMMA0733", "TIL25", "TIL08", "TDD39103", "BKN22", "PT1032_6", "PT_1032_9", "MUS", "TIL10", "TIL05"
, "TIL01",  "annotation of other genes", "More data")
colnames(MOD_LOW) <- c("Principal Gene", "chr", "pos", "Ref", "Alt", "Effect", "Annotation", "RIMMA0703", "RIMMA0733", "TIL25", "TIL08", "TDD39103", "BKN22", "PT1032_6", "PT_1032_9", "MUS", "TIL10", "TIL05
", "TIL01",  "annotation of other genes", "More data")
colnames(MOD_LOW_Li) <- c("Principal Gene", "chr", "pos", "Ref", "Alt", "Effect", "Annotation", "RIMMA0703", "RIMMA0733", "TIL25", "TIL08", "TDD39103", "BKN22", "PT1032_6", "PT_1032_9", "MUS", "TIL10", "TI
L05", "TIL01",  "annotation of other genes", "More data")
colnames(MOD_MEX) <- c("Principal Gene", "chr", "pos", "Ref", "Alt", "Effect", "Annotation", "RIMMA0703", "RIMMA0733", "TIL25", "TIL08", "TDD39103", "BKN22", "PT1032_6", "PT_1032_9", "MUS", "TIL10", "TIL05
", "TIL01",  "annotation of other genes", "More data")
colnames(MOD_PAR) <- c("Principal Gene", "chr", "pos", "Ref", "Alt", "Effect", "Annotation", "RIMMA0703", "RIMMA0733", "TIL25", "TIL08", "TDD39103", "BKN22", "PT1032_6", "PT_1032_9", "MUS", "TIL10", "TIL05
", "TIL01",  "annotation of other genes", "More data")


#LOW
colnames(LOW_HL) <- c("Principal Gene", "chr", "pos", "Ref", "Alt", "Effect", "Annotation", "RIMMA0703", "RIMMA0733", "TIL25", "TIL08", "TDD39103", "BKN22", "PT1032_6", "PT_1032_9", "MUS", "TIL10", "TIL05"
, "TIL01",  "annotation of other genes", "More data")
colnames(LOW_LOW) <- c("Principal Gene", "chr", "pos", "Ref", "Alt", "Effect", "Annotation", "RIMMA0703", "RIMMA0733", "TIL25", "TIL08", "TDD39103", "BKN22", "PT1032_6", "PT_1032_9", "MUS", "TIL10", "TIL05
", "TIL01",  "annotation of other genes", "More data")
colnames(LOW_LOW_Li) <- c("Principal Gene", "chr", "pos", "Ref", "Alt", "Effect", "Annotation", "RIMMA0703", "RIMMA0733", "TIL25", "TIL08", "TDD39103", "BKN22", "PT1032_6", "PT_1032_9", "MUS", "TIL10", "TI
L05", "TIL01",  "annotation of other genes", "More data")
colnames(LOW_MEX) <- c("Principal Gene", "chr", "pos", "Ref", "Alt", "Effect", "Annotation", "RIMMA0703", "RIMMA0733", "TIL25", "TIL08", "TDD39103", "BKN22", "PT1032_6", "PT_1032_9", "MUS", "TIL10", "TIL05
", "TIL01",  "annotation of other genes", "More data")
colnames(LOW_PAR) <- c("Principal Gene", "chr", "pos", "Ref", "Alt", "Effect", "Annotation", "RIMMA0703", "RIMMA0733", "TIL25", "TIL08", "TDD39103", "BKN22", "PT1032_6", "PT_1032_9", "MUS", "TIL10", "TIL05
", "TIL01",  "annotation of other genes", "More data")


############efectos HIGH
#HIGH HL
HIGH_Regiones <- c()
for (i in 1:nrow(Int_genes)){
  HIGH_number_HL_hom_REF <- sum(HIGH_HL$chr == Int_genes$chr[i] & HIGH_HL$pos >= Int_genes$start[i] &  HIGH_HL$pos <= Int_genes$stop[i])
  HIGH_Regiones <- rbind(HIGH_Regiones, data.frame(HIGH_number_HL_hom_REF))
}

Int_genes <- cbind.data.frame(Int_genes, HIGH_Regiones)
#View(Int_genes)

#HIGH LOW
HIGH_Regiones <- c()
for (i in 1:nrow(Int_genes)){
  HIGH_number_LOW_hom_REF <- sum(HIGH_LOW$chr == Int_genes$chr[i] & HIGH_LOW$pos >= Int_genes$start[i] &  HIGH_LOW$pos <= Int_genes$stop[i])
  HIGH_Regiones <- rbind(HIGH_Regiones, data.frame(HIGH_number_LOW_hom_REF))
}

Int_genes <- cbind.data.frame(Int_genes, HIGH_Regiones)
#View(Int_genes)

#HIGH LOW Li
HIGH_Regiones <- c()
for (i in 1:nrow(Int_genes)){
  HIGH_number_LOW_Li_hom_REF <- sum(HIGH_LOW_Li$chr == Int_genes$chr[i] & HIGH_LOW_Li$pos >= Int_genes$start[i] &  HIGH_LOW_Li$pos <= Int_genes$stop[i])
  HIGH_Regiones <- rbind(HIGH_Regiones, data.frame(HIGH_number_LOW_Li_hom_REF))
}

Int_genes <- cbind.data.frame(Int_genes, HIGH_Regiones)
#View(Int_genes)

#HIGH PAR
HIGH_Regiones <- c()
for (i in 1:nrow(Int_genes)){
  HIGH_number_PAR_hom_REF <- sum(HIGH_PAR$chr == Int_genes$chr[i] & HIGH_PAR$pos >= Int_genes$start[i] &  HIGH_PAR$pos <= Int_genes$stop[i])
  HIGH_Regiones <- rbind(HIGH_Regiones, data.frame(HIGH_number_PAR_hom_REF))
}

Int_genes <- cbind.data.frame(Int_genes, HIGH_Regiones)
#View(Int_genes)

#HIGH Mex
HIGH_Regiones <- c()
for (i in 1:nrow(Int_genes)){
  HIGH_number_MEX_hom_REF <- sum(HIGH_MEX$chr == Int_genes$chr[i] & HIGH_MEX$pos >= Int_genes$start[i] &  HIGH_MEX$pos <= Int_genes$stop[i])
  HIGH_Regiones <- rbind(HIGH_Regiones, data.frame(HIGH_number_MEX_hom_REF))
}

Int_genes <- cbind.data.frame(Int_genes, HIGH_Regiones)
#View(Int_genes)


######MOD
#MOD HIGH
MOD_Regiones <- c()
for (i in 1:nrow(Int_genes)){
  MOD_number_HL_hom_REF <- sum(MOD_HL$chr == Int_genes$chr[i] & MOD_HL$pos >= Int_genes$start[i] &  MOD_HL$pos <= Int_genes$stop[i])
  MOD_Regiones <- rbind(MOD_Regiones, data.frame(MOD_number_HL_hom_REF))
}

Int_genes <- cbind.data.frame(Int_genes, MOD_Regiones)
#View(Int_genes)

#MOD LOW
MOD_Regiones <- c()
for (i in 1:nrow(Int_genes)){
  MOD_number_LOW_hom_REF <- sum(MOD_LOW$chr == Int_genes$chr[i] & MOD_LOW$pos >= Int_genes$start[i] &  MOD_LOW$pos <= Int_genes$stop[i])
  MOD_Regiones <- rbind(MOD_Regiones, data.frame(MOD_number_LOW_hom_REF))
}

Int_genes <- cbind.data.frame(Int_genes, MOD_Regiones)
#View(Int_genes)

#MOD LOW Li
MOD_Regiones <- c()
for (i in 1:nrow(Int_genes)){
  MOD_number_LOW_Li_hom_REF <- sum(MOD_LOW_Li$chr == Int_genes$chr[i] & MOD_LOW_Li$pos >= Int_genes$start[i] &  MOD_LOW_Li$pos <= Int_genes$stop[i])
  MOD_Regiones <- rbind(MOD_Regiones, data.frame(MOD_number_LOW_Li_hom_REF))
}

Int_genes <- cbind.data.frame(Int_genes, MOD_Regiones)
#View(Int_genes)

#MOD PAR
MOD_Regiones <- c()
for (i in 1:nrow(Int_genes)){
  MOD_number_PAR_hom_REF <- sum(MOD_PAR$chr == Int_genes$chr[i] & MOD_PAR$pos >= Int_genes$start[i] &  MOD_PAR$pos <= Int_genes$stop[i])
  MOD_Regiones <- rbind(MOD_Regiones, data.frame(MOD_number_PAR_hom_REF))
}

Int_genes <- cbind.data.frame(Int_genes, MOD_Regiones)
#View(Int_genes)

#MOD Mex
MOD_Regiones <- c()
for (i in 1:nrow(Int_genes)){
  MOD_number_MEX_hom_REF <- sum(MOD_MEX$chr == Int_genes$chr[i] & MOD_MEX$pos >= Int_genes$start[i] &  MOD_MEX$pos <= Int_genes$stop[i])
  MOD_Regiones <- rbind(MOD_Regiones, data.frame(MOD_number_MEX_hom_REF))
}

Int_genes <- cbind.data.frame(Int_genes, MOD_Regiones)
#View(Int_genes)

##AHORA
#LOW HIGH
LOW_Regiones <- c()
for (i in 1:nrow(Int_genes)){
  LOW_number_HL_hom_REF <- sum(LOW_HL$chr == Int_genes$chr[i] & LOW_HL$pos >= Int_genes$start[i] &  LOW_HL$pos <= Int_genes$stop[i])
  LOW_Regiones <- rbind(LOW_Regiones, data.frame(LOW_number_HL_hom_REF))
}

Int_genes <- cbind.data.frame(Int_genes, LOW_Regiones)
#View(Int_genes)

#LOW LOW
LOW_Regiones <- c()
for (i in 1:nrow(Int_genes)){
  LOW_number_LOW_hom_REF <- sum(LOW_LOW$chr == Int_genes$chr[i] & LOW_LOW$pos >= Int_genes$start[i] &  LOW_LOW$pos <= Int_genes$stop[i])
  LOW_Regiones <- rbind(LOW_Regiones, data.frame(LOW_number_LOW_hom_REF))
}

Int_genes <- cbind.data.frame(Int_genes, LOW_Regiones)
#View(Int_genes)

#LOW LOW Li
LOW_Regiones <- c()
for (i in 1:nrow(Int_genes)){
  LOW_number_LOW_Li_hom_REF <- sum(LOW_LOW_Li$chr == Int_genes$chr[i] & LOW_LOW_Li$pos >= Int_genes$start[i] &  LOW_LOW_Li$pos <= Int_genes$stop[i])
  LOW_Regiones <- rbind(LOW_Regiones, data.frame(LOW_number_LOW_Li_hom_REF))
}

Int_genes <- cbind.data.frame(Int_genes, LOW_Regiones)
#View(Int_genes)

#LOW PAR
LOW_Regiones <- c()
for (i in 1:nrow(Int_genes)){
  LOW_number_PAR_hom_REF <- sum(LOW_PAR$chr == Int_genes$chr[i] & LOW_PAR$pos >= Int_genes$start[i] &  LOW_PAR$pos <= Int_genes$stop[i])
  LOW_Regiones <- rbind(LOW_Regiones, data.frame(LOW_number_PAR_hom_REF))
}

Int_genes <- cbind.data.frame(Int_genes, LOW_Regiones)
#View(Int_genes)

#LOW Mex
LOW_Regiones <- c()
for (i in 1:nrow(Int_genes)){
  LOW_number_MEX_hom_REF <- sum(LOW_MEX$chr == Int_genes$chr[i] & LOW_MEX$pos >= Int_genes$start[i] &  LOW_MEX$pos <= Int_genes$stop[i])
  LOW_Regiones <- rbind(LOW_Regiones, data.frame(LOW_number_MEX_hom_REF))
}

Int_genes <- cbind.data.frame(Int_genes, LOW_Regiones)
#View(Int_genes)

rm(HIGH_HL)
rm(HIGH_LOW)
rm(HIGH_LOW_Li)
rm(HIGH_MEX)
rm(HIGH_PAR)

#AHORA MODERATE
rm(MOD_HL)
rm(MOD_LOW)
rm(MOD_LOW_Li)
rm(MOD_MEX)
rm(MOD_PAR)

#AHORA LOW      
rm(LOW_HL)
rm(LOW_LOW)
rm(LOW_LOW_Li)
rm(LOW_MEX)
rm(LOW_PAR)


####################################################################################################
#########################ADD TOT COUNTS including sites with missing data##########################
####################################################################################################

HIGH_TOT <- read.csv("HIGH_TOT.csv", header = TRUE)
MOD_TOT <- read.csv("MOD_TOT.csv", header = TRUE)
LOW_TOT <- read.csv("LOW_TOT.csv", header = TRUE)

####Primero para High

colnames(HIGH_TOT) <- c("Principal Gene", "chr", "pos", "Ref", "Alt", "Effect", "Annotation", "RIMMA0703", "RIMMA0733", "TIL25", "TIL08", "TDD39103", "BKN22", "PT1032_6", "PT_1032_9", "MUS", "TIL10", "TIL0
5", "TIL01",  "annotation of other genes", "More data")
colnames(MOD_TOT) <- c("Principal Gene", "chr", "pos", "Ref", "Alt", "Effect", "Annotation", "RIMMA0703", "RIMMA0733", "TIL25", "TIL08", "TDD39103", "BKN22", "PT1032_6", "PT_1032_9", "MUS", "TIL10", "TIL05
", "TIL01",  "annotation of other genes", "More data")
colnames(LOW_TOT) <- c("Principal Gene", "chr", "pos", "Ref", "Alt", "Effect", "Annotation", "RIMMA0703", "RIMMA0733", "TIL25", "TIL08", "TDD39103", "BKN22", "PT1032_6", "PT_1032_9", "MUS", "TIL10", "TIL05
", "TIL01",  "annotation of other genes", "More data")
#colnames(MODIF_TOT) <- c("Principal Gene", "chr", "pos", "Ref", "Alt", "Effect", "Annotation", "RIMMA0703", "RIMMA0733", "TIL25", "TIL08", "TDD39103", "BKN22", "PT1032_6", "PT_1032_9", "MUS", "TIL10", "TI
L05", "TIL01",  "annotation of other genes", "More data")


############efectos HIGH
#HIGH
HIGH_Regiones <- c()
for (i in 1:nrow(Int_genes)){
  HIGH_TOT_C <- sum(HIGH_TOT$chr == Int_genes$chr[i] & HIGH_TOT$pos >= Int_genes$start[i] &  HIGH_TOT$pos <= Int_genes$stop[i])
  HIGH_Regiones <- rbind(HIGH_Regiones, data.frame(HIGH_TOT_C))
}

Int_genes <- cbind.data.frame(Int_genes, HIGH_Regiones)
#View(Int_genes)

######MOD
#MOD
MOD_Regiones <- c()
for (i in 1:nrow(Int_genes)){
  MOD_TOT_C <- sum(MOD_TOT$chr == Int_genes$chr[i] & MOD_TOT$pos >= Int_genes$start[i] &  MOD_TOT$pos <= Int_genes$stop[i])
  MOD_Regiones <- rbind(MOD_Regiones, data.frame(MOD_TOT_C))
}

Int_genes <- cbind.data.frame(Int_genes, MOD_Regiones)
#View(Int_genes)


#LOW
LOW_Regiones <- c()
for (i in 1:nrow(Int_genes)){
  LOW_TOT_C <- sum(LOW_TOT$chr == Int_genes$chr[i] & LOW_TOT$pos >= Int_genes$start[i] &  LOW_TOT$pos <= Int_genes$stop[i])
  LOW_Regiones <- rbind(LOW_Regiones, data.frame(LOW_TOT_C))
}

Int_genes <- cbind.data.frame(Int_genes, LOW_Regiones)
#View(Int_genes)


write.csv(Int_genes, file = "Gene_list_top1_10_RR_HOM_REF_HOM_ALT_TOT.csv")

################################################################################################
####################ADD COUNTS OF Segregating sites############################################
##################################################################################################
Int_genes <- read.csv("Gene_list_top1_10_RR_HOM_REF_HOM_ALT_TOT.csv")

#Leer tablas
#high effects

HIGH_HL <- read.csv("HIGH_SEG_HL.csv", header = TRUE)
HIGH_LOW <- read.csv("HIGH_SEG_LOW.csv", header = TRUE)
HIGH_LOW_Li <- read.csv("HIGH_SEG_LOW_Li.csv", header = TRUE)
HIGH_MEX <- read.csv("HIGH_SEG_MEX.csv", header = TRUE)
HIGH_PAR <- read.csv("HIGH_SEG_PAR.csv", header = TRUE)

#AHORA MODERATE
MOD_HL <- read.csv("MOD_SEG_HL.csv", header = TRUE)
MOD_LOW <- read.csv("MOD_SEG_LOW.csv", header = TRUE)
MOD_LOW_Li <- read.csv("MOD_SEG_LOW_Li.csv", header = TRUE)
MOD_MEX <- read.csv("MOD_SEG_MEX.csv", header = TRUE)
MOD_PAR <- read.csv("MOD_SEG_PAR.csv", header = TRUE)

#AHORA LOW      
LOW_HL <- read.csv("LOW_SEG_HL.csv", header = TRUE)
LOW_LOW <- read.csv("LOW_SEG_LOW.csv", header = TRUE)
LOW_LOW_Li <- read.csv("LOW_SEG_LOW_Li.csv", header = TRUE)
LOW_MEX <- read.csv("LOW_SEG_MEX.csv", header = TRUE)
LOW_PAR <- read.csv("LOW_SEG_PAR.csv", header = TRUE)


####Primero para High

colnames(HIGH_HL) <- c("Principal Gene", "chr", "pos", "Ref", "Alt", "Effect", "Annotation", "RIMMA0703", "RIMMA0733", "TIL25", "TIL08", "TDD39103", "BKN22", "PT1032_6", "PT_1032_9", "MUS", "TIL10", "TIL05
", "TIL01",  "annotation of other genes", "More data")
colnames(HIGH_LOW) <- c("Principal Gene", "chr", "pos", "Ref", "Alt", "Effect", "Annotation", "RIMMA0703", "RIMMA0733", "TIL25", "TIL08", "TDD39103", "BKN22", "PT1032_6", "PT_1032_9", "MUS", "TIL10", "TIL0
5", "TIL01",  "annotation of other genes", "More data")
colnames(HIGH_LOW_Li) <- c("Principal Gene", "chr", "pos", "Ref", "Alt", "Effect", "Annotation", "RIMMA0703", "RIMMA0733", "TIL25", "TIL08", "TDD39103", "BKN22", "PT1032_6", "PT_1032_9", "MUS", "TIL10", "T
IL05", "TIL01",  "annotation of other genes", "More data")
colnames(HIGH_MEX) <- c("Principal Gene", "chr", "pos", "Ref", "Alt", "Effect", "Annotation", "RIMMA0703", "RIMMA0733", "TIL25", "TIL08", "TDD39103", "BKN22", "PT1032_6", "PT_1032_9", "MUS", "TIL10", "TIL0
5", "TIL01",  "annotation of other genes", "More data")
colnames(HIGH_PAR) <- c("Principal Gene", "chr", "pos", "Ref", "Alt", "Effect", "Annotation", "RIMMA0703", "RIMMA0733", "TIL25", "TIL08", "TDD39103", "BKN22", "PT1032_6", "PT_1032_9", "MUS", "TIL10", "TIL0
5", "TIL01",  "annotation of other genes", "More data")

#MOD
colnames(MOD_HL) <- c("Principal Gene", "chr", "pos", "Ref", "Alt", "Effect", "Annotation", "RIMMA0703", "RIMMA0733", "TIL25", "TIL08", "TDD39103", "BKN22", "PT1032_6", "PT_1032_9", "MUS", "TIL10", "TIL05"
, "TIL01",  "annotation of other genes", "More data")
colnames(MOD_LOW) <- c("Principal Gene", "chr", "pos", "Ref", "Alt", "Effect", "Annotation", "RIMMA0703", "RIMMA0733", "TIL25", "TIL08", "TDD39103", "BKN22", "PT1032_6", "PT_1032_9", "MUS", "TIL10", "TIL05
", "TIL01",  "annotation of other genes", "More data")
colnames(MOD_LOW_Li) <- c("Principal Gene", "chr", "pos", "Ref", "Alt", "Effect", "Annotation", "RIMMA0703", "RIMMA0733", "TIL25", "TIL08", "TDD39103", "BKN22", "PT1032_6", "PT_1032_9", "MUS", "TIL10", "TI
L05", "TIL01",  "annotation of other genes", "More data")
colnames(MOD_MEX) <- c("Principal Gene", "chr", "pos", "Ref", "Alt", "Effect", "Annotation", "RIMMA0703", "RIMMA0733", "TIL25", "TIL08", "TDD39103", "BKN22", "PT1032_6", "PT_1032_9", "MUS", "TIL10", "TIL05
", "TIL01",  "annotation of other genes", "More data")
colnames(MOD_PAR) <- c("Principal Gene", "chr", "pos", "Ref", "Alt", "Effect", "Annotation", "RIMMA0703", "RIMMA0733", "TIL25", "TIL08", "TDD39103", "BKN22", "PT1032_6", "PT_1032_9", "MUS", "TIL10", "TIL05
", "TIL01",  "annotation of other genes", "More data")


#LOW
colnames(LOW_HL) <- c("Principal Gene", "chr", "pos", "Ref", "Alt", "Effect", "Annotation", "RIMMA0703", "RIMMA0733", "TIL25", "TIL08", "TDD39103", "BKN22", "PT1032_6", "PT_1032_9", "MUS", "TIL10", "TIL05"
, "TIL01",  "annotation of other genes", "More data")
colnames(LOW_LOW) <- c("Principal Gene", "chr", "pos", "Ref", "Alt", "Effect", "Annotation", "RIMMA0703", "RIMMA0733", "TIL25", "TIL08", "TDD39103", "BKN22", "PT1032_6", "PT_1032_9", "MUS", "TIL10", "TIL05
", "TIL01",  "annotation of other genes", "More data")
colnames(LOW_LOW_Li) <- c("Principal Gene", "chr", "pos", "Ref", "Alt", "Effect", "Annotation", "RIMMA0703", "RIMMA0733", "TIL25", "TIL08", "TDD39103", "BKN22", "PT1032_6", "PT_1032_9", "MUS", "TIL10", "TI
L05", "TIL01",  "annotation of other genes", "More data")
colnames(LOW_MEX) <- c("Principal Gene", "chr", "pos", "Ref", "Alt", "Effect", "Annotation", "RIMMA0703", "RIMMA0733", "TIL25", "TIL08", "TDD39103", "BKN22", "PT1032_6", "PT_1032_9", "MUS", "TIL10", "TIL05
", "TIL01",  "annotation of other genes", "More data")
colnames(LOW_PAR) <- c("Principal Gene", "chr", "pos", "Ref", "Alt", "Effect", "Annotation", "RIMMA0703", "RIMMA0733", "TIL25", "TIL08", "TDD39103", "BKN22", "PT1032_6", "PT_1032_9", "MUS", "TIL10", "TIL05
", "TIL01",  "annotation of other genes", "More data")


############efectos HIGH
#HIGH HL
HIGH_Regiones <- c()
for (i in 1:nrow(Int_genes)){
  HIGH_number_HL_SEG <- sum(HIGH_HL$chr == Int_genes$chr[i] & HIGH_HL$pos >= Int_genes$start[i] &  HIGH_HL$pos <= Int_genes$stop[i])
  HIGH_Regiones <- rbind(HIGH_Regiones, data.frame(HIGH_number_HL_SEG))
}

Int_genes <- cbind.data.frame(Int_genes, HIGH_Regiones)
#View(Int_genes)

#HIGH LOW
HIGH_Regiones <- c()
for (i in 1:nrow(Int_genes)){
  HIGH_number_LOW_SEG <- sum(HIGH_LOW$chr == Int_genes$chr[i] & HIGH_LOW$pos >= Int_genes$start[i] &  HIGH_LOW$pos <= Int_genes$stop[i])
  HIGH_Regiones <- rbind(HIGH_Regiones, data.frame(HIGH_number_LOW_SEG))
}

Int_genes <- cbind.data.frame(Int_genes, HIGH_Regiones)
#View(Int_genes)

#HIGH LOW Li
HIGH_Regiones <- c()
for (i in 1:nrow(Int_genes)){
  HIGH_number_LOW_Li_SEG <- sum(HIGH_LOW_Li$chr == Int_genes$chr[i] & HIGH_LOW_Li$pos >= Int_genes$start[i] &  HIGH_LOW_Li$pos <= Int_genes$stop[i])
  HIGH_Regiones <- rbind(HIGH_Regiones, data.frame(HIGH_number_LOW_Li_SEG))
}

Int_genes <- cbind.data.frame(Int_genes, HIGH_Regiones)
#View(Int_genes)

#HIGH PAR
HIGH_Regiones <- c()
for (i in 1:nrow(Int_genes)){
  HIGH_number_PAR_SEG <- sum(HIGH_PAR$chr == Int_genes$chr[i] & HIGH_PAR$pos >= Int_genes$start[i] &  HIGH_PAR$pos <= Int_genes$stop[i])
  HIGH_Regiones <- rbind(HIGH_Regiones, data.frame(HIGH_number_PAR_SEG))
}

Int_genes <- cbind.data.frame(Int_genes, HIGH_Regiones)
#View(Int_genes)

#HIGH Mex
HIGH_Regiones <- c()
for (i in 1:nrow(Int_genes)){
  HIGH_number_MEX_SEG <- sum(HIGH_MEX$chr == Int_genes$chr[i] & HIGH_MEX$pos >= Int_genes$start[i] &  HIGH_MEX$pos <= Int_genes$stop[i])
  HIGH_Regiones <- rbind(HIGH_Regiones, data.frame(HIGH_number_MEX_SEG))
}

Int_genes <- cbind.data.frame(Int_genes, HIGH_Regiones)
#View(Int_genes)


######MOD
#MOD HIGH
MOD_Regiones <- c()
for (i in 1:nrow(Int_genes)){
  MOD_number_HL_SEG <- sum(MOD_HL$chr == Int_genes$chr[i] & MOD_HL$pos >= Int_genes$start[i] &  MOD_HL$pos <= Int_genes$stop[i])
  MOD_Regiones <- rbind(MOD_Regiones, data.frame(MOD_number_HL_SEG))
}

Int_genes <- cbind.data.frame(Int_genes, MOD_Regiones)
#View(Int_genes)

#MOD LOW
MOD_Regiones <- c()
for (i in 1:nrow(Int_genes)){
  MOD_number_LOW_SEG <- sum(MOD_LOW$chr == Int_genes$chr[i] & MOD_LOW$pos >= Int_genes$start[i] &  MOD_LOW$pos <= Int_genes$stop[i])
  MOD_Regiones <- rbind(MOD_Regiones, data.frame(MOD_number_LOW_SEG))
}

Int_genes <- cbind.data.frame(Int_genes, MOD_Regiones)
#View(Int_genes)

#MOD LOW Li
MOD_Regiones <- c()
for (i in 1:nrow(Int_genes)){
  MOD_number_LOW_Li_SEG <- sum(MOD_LOW_Li$chr == Int_genes$chr[i] & MOD_LOW_Li$pos >= Int_genes$start[i] &  MOD_LOW_Li$pos <= Int_genes$stop[i])
  MOD_Regiones <- rbind(MOD_Regiones, data.frame(MOD_number_LOW_Li_SEG))
}

Int_genes <- cbind.data.frame(Int_genes, MOD_Regiones)
#View(Int_genes)

#MOD PAR
MOD_Regiones <- c()
for (i in 1:nrow(Int_genes)){
  MOD_number_PAR_SEG <- sum(MOD_PAR$chr == Int_genes$chr[i] & MOD_PAR$pos >= Int_genes$start[i] &  MOD_PAR$pos <= Int_genes$stop[i])
  MOD_Regiones <- rbind(MOD_Regiones, data.frame(MOD_number_PAR_SEG))
}

Int_genes <- cbind.data.frame(Int_genes, MOD_Regiones)
#View(Int_genes)

#MOD Mex
MOD_Regiones <- c()
for (i in 1:nrow(Int_genes)){
  MOD_number_MEX_SEG <- sum(MOD_MEX$chr == Int_genes$chr[i] & MOD_MEX$pos >= Int_genes$start[i] &  MOD_MEX$pos <= Int_genes$stop[i])
  MOD_Regiones <- rbind(MOD_Regiones, data.frame(MOD_number_MEX_SEG))
}

Int_genes <- cbind.data.frame(Int_genes, MOD_Regiones)
#View(Int_genes)

##AHORA
#LOW HIGH
LOW_Regiones <- c()
for (i in 1:nrow(Int_genes)){
  LOW_number_HL_SEG <- sum(LOW_HL$chr == Int_genes$chr[i] & LOW_HL$pos >= Int_genes$start[i] &  LOW_HL$pos <= Int_genes$stop[i])
  LOW_Regiones <- rbind(LOW_Regiones, data.frame(LOW_number_HL_SEG))
}

Int_genes <- cbind.data.frame(Int_genes, LOW_Regiones)
#View(Int_genes)

#LOW LOW
LOW_Regiones <- c()
for (i in 1:nrow(Int_genes)){
  LOW_number_LOW_SEG <- sum(LOW_LOW$chr == Int_genes$chr[i] & LOW_LOW$pos >= Int_genes$start[i] &  LOW_LOW$pos <= Int_genes$stop[i])
  LOW_Regiones <- rbind(LOW_Regiones, data.frame(LOW_number_LOW_SEG))
}

Int_genes <- cbind.data.frame(Int_genes, LOW_Regiones)
#View(Int_genes)

#LOW LOW Li
LOW_Regiones <- c()
for (i in 1:nrow(Int_genes)){
  LOW_number_LOW_Li_SEG <- sum(LOW_LOW_Li$chr == Int_genes$chr[i] & LOW_LOW_Li$pos >= Int_genes$start[i] &  LOW_LOW_Li$pos <= Int_genes$stop[i])
  LOW_Regiones <- rbind(LOW_Regiones, data.frame(LOW_number_LOW_Li_SEG))
}

Int_genes <- cbind.data.frame(Int_genes, LOW_Regiones)
#View(Int_genes)

#LOW PAR
LOW_Regiones <- c()
for (i in 1:nrow(Int_genes)){
  LOW_number_PAR_SEG <- sum(LOW_PAR$chr == Int_genes$chr[i] & LOW_PAR$pos >= Int_genes$start[i] &  LOW_PAR$pos <= Int_genes$stop[i])
  LOW_Regiones <- rbind(LOW_Regiones, data.frame(LOW_number_PAR_SEG))
}

Int_genes <- cbind.data.frame(Int_genes, LOW_Regiones)
#View(Int_genes)

#LOW Mex
LOW_Regiones <- c()
for (i in 1:nrow(Int_genes)){
  LOW_number_MEX_SEG <- sum(LOW_MEX$chr == Int_genes$chr[i] & LOW_MEX$pos >= Int_genes$start[i] &  LOW_MEX$pos <= Int_genes$stop[i])
  LOW_Regiones <- rbind(LOW_Regiones, data.frame(LOW_number_MEX_SEG))
}

Int_genes <- cbind.data.frame(Int_genes, LOW_Regiones)

write.csv(Int_genes, file = "Gene_list_top1_10_RR_HOM_REF_HOM_ALT_TOT.csv")

Tabla <- read.table("LA_Tabla_Filtrads_PTs_LOWLi_par.txt", header = FALSE, sep = "\t")


#paste Gene_name.txt CHR.txt POS.txt REF.txt ALT.txt IMPACT.txt ANOTACION.txt RIMMA0703_Geno.txt RIMMA0733_Geno.txt TIL25_GENO.txt TIL08_GENO.txt TDD39103_GENO.txt BKN22_GENO.txt PT1032_6_GENO.txt PT1032_9
_GENO.txt MUS_1261_GENO.txt TIL10_GENO.txt TIL05_GENO.txt TIL01_GENO.txt ANN_principal_gene.txt Resto_de_datos_ANN.txt > LA_Tabla_PTs_LOWLi_par.txt

##HL Fixed
HIGH_HOM_HL <- subset(Tabla, Tabla$V14=="1/1" & Tabla$V15 =="1/1" & Tabla$V16 =="1/1" & Tabla$V6 == "HIGH")
MOD_HOM_HL <- subset(Tabla, Tabla$V14=="1/1" & Tabla$V15 =="1/1" & Tabla$V16 =="1/1" & Tabla$V6 == "MODERATE")
MODIF_HOM_HL <- subset(Tabla, Tabla$V14=="1/1" & Tabla$V15 =="1/1" & Tabla$V16 =="1/1" & Tabla$V6 == "MODIFIER")
LOW_HOM_HL <- subset(Tabla, Tabla$V14=="1/1" & Tabla$V15 =="1/1" & Tabla$V16 =="1/1" & Tabla$V6 == "LOW")

#colnames(Tabla) <- c("Principal Gene", "chr", "pos", "Ref", "Alt", "Effect", "Annotation", "RIMMA0703", "RIMMA0733", "TIL25", "TIL08", "TDD39103", "BKN22", "PT1032_6", "PT_1032_9", "MUS", "TIL10", "TIL05"
, "TIL01",  "annotation of other genes", "More data")

##HL Segregating 
HIGH_SEG_HL <-Tabla[ apply(sapply(Tabla[14:16], `%in%`, c('0/1','1/0')), 1, any) & apply(sapply(Tabla[14:16], Negate(`%in%`), c('./.')), 1, all) & Tabla$V6 == "HIGH", ]
MOD_SEG_HL <-Tabla[ apply(sapply(Tabla[14:16], `%in%`, c('0/1','1/0')), 1, any) & apply(sapply(Tabla[14:16], Negate(`%in%`), c('./.')), 1, all) & Tabla$V6 == "MODERATE", ]
LOW_SEG_HL <-Tabla[ apply(sapply(Tabla[14:16], `%in%`, c('0/1','1/0')), 1, any) & apply(sapply(Tabla[14:16], Negate(`%in%`), c('./.')), 1, all) & Tabla$V6 == "LOW", ]

#HL Fixed reference
#HL Fixed
HIGH_HOMR_HL <- subset(Tabla, Tabla$V14=="0/0" & Tabla$V15 =="0/0" & Tabla$V16 =="0/0" & Tabla$V6 == "HIGH")
MOD_HOMR_HL <- subset(Tabla, Tabla$V14=="0/0" & Tabla$V15 =="0/0" & Tabla$V16 =="0/0" & Tabla$V6 == "MODERATE")
MODIF_HOMR_HL <- subset(Tabla, Tabla$V14=="0/0" & Tabla$V15 =="0/0" & Tabla$V16 =="0/0" & Tabla$V6 == "MODIFIER")
LOW_HOMR_HL <- subset(Tabla, Tabla$V14=="0/0" & Tabla$V15 =="0/0" & Tabla$V16 =="0/0" & Tabla$V6 == "LOW")


#test  <- HIGH_HL[HIGH_HL$RIMMA0703 %like% "0"| HIGH_HL$RIMMA0733 %like% "0", ]

##LOW Fixed
HIGH_HOM_LOW <- subset(Tabla, Tabla$V8=="1/1" & Tabla$V9 =="1/1" & Tabla$V13 =="1/1" & Tabla$V6 == "HIGH")
MOD_HOM_LOW <- subset(Tabla, Tabla$V8=="1/1" & Tabla$V9 =="1/1" & Tabla$V13 =="1/1" & Tabla$V6 == "MODERATE")
MODIF_HOM_LOW <- subset(Tabla, Tabla$V8=="1/1" & Tabla$V9 =="1/1" & Tabla$V13 =="1/1" & Tabla$V6 == "MODIFIER")
LOW_HOM_LOW <- subset(Tabla, Tabla$V8=="1/1" & Tabla$V9 =="1/1" & Tabla$V13 =="1/1" & Tabla$V6 == "LOW")

#LOW segregating

HIGH_SEG_LOW <-Tabla[ apply(sapply(Tabla[c(8,9,13)], `%in%`, c('0/1','1/0')), 1, any) & apply(sapply(Tabla[c(8,9,13)], Negate(`%in%`), c('./.')), 1, all) & Tabla$V6 == "HIGH", ]
MOD_SEG_LOW <-Tabla[ apply(sapply(Tabla[c(8,9,13)], `%in%`, c('0/1','1/0')), 1, any) & apply(sapply(Tabla[c(8,9,13)], Negate(`%in%`), c('./.')), 1, all) & Tabla$V6 == "MODERATE", ]
LOW_SEG_LOW <-Tabla[ apply(sapply(Tabla[c(8,9,13)], `%in%`, c('0/1','1/0')), 1, any) & apply(sapply(Tabla[c(8,9,13)], Negate(`%in%`), c('./.')), 1, all) & Tabla$V6 == "LOW", ]

##LOW Fixed REF
HIGH_HOMR_LOW <- subset(Tabla, Tabla$V8=="0/0" & Tabla$V9 =="0/0" & Tabla$V13 =="0/0" & Tabla$V6 == "HIGH")
MOD_HOMR_LOW <- subset(Tabla, Tabla$V8=="0/0" & Tabla$V9 =="0/0" & Tabla$V13 =="0/0" & Tabla$V6 == "MODERATE")
MODIF_HOMR_LOW <- subset(Tabla, Tabla$V8=="0/0" & Tabla$V9 =="0/0" & Tabla$V13 =="0/0" & Tabla$V6 == "MODIFIER")
LOW_HOMR_LOW <- subset(Tabla, Tabla$V8=="0/0" & Tabla$V9 =="0/0" & Tabla$V13 =="0/0" & Tabla$V6 == "LOW")


#li's genomes
HIGH_HOM_LOW_Li <- subset(Tabla, Tabla$V8=="1/1" & Tabla$V9 =="1/1" & Tabla$V6 == "HIGH")
MOD_HOM_LOW_Li <- subset(Tabla, Tabla$V8=="1/1" & Tabla$V9 =="1/1" & Tabla$V6 == "MODERATE")
MODIF_HOM_LOW_Li <- subset(Tabla, Tabla$V8=="1/1" & Tabla$V9 =="1/1" & Tabla$V6 == "MODIFIER")
LOW_HOM_LOW_Li <- subset(Tabla, Tabla$V8=="1/1" & Tabla$V9 =="1/1" & Tabla$V6 == "LOW")

#Li's segregatting
HIGH_SEG_LOW_Li <-Tabla[ apply(sapply(Tabla[c(8,9)], `%in%`, c('0/1','1/0')), 1, any) & apply(sapply(Tabla[c(8,9)], Negate(`%in%`), c('./.')), 1, all) & Tabla$V6 == "HIGH", ]
MOD_SEG_LOW_Li <-Tabla[ apply(sapply(Tabla[c(8,9)], `%in%`, c('0/1','1/0')), 1, any) & apply(sapply(Tabla[c(8,9)], Negate(`%in%`), c('./.')), 1, all) & Tabla$V6 == "MODERATE", ]
LOW_SEG_LOW_Li <-Tabla[ apply(sapply(Tabla[c(8,9)], `%in%`, c('0/1','1/0')), 1, any) & apply(sapply(Tabla[c(8,9)], Negate(`%in%`), c('./.')), 1, all) & Tabla$V6 == "LOW", ]


#Li's Fixed REF
HIGH_HOMR_LOW_Li <- subset(Tabla, Tabla$V8=="0/0" & Tabla$V9 =="0/0" & Tabla$V6 == "HIGH")
MOD_HOMR_LOW_Li <- subset(Tabla, Tabla$V8=="0/0" & Tabla$V9 =="0/0" & Tabla$V6 == "MODERATE")
MODIF_HOMR_LOW_Li <- subset(Tabla, Tabla$V8=="0/0" & Tabla$V9 =="0/0" & Tabla$V6 == "MODIFIER")
LOW_HOMR_LOW_Li <- subset(Tabla, Tabla$V8=="0/0" & Tabla$V9 =="0/0" & Tabla$V6 == "LOW")

##PAR
HIGH_HOM_PAR <- subset(Tabla, Tabla$V17=="1/1" & Tabla$V18 =="1/1" & Tabla$V19 =="1/1" & Tabla$V6 == "HIGH")
MOD_HOM_PAR <- subset(Tabla, Tabla$V17=="1/1" & Tabla$V18 =="1/1" & Tabla$V19 =="1/1" & Tabla$V6 == "MODERATE")
MODIF_HOM_PAR <- subset(Tabla, Tabla$V17=="1/1" & Tabla$V18 =="1/1" & Tabla$V19 =="1/1" & Tabla$V6 == "MODIFIER")
LOW_HOM_PAR <- subset(Tabla, Tabla$V17=="1/1" & Tabla$V18 =="1/1" & Tabla$V19 =="1/1" & Tabla$V6 == "LOW")

#PAR segregatting
HIGH_SEG_PAR <-Tabla[ apply(sapply(Tabla[17:19], `%in%`, c('0/1','1/0')), 1, any) & apply(sapply(Tabla[17:19], Negate(`%in%`), c('./.')), 1, all) & Tabla$V6 == "HIGH", ]
MOD_SEG_PAR <-Tabla[ apply(sapply(Tabla[17:19], `%in%`, c('0/1','1/0')), 1, any) & apply(sapply(Tabla[17:19], Negate(`%in%`), c('./.')), 1, all) & Tabla$V6 == "MODERATE", ]
LOW_SEG_PAR <-Tabla[ apply(sapply(Tabla[17:19], `%in%`, c('0/1','1/0')), 1, any) & apply(sapply(Tabla[17:19], Negate(`%in%`), c('./.')), 1, all) & Tabla$V6 == "LOW", ]

#PAR Fixed REF
HIGH_HOMR_PAR <- subset(Tabla, Tabla$V17=="0/0" & Tabla$V18 =="0/0" & Tabla$V19 =="0/0" & Tabla$V6 == "HIGH")
MOD_HOMR_PAR <- subset(Tabla, Tabla$V17=="0/0" & Tabla$V18 =="0/0" & Tabla$V19 =="0/0" & Tabla$V6 == "MODERATE")
MODIF_HOMR_PAR <- subset(Tabla, Tabla$V17=="0/0" & Tabla$V18 =="0/0" & Tabla$V19 =="0/0" & Tabla$V6 == "MODIFIER")
LOW_HOMR_PAR <- subset(Tabla, Tabla$V17=="0/0" & Tabla$V18 =="0/0" & Tabla$V19 =="0/0" & Tabla$V6 == "LOW")

##MEX
HIGH_HOM_MEX <- subset(Tabla, Tabla$V10=="1/1" & Tabla$V11 =="1/1" & Tabla$V6 == "HIGH")
MOD_HOM_MEX <- subset(Tabla, Tabla$V10=="1/1" & Tabla$V11 =="1/1" & Tabla$V6 == "MODERATE")
MODIF_HOM_MEX <- subset(Tabla, Tabla$V10=="1/1" & Tabla$V11 =="1/1" & Tabla$V6 == "MODIFIER")
LOW_HOM_MEX <- subset(Tabla, Tabla$V10=="1/1" & Tabla$V11 =="1/1" & Tabla$V6 == "LOW")

#MEX segregatting
HIGH_SEG_MEX <-Tabla[ apply(sapply(Tabla[10:11], `%in%`, c('0/1','1/0')), 1, any) & apply(sapply(Tabla[10:11], Negate(`%in%`), c('./.')), 1, all) & Tabla$V6 == "HIGH", ]
MOD_SEG_MEX <-Tabla[ apply(sapply(Tabla[10:11], `%in%`, c('0/1','1/0')), 1, any) & apply(sapply(Tabla[10:11], Negate(`%in%`), c('./.')), 1, all) & Tabla$V6 == "MODERATE", ]
LOW_SEG_MEX <-Tabla[ apply(sapply(Tabla[10:11], `%in%`, c('0/1','1/0')), 1, any) & apply(sapply(Tabla[10:11], Negate(`%in%`), c('./.')), 1, all) & Tabla$V6 == "LOW", ]

##MEX Fixed REF
HIGH_HOMR_MEX <- subset(Tabla, Tabla$V10=="0/0" & Tabla$V11 =="0/0" & Tabla$V6 == "HIGH")
MOD_HOMR_MEX <- subset(Tabla, Tabla$V10=="0/0" & Tabla$V11 =="0/0" & Tabla$V6 == "MODERATE")
MODIF_HOMR_MEX <- subset(Tabla, Tabla$V10=="0/0" & Tabla$V11 =="0/0" & Tabla$V6 == "MODIFIER")
LOW_HOMR_MEX <- subset(Tabla, Tabla$V10=="0/0" & Tabla$V11 =="0/0" & Tabla$V6 == "LOW")

##MEX_TIL25
HIGH_HOM_MEX25 <- subset(Tabla, Tabla$V10=="1/1" & Tabla$V6 == "HIGH")
MOD_HOM_MEX25 <- subset(Tabla, Tabla$V10=="1/1" & Tabla$V6 == "MODERATE")
MODIF_HOM_MEX25 <- subset(Tabla, Tabla$V10=="1/1" & Tabla$V6 == "MODIFIER")
LOW_HOM_MEX25 <- subset(Tabla, Tabla$V10=="1/1" & Tabla$V6 == "LOW")

###Write HIGH FIX

write.csv(HIGH_HOM_HL, file = "HIGH_HOM_HL.csv", row.names = FALSE)
write.csv(MOD_HOM_HL, file = "MOD_HOM_HL.csv", row.names = FALSE)
write.csv(MODIF_HOM_HL, file = "MODIF_HOM_HL.csv", row.names = FALSE)
write.csv(LOW_HOM_HL, file = "LOW_HOM_HL.csv", row.names = FALSE)

##HL segregatting 

write.csv(HIGH_SEG_HL, file = "HIGH_SEG_HL.csv", row.names = FALSE)
write.csv(MOD_SEG_HL, file = "MOD_SEG_HL.csv", row.names = FALSE)
write.csv(LOW_SEG_HL, file = "LOW_SEG_HL.csv", row.names = FALSE)

###Write HIGH FIX REF

write.csv(HIGH_HOMR_HL, file = "HIGH_HOMR_HL.csv", row.names = FALSE)
write.csv(MOD_HOMR_HL, file = "MOD_HOMR_HL.csv", row.names = FALSE)
write.csv(MODIF_HOMR_HL, file = "MODIF_HOMR_HL.csv", row.names = FALSE)
write.csv(LOW_HOMR_HL, file = "LOW_HOMR_HL.csv", row.names = FALSE)


###Write LOW

write.csv(HIGH_HOM_LOW, file = "HIGH_HOM_LOW.csv", row.names = FALSE)
write.csv(MOD_HOM_LOW, file = "MOD_HOM_LOW.csv", row.names = FALSE)
write.csv(MODIF_HOM_LOW, file = "MODIF_HOM_LOW.csv", row.names = FALSE)
write.csv(LOW_HOM_LOW, file = "LOW_HOM_LOW.csv", row.names = FALSE)

#write LOW segregatting
write.csv(HIGH_SEG_LOW, file = "HIGH_SEG_LOW.csv", row.names = FALSE)
write.csv(MOD_SEG_LOW, file = "MOD_SEG_LOW.csv", row.names = FALSE)
write.csv(LOW_SEG_LOW, file = "LOW_SEG_LOW.csv", row.names = FALSE)

##Write LOW FIX REF

write.csv(HIGH_HOMR_LOW, file = "HIGH_HOMR_LOW.csv", row.names = FALSE)
write.csv(MOD_HOMR_LOW, file = "MOD_HOMR_LOW.csv", row.names = FALSE)
write.csv(MODIF_HOMR_LOW, file = "MODIF_HOMR_LOW.csv", row.names = FALSE)
write.csv(LOW_HOMR_LOW, file = "LOW_HOMR_LOW.csv", row.names = FALSE)

###low solo li's genomes

write.csv(HIGH_HOM_LOW_Li, file = "HIGH_HOM_LOW_Li.csv", row.names = FALSE)
write.csv(MOD_HOM_LOW_Li, file = "MOD_HOM_LOW_Li.csv", row.names = FALSE)
write.csv(MODIF_HOM_LOW_Li, file = "MODIF_HOM_LOW_Li.csv", row.names = FALSE)
write.csv(LOW_HOM_LOW_Li, file = "LOW_HOM_LOW_Li.csv", row.names = FALSE)

#Write SEG LOW Li
write.csv(HIGH_SEG_LOW_Li, file = "HIGH_SEG_LOW_Li.csv", row.names = FALSE)
write.csv(MOD_SEG_LOW_Li, file = "MOD_SEG_LOW_Li.csv", row.names = FALSE)
write.csv(LOW_SEG_LOW_Li, file = "LOW_SEG_LOW_Li.csv", row.names = FALSE)

###low solo li's genomes FIX REF

write.csv(HIGH_HOMR_LOW_Li, file = "HIGH_HOMR_LOW_Li.csv", row.names = FALSE)
write.csv(MOD_HOMR_LOW_Li, file = "MOD_HOMR_LOW_Li.csv", row.names = FALSE)
write.csv(MODIF_HOMR_LOW_Li, file = "MODIF_HOMR_LOW_Li.csv", row.names = FALSE)
write.csv(LOW_HOMR_LOW_Li, file = "LOW_HOMR_LOW_Li.csv", row.names = FALSE)

###Write PAR

write.csv(HIGH_HOM_PAR, file = "HIGH_HOM_PAR.csv", row.names = FALSE)
write.csv(MOD_HOM_PAR, file = "MOD_HOM_PAR.csv", row.names = FALSE)
write.csv(MODIF_HOM_PAR, file = "MODIF_HOM_PAR.csv", row.names = FALSE)
write.csv(LOW_HOM_PAR, file = "LOW_HOM_PAR.csv", row.names = FALSE)

#write SEG PAR
write.csv(HIGH_SEG_PAR, file = "HIGH_SEG_PAR.csv", row.names = FALSE)
write.csv(MOD_SEG_PAR, file = "MOD_SEG_PAR.csv", row.names = FALSE)
write.csv(LOW_SEG_PAR, file = "LOW_SEG_PAR.csv", row.names = FALSE)


###Write PAR FIX REF

write.csv(HIGH_HOMR_PAR, file = "HIGH_HOMR_PAR.csv", row.names = FALSE)
write.csv(MOD_HOMR_PAR, file = "MOD_HOMR_PAR.csv", row.names = FALSE)
write.csv(MODIF_HOMR_PAR, file = "MODIF_HOMR_PAR.csv", row.names = FALSE)
write.csv(LOW_HOMR_PAR, file = "LOW_HOMR_PAR.csv", row.names = FALSE)

###Write MEX

write.csv(HIGH_HOM_MEX, file = "HIGH_HOM_MEX.csv", row.names = FALSE)
write.csv(MOD_HOM_MEX, file = "MOD_HOM_MEX.csv", row.names = FALSE)
write.csv(MODIF_HOM_MEX, file = "MODIF_HOM_MEX.csv", row.names = FALSE)
write.csv(LOW_HOM_MEX, file = "LOW_HOM_MEX.csv", row.names = FALSE)

#Write seg MEX

write.csv(HIGH_SEG_MEX, file = "HIGH_SEG_MEX.csv", row.names = FALSE)
write.csv(MOD_SEG_MEX, file = "MOD_SEG_MEX.csv", row.names = FALSE)
write.csv(LOW_SEG_MEX, file = "LOW_SEG_MEX.csv", row.names = FALSE)

###Write MEX

write.csv(HIGH_HOMR_MEX, file = "HIGH_HOMR_MEX.csv", row.names = FALSE)
write.csv(MOD_HOMR_MEX, file = "MOD_HOMR_MEX.csv", row.names = FALSE)
write.csv(MODIF_HOMR_MEX, file = "MODIF_HOMR_MEX.csv", row.names = FALSE)
write.csv(LOW_HOMR_MEX, file = "LOW_HOMR_MEX.csv", row.names = FALSE)


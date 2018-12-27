install.packages("tibble")
library(tibble)
setwd("/home/eric/Documentos/Maiz/PTxRev_F2/PTxRev/PTxRev_DaRT/Datos_originales")
list.files()

BLast <- read.table("BLAST_Eric&Ruairidhcsv.csv", sep = ",", header = TRUE)
nrow(BLast)/2

BLast_subset <- subset(BLast, BLast$AlnEvalue_Maize_v329 < 0.01)
nrow(BLast_subset)


write.table(BLast_subset, file = "Blast_subset_evalmenor0.01.txt", sep = "\t", quote = FALSE, row.names = FALSE)

#quite los rows sin par con  awk -F'|' 'NR==FNR{s[$1]++;next} (s[$1]>1)' Blast_subset_evalmenor0.01.txt Blast_subset_evalmenor0.01.txt > Solo_pares.txt

Solo_pares <- read.table("Solo_pares.txt", header = FALSE, sep = "\t")
nrow(Solo_pares)/2

Solo_pares_1match <- subset(Solo_pares, Solo_pares$V5 == 1) 
nrow(Solo_pares_1match)/2

Solo_pares_1match_SNP <- add_column(Solo_pares_1match, SNP_pos_bien= Solo_pares_1match$V4 + Solo_pares_1match$V9 +1, .after = 9) 

write.table(Solo_pares_1match_SNP, file ="Solo_pares_1match_SNP.txt", sep = "\t", quote = FALSE, row.names = FALSE)

##Filtre posiciones únicas así  awk -F'\t' 'NR==FNR{s[$10]++;next} (s[$10]==2)' Solo_pares_1match_SNP_solo_paresagain.txt Solo_pares_1match_SNP_solo_paresagain.txt  > Solo_pares_1match_solo_posiciones_unicas.txt

Solo_pares_1match_solo_posiciones_unicas <- read.table("Solo_pares_1match_solo_posiciones_unicas.txt", header = FALSE, sep = "\t")
nrow(Solo_pares_1match_solo_posiciones_unicas)/2
Para_mergir <- Solo_pares_1match_solo_posiciones_unicas[seq(1, nrow(Solo_pares_1match_solo_posiciones_unicas), 2), ]
Para_mergir_col1y10 <- Para_mergir[,c(1,3,10)]

nrow(Para_mergir)
nrow(Para_mergir_col1y10)
write.table(Solo_primera_linea, file ="nombres_mapeadas_correctamente.txt", sep = "\t", quote = FALSE, row.names = FALSE)

##hap map

Hap <- read.csv("SNPs_HAPMAP Format_Eric&Ruairidh.csv")
nrow(Hap)
BLast_hap <- read.table("BLAST_HAPMAP_Eric.Report.csv", sep = ",", header = TRUE)

#mergir
Hap$AlleleID.1
Mergidas <- merge(Para_mergir_col1y10, Hap, by.x = c("V1"), by.y = c("AlleleID.1"))
write.table(Mergidas, file ="Hap_SNPs_unicos_posiciones.txt", sep = "\t", quote = FALSE, row.names = FALSE)
nrow(Mergidas)

#pasar a formato hapmap
ncol(Mergidas)
Hap_mergidas_raw <- Mergidas[ ,c(1,3,18:ncol(Mergidas))]

alleles <- read.table("alleles.txt", header = FALSE)
chrom <- read.table("chr.txt", header = FALSE)
strand <- read.table("strand.txt", header = FALSE)
assembly <- read.table("assembly.txt", header = FALSE)
center <- read.table("center.txt", header = FALSE)
protLSID <- read.table("protLSID.txt", header = FALSE)
assayLSID <- read.table("assayLSID.txt", header = FALSE)
panelLSID <- read.table("panelLSID.txt", header = FALSE)
QCcode <- read.table("QCcode.txt", header = FALSE)
rs <- read.table("rs.txt", header = FALSE)

Solo_pares_1match_SNP <- add_column(Solo_pares_1match, SNP_pos_bien= Solo_pares_1match$V4 + Solo_pares_1match$V9 +1, .after = 9) 

Hap_mergidas_raw <- add_column(Hap_mergidas_raw, alleles= alleles$V1, .after = 1)
Hap_mergidas_raw <- add_column(Hap_mergidas_raw, chrom= chrom$V1, .after = 2)
Hap_mergidas_raw <- add_column(Hap_mergidas_raw, strand= strand$V1, .after = 4)
Hap_mergidas_raw <- add_column(Hap_mergidas_raw, assembly= assembly$V1, .after = 5)
Hap_mergidas_raw <- add_column(Hap_mergidas_raw, center= center$V1, .after = 6)
Hap_mergidas_raw <- add_column(Hap_mergidas_raw, protLSID= protLSID$V1, .after = 7)
Hap_mergidas_raw <- add_column(Hap_mergidas_raw, assayLSID= assayLSID$V1, .after = 8)
Hap_mergidas_raw <- add_column(Hap_mergidas_raw, panelLSID= panelLSID$V1, .after = 9)
Hap_mergidas_raw <- add_column(Hap_mergidas_raw, QCcode= QCcode$V1, .after = 10)
Hap_mergidas_raw <- add_column(Hap_mergidas_raw, rs= rs$V1, .after = 1)

                               
write.table(Hap_mergidas_raw, file ="Hap_mergidas_raw_casifinal.txt", sep = "\t", quote = FALSE, row.names = FALSE)

Hap_mergidas <- Hap_mergidas_raw[ ,2:ncol(Hap_mergidas_raw)]
colnames(Hap_mergidas)[4] <- "pos"

Hap_mergidas <- Hap_mergidas[-1202,]

write.table(Hap_mergidas, file ="Hap_mergidas.txt", sep = "\t", quote = FALSE, row.names = FALSE)
 str(Hap_mergidas)

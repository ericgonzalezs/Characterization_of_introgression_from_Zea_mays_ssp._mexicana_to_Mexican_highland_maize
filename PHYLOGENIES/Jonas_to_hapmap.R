##CONVERT to hapmap jonas file
Jonas <- read.csv("/home/eric/Documentos/Maiz/Introgression/FILOGENIAS/SNPdata_Aguirre_Liguori_etal.txt")

#SNPchip file  sed -e '1,8d' MaizeSNP50_A1.csv | awk -F"," -v OFS="," '{print $2, $10 , $11}' > para_filtrar_con_regiones_del_chip.txt
#and I reomved the last row with vi
SNP_chip <- read.csv("/home/eric/Documentos/Maiz/Introgression/FILOGENIAS/para_filtrar_con_regiones_del_chip.txt", header = FALSE)
colnames(SNP_chip) <- c("loci","chr","pos")

#merge

Jonas_pos <- merge(SNP_chip, Jonas, by ="loci")
str(Jonas_pos)
Jonas_pos[] <- lapply(Jonas_pos, as.character)
Jonas_pos[is.na(Jonas_pos)] <- "NN"

library(tibble)
Jonas_pos <- add_column(Jonas_pos, alleles = "NA", .after = 1)
Jonas_pos <- add_column(Jonas_pos, strand = "NA", .after = 4)
Jonas_pos <- add_column(Jonas_pos, "assembly#" = "AGPv3", .after = 5)
Jonas_pos <- add_column(Jonas_pos, center = "NA", .after = 6)
Jonas_pos <- add_column(Jonas_pos, protLSID = "NA", .after = 7)                        
Jonas_pos <- add_column(Jonas_pos, assayLSID = "NA", .after = 8)
Jonas_pos <- add_column(Jonas_pos, panelLSID = "NA", .after = 9)
Jonas_pos <- add_column(Jonas_pos, QCcode = "NA", .after = 10)

library(data.table)
setnames(Jonas_pos, old=c("loci","chr"), new=c("rs#", "chrom"))         

write.table(Jonas_pos, file = "/home/eric/Documentos/Maiz/Introgression/FILOGENIAS/Jonas.hmp.txt", quote = FALSE, sep = "\t",
            row.names = FALSE)

######################################
#ahora haré el hapmap para pyjajarvi
#####################################
#primero con el archivo de mexicana
Tanja_mex <- read.table("/home/eric/Documentos/Maiz/Introgression/FILOGENIAS/Pyhajarvi_et_al_SNPdata(2)/Mexicana_TopStrand_FinalReport.txt", sep = "\t", header = TRUE)
colnames(Tanja_mex)[1] <- "loci"

#merge

Tanja_mex_pos <- merge(SNP_chip, Tanja_mex, by ="loci")

str(Tanja_mex_pos)
Tanja_mex_pos[] <- lapply(Tanja_mex_pos, as.character)

Tanja_mex_pos <- data.frame(lapply(Tanja_mex_pos, function(x) {
                    gsub("--", "NN", x)
                }))

library(tibble)
Tanja_mex_pos <- add_column(Tanja_mex_pos, alleles = "NA", .after = 1)
Tanja_mex_pos <- add_column(Tanja_mex_pos, strand = "NA", .after = 4)
Tanja_mex_pos <- add_column(Tanja_mex_pos, "assembly#" = "AGPv3", .after = 5)
Tanja_mex_pos <- add_column(Tanja_mex_pos, center = "NA", .after = 6)
Tanja_mex_pos <- add_column(Tanja_mex_pos, protLSID = "NA", .after = 7)                        
Tanja_mex_pos <- add_column(Tanja_mex_pos, assayLSID = "NA", .after = 8)
Tanja_mex_pos <- add_column(Tanja_mex_pos, panelLSID = "NA", .after = 9)
Tanja_mex_pos <- add_column(Tanja_mex_pos, QCcode = "NA", .after = 10)

library(data.table)
setnames(Tanja_mex_pos, old=c("loci","chr"), new=c("rs#", "chrom"))         

write.table(Tanja_mex_pos, file = "/home/eric/Documentos/Maiz/Introgression/FILOGENIAS//Pyhajarvi_et_al_SNPdata(2)/Tanja_mex.hmp.txt", quote = FALSE, sep = "\t",
            row.names = FALSE)

#head -n 1 Tanja_mex.hmp.txt > header_mex.txt
#sed '1d' Tanja_mex.hmp.txt | awk '{print "S"$3"_"$4}' > loci_mex.txt

loci_new <- read.table("/home/eric/Documentos/Maiz/Introgression/FILOGENIAS/Pyhajarvi_et_al_SNPdata(2)/loci_mex.txt", header = FALSE)

Tanja_mex_pos_new_loci <- cbind.data.frame(loci_new, Tanja_mex_pos)

Tanja_mex_final <- Tanja_mex_pos_new_loci[,c(1,3:ncol(Tanja_mex_pos_new_loci))]
colnames(Tanja_mex_final)[1] <- "rs#"

#reescribiré el archivo anterior
write.table(Tanja_mex_final, file = "/home/eric/Documentos/Maiz/Introgression/FILOGENIAS//Pyhajarvi_et_al_SNPdata(2)/Tanja_mex.hmp.txt", quote = FALSE, sep = "\t",
            row.names = FALSE)

######################################
#ahora tanja parviglumis
#####################################

Tanja_par <- read.table("/home/eric/Documentos/Maiz/Introgression/FILOGENIAS/Pyhajarvi_et_al_SNPdata(2)/Parviglumis_TopStrand_FinalReport.txt", sep = "\t", header = TRUE)
colnames(Tanja_par)[1] <- "loci"

#merge

Tanja_par_pos <- merge(SNP_chip, Tanja_par, by ="loci")

str(Tanja_par_pos)
Tanja_par_pos[] <- lapply(Tanja_par_pos, as.character)

Tanja_par_pos <- data.frame(lapply(Tanja_par_pos, function(x) {
  gsub("--", "NN", x)
}))

library(tibble)
Tanja_par_pos <- add_column(Tanja_par_pos, alleles = "NA", .after = 1)
Tanja_par_pos <- add_column(Tanja_par_pos, strand = "NA", .after = 4)
Tanja_par_pos <- add_column(Tanja_par_pos, "assembly#" = "AGPv3", .after = 5)
Tanja_par_pos <- add_column(Tanja_par_pos, center = "NA", .after = 6)
Tanja_par_pos <- add_column(Tanja_par_pos, protLSID = "NA", .after = 7)                        
Tanja_par_pos <- add_column(Tanja_par_pos, assayLSID = "NA", .after = 8)
Tanja_par_pos <- add_column(Tanja_par_pos, panelLSID = "NA", .after = 9)
Tanja_par_pos <- add_column(Tanja_par_pos, QCcode = "NA", .after = 10)

library(data.table)
setnames(Tanja_par_pos, old=c("loci","chr"), new=c("rs#", "chrom"))         

write.table(Tanja_par_pos, file = "/home/eric/Documentos/Maiz/Introgression/FILOGENIAS//Pyhajarvi_et_al_SNPdata(2)/Tanja_par.hmp.txt", quote = FALSE, sep = "\t",
            row.names = FALSE)

#head -n 1 Tanja_par.hmp.txt > header_par.txt
#sed '1d' Tanja_par.hmp.txt | awk '{print "S"$3"_"$4}' > loci_par.txt

loci_new <- read.table("/home/eric/Documentos/Maiz/Introgression/FILOGENIAS/Pyhajarvi_et_al_SNPdata(2)/loci_par.txt", header = FALSE)

Tanja_par_pos_new_loci <- cbind.data.frame(loci_new, Tanja_par_pos)

Tanja_par_final <- Tanja_par_pos_new_loci[,c(1,3:ncol(Tanja_par_pos_new_loci))]
colnames(Tanja_par_final)[1] <- "rs#"

#reescribiré el archivo anterior
write.table(Tanja_par_final, file = "/home/eric/Documentos/Maiz/Introgression/FILOGENIAS//Pyhajarvi_et_al_SNPdata(2)/Tanja_par.hmp.txt", quote = FALSE, sep = "\t",
            row.names = FALSE)


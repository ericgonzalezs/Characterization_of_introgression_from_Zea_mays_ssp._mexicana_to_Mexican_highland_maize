#Fst stuff
Takuno_Fst <- read.table("/home/eric/Documentos/Maiz/Introgression/Datos_de_otros_proyectos_para_comparar/Takuno_hilo_meso_south/Chr1_10_original.out", sep = "\t", header = TRUE)
Gene_table <- read.csv("/home/eric/Documentos/Maiz/Introgression/SnpEff/Gene_list_top1_10_RR_HOM_REF_HOM_ALT_TOT_SEG.csv")

#subset para quitar valores de -9 y pvalue < a 0.01
Takuno_Fst_subs1 <- subset(Takuno_Fst, Takuno_Fst$MesoAFst > -9)
Takuno_Fst_subs2 <- subset(Takuno_Fst_subs1, Takuno_Fst_subs1$MesoAFstPv <= 0.01)

#añadir media

f_add_Fst <- function(vec) {
  gene_Fst <- dplyr::filter(Takuno_Fst_subs2, Annotation==vec[3])
  return(paste(median(gene_Fst$MesoAFst),collapse="|"))
}

prueba <- cbind.data.frame(Gene_table, FstMedian=apply(Gene_table, 1, f_add_Fst))

write.csv(prueba, file = "/home/eric/Documentos/Maiz/Introgression/Gene_models/Gene_list_top1_10_RR_HOM_REF_HOM_ALT_TOT_SEG_Tak_Fst.csv", row.names = FALSE)

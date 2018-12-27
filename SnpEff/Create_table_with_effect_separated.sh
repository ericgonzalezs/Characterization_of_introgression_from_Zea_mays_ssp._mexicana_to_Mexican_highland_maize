#PBS -l nodes=1:ppn=1,vmem=90gb,walltime=250:00:00
#PBS -q default
#PBS -V

cd $PBS_O_WORKDIR

NP=$(wc -l < $PBS_NODEFILE)

module load R/3.4.0

#PRINCIPAL GENE
grep -v "#" Allchr_Para_SNP_eff.ann.vcf | awk -F "\t" '{print $8}' | awk -F";" '{for (i=1;i<=NF;i++){if($i~/^ANN=/){a=$i}} print a}' | cut -d"|" -f 1-14 > ANN_principal_gene.txt

#GENE NAME
awk -F"|" '{print $5}' ANN_principal_gene.txt > Gene_name.txt

#RESTO
grep -v "#" Allchr_Para_SNP_eff.ann.vcf |awk -F "\t" '{print $8}' | awk -F";" '{for (i=1;i<=NF;i++){if($i~/^ANN=/){a=$i}} print a}' | cut -d"|" -f 15- > Resto_de_datos_ANN.txt

#IMPACT
grep -v "#" Allchr_Para_SNP_eff.ann.vcf |awk -F "\t" '{print $8}' | awk -F";" '{for (i=1;i<=NF;i++){if($i~/^ANN=/){a=$i}} print a}' | awk -F "|" '{print $3}' > IMPACT.txt

#ANOT
grep -v "#" Allchr_Para_SNP_eff.ann.vcf |awk -F "\t" '{print $8}' | awk -F";" '{for (i=1;i<=NF;i++){if($i~/^ANN=/){a=$i}} print a}' | awk -F "|" '{print $2}' > ANOTACION.txt

#GENO
grep -v "#" Allchr_Para_SNP_eff.ann.vcf |awk -F "\t" '{print $10}' | awk -F ":" '{print $1}' > RIMMA0703_Geno.txt

grep -v "#" Allchr_Para_SNP_eff.ann.vcf |awk -F "\t" '{print $11}' | awk -F ":" '{print $1}' > RIMMA0733_Geno.txt

grep -v "#" Allchr_Para_SNP_eff.ann.vcf |awk -F "\t" '{print $12}' | awk -F ":" '{print $1}' > TIL25_GENO.txt


grep -v "#" Allchr_Para_SNP_eff.ann.vcf |awk -F "\t" '{print $13}' | awk -F ":" '{print $1}' > TIL08_GENO.txt

grep -v "#" Allchr_Para_SNP_eff.ann.vcf |awk -F "\t" '{print $14}' | awk -F ":" '{print $1}' > TDD39103_GENO.txt

grep -v "#" Allchr_Para_SNP_eff.ann.vcf |awk -F "\t" '{print $15}' | awk -F ":" '{print $1}' > BKN22_GENO.txt

grep -v "#" Allchr_Para_SNP_eff.ann.vcf |awk -F "\t" '{print $16}' | awk -F ":" '{print $1}' > PT1032_6_GENO.txt

grep -v "#" Allchr_Para_SNP_eff.ann.vcf |awk -F "\t" '{print $17}' | awk -F ":" '{print $1}' > PT1032_9_GENO.txt

grep -v "#" Allchr_Para_SNP_eff.ann.vcf |awk -F "\t" '{print $18}' | awk -F ":" '{print $1}' > MUS_1261_GENO.txt

grep -v "#" Allchr_Para_SNP_eff.ann.vcf |awk -F "\t" '{print $19}' | awk -F ":" '{print $1}' > TIL10_GENO.txt

grep -v "#" Allchr_Para_SNP_eff.ann.vcf |awk -F "\t" '{print $20}' | awk -F ":" '{print $1}' > TIL05_GENO.txt

grep -v "#" Allchr_Para_SNP_eff.ann.vcf |awk -F "\t" '{print $21}' | awk -F ":" '{print $1}' > TIL01_GENO.txt

#CHR
grep -v "#" Allchr_Para_SNP_eff.ann.vcf |awk -F "\t" '{print $1}' > CHR.txt

#POS
grep -v "#" Allchr_Para_SNP_eff.ann.vcf |awk -F "\t" '{print $2}' > POS.txt

#REF

grep -v "#" Allchr_Para_SNP_eff.ann.vcf |awk -F "\t" '{print $4}' > REF.txt


#ALT
grep -v "#" Allchr_Para_SNP_eff.ann.vcf |awk -F "\t" '{print $5}' > ALT.txt

#TABLA

paste Gene_name.txt CHR.txt POS.txt REF.txt ALT.txt IMPACT.txt ANOTACION.txt RIMMA0703_Geno.txt RIMMA0733_Geno.txt TIL25_GENO.txt TIL08_GENO.txt TDD39103_GENO.txt BKN22_GENO.txt PT1032_6_GENO.txt PT1032_9_
GENO.txt MUS_1261_GENO.txt TIL10_GENO.txt TIL05_GENO.txt TIL01_GENO.txt ANN_principal_gene.txt Resto_de_datos_ANN.txt > LA_Tabla_PTs_LOWLi_par.txt

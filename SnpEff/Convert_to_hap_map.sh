zcat PTNGXTotal_Fosforo_Li_low_mex_par_trip_ch_new_qLi.geno.gz | awk -F"\t" -v OFS="" '{print $3, $4, $5, $6, $7, $8, $9, $10, $11, $12, $13, $14}' | sed ':;s/\(.\)\(.*\)\1/\1\2/;t' | sed 's/N//g' > allel
es.txt

sed 's/./&\//' alleles.txt | sed s'/\/$//' > alleles_ch.txt

sed '1d' PTNGXTotal_Fosforo_Li_low_mex_par_trip_ch_new_qLi.geno_WH.txt > PTNGXTotal_Fosforo_Li_low_mex_par_trip_ch_new_qLi.geno_SH.txt

awk -F"\t" -v OFS="\t" '{print "S"$1"_"$2, $1, $2, "+", "NA", "NA", "NA", "NA", "NA", "NA", $3, $4, $5, $6, $7, $8, $9, $10, $11, $12, $13, $14}' PTNGXTotal_Fosforo_Li_low_mex_par_trip_ch_new_qLi.geno_SH.txt > PTNGXTotal_Fosforo_Li_low_mex_par_trip_ch_new_qLi.geno_SH_faltaalleles.txt

#the next command line was to slow
#awk -v OFS="\t" 'FNR==NR{a[FNR]=$0;next} {$1=$1 OFS a[FNR]} 1' alleles_ch.txt PTNGXTotal_Fosforo_Li_low_mex_par_trip_ch_new_qLi.geno_SH_faltaalleles.txt > Para_tassel_SH.hap.txt

paste alleles_ch.txt PTNGXTotal_Fosforo_Li_low_mex_par_trip_ch_new_qLi.geno_SH_faltaalleles.txt > Para_tassel_without_order.txt

awk -F"\t" -v OFS="\t" '{print $2, $1, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $20, $21, $22, $23}' Para_tassel_without_order.txt > Para_tassel_SH.hap.txt

cat header_primero.txt Para_tassel_SH.hap.txt > Para_tassel_WH.hap.txt

rm Para_tassel_SH.hap.txt

rm alleles.txt

rm PTNGXTotal_Fosforo_Li_low_mex_par_trip_ch_new_qLi.geno_SH_faltaalleles.txt

rm PTNGXTotal_Fosforo_Li_low_mex_par_trip_ch_new_qLi.geno_SH.txt

rm Para_tassel_without_order.txt

#To upload the vcf file to TASSEL, the file was separated by chromosome
sed '1d' Para_tassel_WH.hap.txt > Para_tassel_SH.hap.txt

awk -F"\t" -v OFS="\t" '$3 == 1 {print $0}' Para_tassel_SH.hap.txt  > Chr1_Para_tassel_SH.hap.txt
awk -F"\t" -v OFS="\t" '$3 == 2 {print $0}' Para_tassel_SH.hap.txt  > Chr2_Para_tassel_SH.hap.txt
awk -F"\t" -v OFS="\t" '$3 == 3 {print $0}' Para_tassel_SH.hap.txt  > Chr3_Para_tassel_SH.hap.txt
awk -F"\t" -v OFS="\t" '$3 == 4 {print $0}' Para_tassel_SH.hap.txt  > Chr4_Para_tassel_SH.hap.txt
awk -F"\t" -v OFS="\t" '$3 == 5 {print $0}' Para_tassel_SH.hap.txt  > Chr5_Para_tassel_SH.hap.txt
awk -F"\t" -v OFS="\t" '$3 == 6 {print $0}' Para_tassel_SH.hap.txt  > Chr6_Para_tassel_SH.hap.txt
awk -F"\t" -v OFS="\t" '$3 == 7 {print $0}' Para_tassel_SH.hap.txt  > Chr7_Para_tassel_SH.hap.txt
awk -F"\t" -v OFS="\t" '$3 == 8 {print $0}' Para_tassel_SH.hap.txt  > Chr8_Para_tassel_SH.hap.txt
awk -F"\t" -v OFS="\t" '$3 == 9 {print $0}' Para_tassel_SH.hap.txt  > Chr9_Para_tassel_SH.hap.txt
awk -F"\t" -v OFS="\t" '$3 == 10 {print $0}' Para_tassel_SH.hap.txt  > Chr10_Para_tassel_SH.hap.txt

cat header_primero.txt Chr1_Para_tassel_SH.hap.txt > Chr1_Para_tassel_WH.hap.txt
cat header_primero.txt Chr2_Para_tassel_SH.hap.txt > Chr2_Para_tassel_WH.hap.txt
cat header_primero.txt Chr3_Para_tassel_SH.hap.txt > Chr3_Para_tassel_WH.hap.txt
cat header_primero.txt Chr4_Para_tassel_SH.hap.txt > Chr4_Para_tassel_WH.hap.txt
cat header_primero.txt Chr5_Para_tassel_SH.hap.txt > Chr5_Para_tassel_WH.hap.txt
cat header_primero.txt Chr6_Para_tassel_SH.hap.txt > Chr6_Para_tassel_WH.hap.txt
cat header_primero.txt Chr7_Para_tassel_SH.hap.txt > Chr7_Para_tassel_WH.hap.txt
cat header_primero.txt Chr8_Para_tassel_SH.hap.txt > Chr8_Para_tassel_WH.hap.txt
cat header_primero.txt Chr9_Para_tassel_SH.hap.txt > Chr9_Para_tassel_WH.hap.txt
cat header_primero.txt Chr10_Para_tassel_SH.hap.txt > Chr10_Para_tassel_WH.hap.txt

#each chromosome was converted to a vcf file using the graphic interphase of TASSEL and then was merged:

grep "#" Chr1_todos.vcf > header_vcf.txt
grep -v "#" Chr1_todos.vcf > Chr1_todos_SH.vcf
grep -v "#" Chr2_todos.vcf > Chr2_todos_SH.vcf
grep -v "#" Chr3_todos.vcf > Chr3_todos_SH.vcf
grep -v "#" Chr4_todos.vcf > Chr4_todos_SH.vcf
grep -v "#" Chr5_todos.vcf > Chr5_todos_SH.vcf
grep -v "#" Chr6_todos.vcf > Chr6_todos_SH.vcf
grep -v "#" Chr7_todos.vcf > Chr7_todos_SH.vcf
grep -v "#" Chr8_todos.vcf > Chr8_todos_SH.vcf
grep -v "#" Chr9_todos.vcf > Chr9_todos_SH.vcf
grep -v "#" Chr10_todos.vcf > Chr10_todos_SH.vcf

cat header_vcf.txt Chr1_todos_SH.vcf Chr2_todos_SH.vcf Chr3_todos_SH.vcf Chr4_todos_SH.vcf Chr5_todos_SH.vcf Chr6_todos_SH.vcf Chr7_todos_SH.vcf Chr8_todos_SH.vcf Chr9_todos_SH.vcf Chr10_todos_SH.vcf > Allchr_Para_SNP_eff.vcf

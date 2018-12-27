#maize chip sites
sed -e '1,8d' MaizeSNP50_A1.csv | awk -F"," -v OFS="\t" '{print $10 , $11}' > para_filtrar_con_regiones_del_chip.txt
#then I removed by hand, using vi, the last n empty rows

#filtering sites of 1261_PTs_Low_mex_par_MQ30_BQ20_SNPs_filtered_GQ20_DP4_PASS_WH.vcf with 50kSNPchipmaize sites
#inside the file Filtrar_por_sitios.sh
#here 

#PBS -N SNP_filtrado
#PBS -l nodes=1:ppn=8,vmem=64gb,walltime=250:00:00
#PBS -q default
#PBS -V

cd $PBS_O_WORKDIR

NP=$(wc -l < $PBS_NODEFILE)

module load bcftools/1.3.1
module load tabix/0.2.6
module load bcftools/1.3.1

bgzip -c 1261_PTs_Low_mex_par_MQ30_BQ20_SNPs_filtered_GQ20_DP4_PASS_WH.vcf > 1261_PTs_Low_mex_par_MQ30_BQ20_SNPs_filtered_GQ20_DP4_PASS_WH.vcf.gz

tabix -p 1261_PTs_Low_mex_par_MQ30_BQ20_SNPs_filtered_GQ20_DP4_PASS_WH.vcf.gz


bcftools filter -R para_filtrar_con_regiones_del_chip.txt --threads 8  -Oz 1261_PTs_Low_mex_par_MQ30_BQ20_SNPs_filtered_GQ20_DP4_PASS_WH.vcf.gz > 1261_PTs_Low_mex_par_MQ30_BQ20_SNPs_filtered_GQ20_DP4_PASS_WH_sitios50kSNPchip.vcf.gz

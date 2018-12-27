#PBS -N SNP_filtrado_y_unión_con_hapmap_y_creacion_de_archivo_de_entrada_para_fd
#PBS -l nodes=1:ppn=1,vmem=20gb,walltime=250:00:00
#PBS -q default
#PBS -V

cd $PBS_O_WORKDIR

NP=$(wc -l < $PBS_NODEFILE)

module load GATK/3.5.0
module load bcftools/1.3.1
module load tabix/0.2.6

#select SNPs
java -jar $GATK -T SelectVariants -R /LUSTRE/usuario/egonzalez/referencias/Zea_mays.AGPv3.22.dna.genome.fasta -V soloPTs_MQ30_BQ20.vcf -selectType SNP -o soloPTs_MQ30_BQ20_solo_SNPs_raw.vcf

#Filtering

java -jar $GATK -T VariantFiltration -R /LUSTRE/usuario/egonzalez/referencias/Zea_mays.AGPv3.22.dna.genome.fasta -V soloPTs_MQ30_BQ20_solo_SNPs_raw.vcf --filterExpression "QD < 2.0 || FS > 60.0 || MQ < 40.0 || MQRankSum < -12.5 || ReadPosRankSum < -8.0" --filterName "my_snp_filter" -o soloPTs_MQ30_BQ20_solo_SNPs_filtered.vcf

#tabla
#1
grep "#" soloPTs_MQ30_BQ20_solo_SNPs_filtered.vcf > encabezado.txt

grep -v "#" soloPTs_MQ30_BQ20_solo_SNPs_filtered.vcf | grep "PASS" > soloPTs_MQ30_BQ20_solo_SNPs_filtered_PASS_SH.vcf

cat encabezado.txt soloPTs_MQ30_BQ20_solo_SNPs_filtered_PASS_SH.vcf > soloPTs_MQ30_BQ20_solo_SNPs_filtered_PASS_WH.vcf

rm encabezado.txt
rm PT_NyV_BKN22y33_TIL05_25_01_05_10_trip_sinParv_solo_SNPs_filtered_PASS_SH.vcf

bgzip -c soloPTs_MQ30_BQ20_solo_SNPs_filtered_PASS_WH.vcf > soloPTs_MQ30_BQ20_solo_SNPs_filtered_PASS_WH.vcf.gz

tabix -p vcf soloPTs_MQ30_BQ20_solo_SNPs_filtered_PASS_WH.vcf.gz

bcftools filter -e 'FORMAT/GQ<20 | FORMAT/DP<10' --set-GTs . /LUSTRE/usuario/egonzalez/secuenciasPT/NGX_bio/SNP_CALLING/JOINTCALLING/SINPARVIGLUMIS/soloPTs_MQ30_BQ20_solo_SNPs_filtered_PASS_WH.vcf.gz | bgzip -c >  soloPTs_MQ30_BQ20_0_solo_SNPs_filtered_PASS_WH_GQ20_DP10_WH.vcf.gz

zcat /LUSTRE/usuario/egonzalez/secuenciasPT/NGX_bio/SNP_CALLING/JOINTCALLING/SINPARVIGLUMIS/soloPTs_MQ30_BQ20_solo_SNPs_filtered_PASS_WH.geno.gz | sed "1d" | awk -F "\t" -v OFS="\t" '{print $1, $2}' > para_filtrar_MP30_BQ20.txt

bcftools filter -R para_filtrar_MP30_BQ20.txt --threads 8 -Oz  /LUSTRE/usuario/egonzalez/PTxB73BC1S5/haplotypo_de_PT/vcf_hapmap3/filtrados/porsitodofalla/hapmap3_SNPs_concat_LLD_final.vcf.gz > hapmap3_SNPs_concat_filtrado_LLD_final_sitiosPT_MQ30_BQ20.vcf.gz

tabix -p vcf hapmap3_SNPs_concat_filtrado_LLD_final_sitiosPT_MQ30_BQ20.vcf.gz
tabix -p vcf soloPTs_MQ30_BQ20_0_solo_SNPs_filtered_PASS_WH_GQ20_DP10_WH.vcf.gz

zcat hapmap3_SNPs_concat_filtrado_LLD_final_sitiosPT_MQ30_BQ20.vcf.gz | grep -v "#" | awk -F "\t" -v OFS="\t" '{print $1, $2}' > para_filtrar_MQ30_BQ20_2.txt

bcftools filter -R para_filtrar_MQ30_BQ20_2.txt --threads 8  -Oz soloPTs_MQ30_BQ20_0_solo_SNPs_filtered_PASS_WH_GQ20_DP10_WH.vcf.gz > soloPTs_MQ30_BQ20_0_solo_SNPs_filtered_PASS_WH_GQ20_DP10_WH_sitiosHapmap3.vcf.gz

tabix -p vcf soloPTs_MQ30_BQ20_0_solo_SNPs_filtered_PASS_WH_GQ20_DP10_WH_sitiosHapmap3.vcf.gz

bcftools merge -Oz soloPTs_MQ30_BQ20_0_solo_SNPs_filtered_PASS_WH_GQ20_DP10_WH_sitiosHapmap3.vcf.gz hapmap3_SNPs_concat_filtrado_LLD_final_sitiosPT_MQ30_BQ20.vcf.gz > PTs_NGXBIO_HAPMAP_MQ30_BQ20.vcf.gz

tabix -p vcf PTs_NGXBIO_HAPMAP_MQ30_BQ20.vcf.gz

bcftools view -h PTs_NGXBIO_HAPMAP_MQ30_BQ20.vcf.gz | tail -1 | cut -f 1,2,10- > header.txt

bcftools query -f '%CHROM\t%POS[\t%TGT]\n' -e 'N_ALT!=1' PTs_NGXBIO_HAPMAP_MQ30_BQ20.vcf.gz | sed -e 's/\///g' -e 's/\./N/g' | cat header.txt - | gzip > PTs_NGXBIO_HAPMAP_MQ30_BQ20.geno.gz

#PBS -N concat
#PBS -l nodes=1:ppn=8,vmem=70gb,walltime=250:00:00
#PBS -q default
#PBS -V

cd $PBS_O_WORKDIR

NP=$(wc -l < $PBS_NODEFILE)

module load bcftools/1.3.1

bcftools concat --threads 8 -Oz c1_subset.vcf.gz c2_subset.vcf.gz c3_subset.vcf.gz c4_subset.vcf.gz c5_subset.vcf.gz c6_subset.vcf.gz 
c7_subset.vcf.gz c8_subset.vcf.gz c9_subset.vcf.gz c10_subset.vcf.gz > hapmap3_SNPs_concat.vcf.gz

#PBS -N SnpEff
#PBS -l nodes=1:ppn=1,vmem=40gb,walltime=250:00:00
#PBS -q default
#PBS -V

cd $PBS_O_WORKDIR

NP=$(wc -l < $PBS_NODEFILE)

module load SnpEff/4.3
module load bcftools/1.5
module load tabix/0.2.6

bgzip -c Allchr_Para_SNP_eff.vcf > Allchr_Para_SNP_eff.vcf.gz

tabix -p vcf Allchr_Para_SNP_eff.vcf.gz

bcftools norm --do-not-normalize  --check-ref ws --fasta-ref  Zea_mays.AGPv3.22.dna.genome.fasta --output Allchr_Para_SNP_eff_newR.vcf Allchr_Para_SNP_eff.vcf.gz

java -jar $SNPEFF -v -stats PTs_todos.html Zea_mays.22 Allchr_Para_SNP_eff_newR.vcf > Allchr_Para_SNP_eff.ann.vcf

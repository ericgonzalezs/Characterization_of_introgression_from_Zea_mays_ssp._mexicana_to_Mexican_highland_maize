#PBS -N JointCalling_PT_NyV_soloPTs
#PBS -l nodes=1:ppn=1,vmem=60gb,walltime=250:00:00
#PBS -q default
#PBS -V

cd $PBS_O_WORKDIR

NP=$(wc -l < $PBS_NODEFILE)

module load GATK/3.5.0

#-d64 -Xmx59g -XX:+UseSerialGC

java -jar $GATK -T GenotypeGVCFs -R /LUSTRE/usuario/egonzalez/referencias/Zea_mays.AGPv3.22.dna.genome.fasta --variant /LUSTRE/usuario/egonzalez/secuenciasPT/NGX_bio/SNP_CALLING/LAS_MERGED/1032.9_NyV_merged_sorted_NN.g.vcf --variant /LUSTRE/usuario/egonzalez/secuenciasPT/NGX_bio/SNP_CALLING/LAS_MERGED/1032.6_NyV_merged_sorted_NN.g.vcf -o soloPTs_MQ30_BQ20.vcf

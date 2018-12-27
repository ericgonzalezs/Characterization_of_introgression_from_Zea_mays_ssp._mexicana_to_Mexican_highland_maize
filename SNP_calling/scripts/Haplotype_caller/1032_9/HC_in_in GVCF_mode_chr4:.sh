#PBS -N HC_GATK_1032.9_merged_chr4
#PBS -l nodes=1:ppn=1,vmem=40gb,walltime=250:00:00
#PBS -q default
#PBS -V

cd $PBS_O_WORKDIR

NP=$(wc -l < $PBS_NODEFILE)

module load GATK/3.5.0

#-d64 -Xmx39g -XX:+UseSerialGC

java -jar $GATK -T HaplotypeCaller -R /LUSTRE/usuario/egonzalez/referencias/Zea_mays.AGPv3.22.dna.genome.fasta -I /LUSTRE/usuario/egonzalez/secuenciasPT/NGX_bio/MERGED/SPLIT/1032.9_merged_nuevasyviejas_chr4_samtools.bam -mbq 20 -mmq 30 --emitRefConfidence GVCF -o 1032.9merged_chr4.g.vcf

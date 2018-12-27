#PBS -N Reorder
#PBS -l nodes=1:ppn=1,vmem=40gb,walltime=250:00:00
#PBS -q default
#PBS -V

cd $PBS_O_WORKDIR

NP=$(wc -l < $PBS_NODEFILE)

module load picard/2.4.1

#-d64 -Xmx39g -XX:+UseSerialGC

java -jar $PICARD SortVcf I=1032.6_NyV_merged.g.vcf  O=1032.6_NyV_merged_sorted.g.vcf SEQUENCE_DICTIONARY=/LUSTRE/usuario/egonzalez/referencias/Zea_mays.AGPv3.22.dna.genome.dict

java -jar $PICARD SortVcf I=1032.9_NyV_merged.g.vcf  O=1032.9_NyV_merged_sorted.g.vcf SEQUENCE_DICTIONARY=/LUSTRE/usuario/egonzalez/referencias/Zea_mays.AGPv3.22.dna.genome.dict

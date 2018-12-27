#PBS -N Index_merged
#PBS -l nodes=1:ppn=8,vmem=64gb,walltime=250:00:00
#PBS -q default
#PBS -V

cd $PBS_O_WORKDIR

NP=$(wc -l < $PBS_NODEFILE)

module load picard/2.4.1

for i in $(ls *_samtools.bam); do java -jar $PICARD BuildBamIndex INPUT=$i; done

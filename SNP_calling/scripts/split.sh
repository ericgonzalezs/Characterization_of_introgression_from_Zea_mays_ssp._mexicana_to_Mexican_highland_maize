#PBS -N split_1023.6_merged
#PBS -l nodes=1:ppn=1,vmem=40gb,walltime=250:00:00
#PBS -q default
#PBS -V

cd $PBS_O_WORKDIR

NP=$(wc -l < $PBS_NODEFILE)

module load samtools/1.3.1

#para 1032.6

samtools view -hb 1032.6_merged_nuevasyviejas.bam 10 > 1032.6_merged_nuevasyviejas_chr10_samtools.bam
samtools view -hb 1032.6_merged_nuevasyviejas.bam 1 > 1032.6_merged_nuevasyviejas_chr1_samtools.bam
samtools view -hb 1032.6_merged_nuevasyviejas.bam 2 > 1032.6_merged_nuevasyviejas_chr2_samtools.bam
samtools view -hb 1032.6_merged_nuevasyviejas.bam 3 > 1032.6_merged_nuevasyviejas_chr3_samtools.bam
samtools view -hb 1032.6_merged_nuevasyviejas.bam 4 > 1032.6_merged_nuevasyviejas_chr4_samtools.bam
samtools view -hb 1032.6_merged_nuevasyviejas.bam 5 > 1032.6_merged_nuevasyviejas_chr5_samtools.bam
samtools view -hb 1032.6_merged_nuevasyviejas.bam 6 > 1032.6_merged_nuevasyviejas_chr6_samtools.bam
samtools view -hb 1032.6_merged_nuevasyviejas.bam 7 > 1032.6_merged_nuevasyviejas_chr7_samtools.bam
samtools view -hb 1032.6_merged_nuevasyviejas.bam 8 > 1032.6_merged_nuevasyviejas_chr8_samtools.bam
samtools view -hb 1032.6_merged_nuevasyviejas.bam 9 > 1032.6_merged_nuevasyviejas_chr9_samtools.bam

#para 1032.9

samtools view -hb 1032.9_merged_nuevasyviejas.bam 10 > 1032.9_merged_nuevasyviejas_chr10_samtools.bam
samtools view -hb 1032.9_merged_nuevasyviejas.bam 1 > 1032.9_merged_nuevasyviejas_chr1_samtools.bam
samtools view -hb 1032.9_merged_nuevasyviejas.bam 2 > 1032.9_merged_nuevasyviejas_chr2_samtools.bam
samtools view -hb 1032.9_merged_nuevasyviejas.bam 3 > 1032.9_merged_nuevasyviejas_chr3_samtools.bam
samtools view -hb 1032.9_merged_nuevasyviejas.bam 4 > 1032.9_merged_nuevasyviejas_chr4_samtools.bam
samtools view -hb 1032.9_merged_nuevasyviejas.bam 5 > 1032.9_merged_nuevasyviejas_chr5_samtools.bam
samtools view -hb 1032.9_merged_nuevasyviejas.bam 6 > 1032.9_merged_nuevasyviejas_chr6_samtools.bam
samtools view -hb 1032.9_merged_nuevasyviejas.bam 7 > 1032.9_merged_nuevasyviejas_chr7_samtools.bam
samtools view -hb 1032.9_merged_nuevasyviejas.bam 8 > 1032.9_merged_nuevasyviejas_chr8_samtools.bam
samtools view -hb 1032.9_merged_nuevasyviejas.bam 9 > 1032.9_merged_nuevasyviejas_chr9_samtools.bam

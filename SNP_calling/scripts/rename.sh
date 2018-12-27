#PBS -N Cambianombres
#PBS -l nodes=1:ppn=1,vmem=30gb,walltime=250:00:00
#PBS -q default
#PBS -V

cd $PBS_O_WORKDIR

NP=$(wc -l < $PBS_NODEFILE)


sed -b 's/PT/1032.6NyV/g' 1032.6_NyV_merged_sorted.g.vcf > 1032.6_NyV_merged_sorted_NN.g.vcf

sed -b 's/PT/1032.9NyV/g' 1032.9_NyV_merged_sorted.g.vcf > 1032.9_NyV_merged_sorted_NN.g.vcf

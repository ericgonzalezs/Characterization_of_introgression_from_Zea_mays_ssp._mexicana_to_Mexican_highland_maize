#PBS -N vcf_subset
#PBS -l nodes=1:ppn=1,vmem=70gb,walltime=250:00:00
#PBS -q default
#PBS -V

cd $PBS_O_WORKDIR

NP=$(wc -l < $PBS_NODEFILE)

module load bcftools/1.3.1
module load tabix/0.2.6

gunzip *.gz
for i in *vcf; do M=$(echo $i | cut -d "_" -f1);bgzip -c $i > "$M""_vcf.gz"; done
for i in *.gz; do bcftools index -t $i; done
for i in *.gz; do P=$(echo $i | cut -d "_" -f1); bcftools view -Oz -S sample_list.txt $i > ./filtrados/"$P""_subset.vcf.gz"; done

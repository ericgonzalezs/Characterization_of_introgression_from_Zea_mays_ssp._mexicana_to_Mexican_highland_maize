#PBS -N doGeno
#PBS -l nodes=1:ppn=8,vmem=72gb,walltime=250:00:00
#PBS -q default
#PBS -V

cd $PBS_O_WORKDIR

NP=$(wc -l < $PBS_NODEFILE)

module load ANGSD/0.912

angsd -SNP_pval 1e-6 -GL 1 -doMajorMinor 1 -doMaf 1 -indF Con_par -rf chr.txt -bam bam_list.txt -remove_bads 1 -minMapQ 30 -minQ 20 -minInd 4 -P 8 -doGeno 4 -doPost 1 -postCutoff 0.95 -out PTNGXTotal_Fosforo_Li_low_mex_par_trip_ch

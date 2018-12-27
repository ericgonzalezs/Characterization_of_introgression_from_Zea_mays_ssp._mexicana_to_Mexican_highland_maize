#PBS -N GL_inb
#PBS -l nodes=1:ppn=20,vmem=80gb,walltime=250:00:00
#PBS -q default
#PBS -V

cd $PBS_O_WORKDIR

NP=$(wc -l < $PBS_NODEFILE)

module load ngsF/1.2.0
module load ANGSD/0.912

angsd -GL 1 -bam bam_list.txt -remove_bads 1 -nThreads 8  -doGlf 3 -doMajorMinor 1 -doMaf 1 -SNP_pval 1e-6 -minInd 4 -minMapQ 30 -minQ 20 -out GL_con_Par.HWE



#The file was deocmpressed with: zcat GL_con_Par.HWE.glf.gz

N_SITES=$((`zcat GL_con_Par.HWE.glf.gz | wc -l`-1))
ngsF10.sh --n_threads 20 --n_ind 12 --min_epsilon 1e-6 --n_sites $N_SITES --glf GL_con_Par.HWE.glf --out Con_par
                                                                 

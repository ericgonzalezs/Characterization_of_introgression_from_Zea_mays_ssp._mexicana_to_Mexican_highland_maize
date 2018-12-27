#PBS -N GL_inb
#PBS -l nodes=1:ppn=20,vmem=80gb,walltime=250:00:00
#PBS -q default
#PBS -V

cd $PBS_O_WORKDIR

NP=$(wc -l < $PBS_NODEFILE)

module load ngsF/1.2.0
module load ANGSD/0.912

angsd -GL 1 -bam bam_list.txt -remove_bads 1 -nThreads 8  -doGlf 3 -doMajorMinor 1 -doMaf 1 -SNP_pval 1e-6 -minInd 4 -minMapQ 30 -minQ 20 -out GL_con_Par.HWE

#the sites were counted with this:  zcat GL_con_Par.HWE.mafs.gz | wc -l 
#and it was usbtracted 1 from teh count 

#The file was deocmpressed with: zcat GL_con_Par.HWE.glf.gz

ngsF10.sh --n_threads 20 --n_ind 12 --min_epsilon 1e-6 --n_sites 78818598 --glf GL_con_Par.HWE.glf --out Con_par
                                                                 

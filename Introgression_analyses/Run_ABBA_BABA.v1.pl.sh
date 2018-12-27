#PBS -N fd
#PBS -l nodes=1:ppn=1,vmem=30gb,walltime=250:00:00
#PBS -q default
#PBS -V

cd $PBS_O_WORKDIR

NP=$(wc -l < $PBS_NODEFILE)

perl convertDoGeno2egglib.pl <(zcat PTNGXTotal_BKN22_BKN33_mex_par_trip_ch.geno.gz) > PTNGXTotal_BKN22_BKN33_mex_par_trip_ch.geno.txt

cat header.txt PTNGXTotal_BKN22_BKN33_mex_par_trip_ch.geno.txt > PTNGXTotal_BKN22_BKN33_mex_par_trip_ch.geno_WH.txt

perl ABBA_BABA.v1.pl PTNGXTotal_BKN22_BKN33_mex_par_trip_ch.geno_WH.txt Population_file.txt Poporder.txt > D_fd_Fhom_ANGSD.txt

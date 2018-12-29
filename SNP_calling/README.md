SNP CALLING

ANGSD was used to call SNPs from the WGS described in our paper. 

The script to calculate the inbreeding values is [here](https://github.com/ericgonzalezs/Characterization_of_introgression_from_Zea_mays_ssp._mexicana_to_Mexican_highland_maize/blob/master/SNP_calling/scripts/ANGSD/inbreeding.sh). The script ngsf.sh can be found [here](https://github.com/fgvieira/ngsF)

The script to call SNPs using ANGSD is [here](https://github.com/ericgonzalezs/Characterization_of_introgression_from_Zea_mays_ssp._mexicana_to_Mexican_highland_maize/blob/master/SNP_calling/scripts/ANGSD/ANGSD_SNP_calling.sh)

And the the bam list used is availabe [here](https://github.com/ericgonzalezs/Characterization_of_introgression_from_Zea_mays_ssp._mexicana_to_Mexican_highland_maize/blob/master/SNP_calling/scripts/ANGSD/Bamlist.txt)

The SNPs from the PTxREV F2 mapping populations were called by the DaRT staff at CIMMYT using DaRT-seq data from the 170 individuals.

The pipeline for select the SNPs from the PTxREV F2 individuals and convert them to hapmap format is [here](https://github.com/ericgonzalezs/Characterization_of_introgression_from_Zea_mays_ssp._mexicana_to_Mexican_highland_maize/blob/master/SNP_calling/scripts/DaRT/snp_selection.R)

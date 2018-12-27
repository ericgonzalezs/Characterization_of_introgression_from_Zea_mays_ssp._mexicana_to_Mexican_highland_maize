SNP CALLING

ANGSD was used to call SNPs from the WGS 

The WGS of the highland genomes PT1, PT2 and MM were used, togueteher with WGS of the  lowland genomes RIMMA0703 and RIMMA0733 from [this paper](https://genomebiology.biomedcentral.com/articles/10.1186/s13059-017-1346-4), the bamfiles of the landrace Reventador BKN22 and teosintes used for the Maize HapMap3, the bam files were downloaded using the instructions in panzea [here](http://cbsusrv04.tc.cornell.edu/users/panzea/download.aspx?filegroupid=23) using [icommands](https://pods.iplantcollaborative.org/wiki/display/DS/Setting+Up+iCommands). All preprocessing steps described for the PT genomes was applied also to Maize HapMap3 bam files.

Were calculated inbreeding values to allow deviations from the expected HWE in the SNP calling, the script to calculate inbreeding values is [here](https://github.com/ericgonzalezs/Characterization_of_introgression_from_Zea_mays_ssp._mexicana_to_Mexican_highland_maize/blob/master/SNP_calling/scripts/ANGSD/inbreeding.sh). The script ngsf.sh can be found [here](https://github.com/fgvieira/ngsF)

The script to call SNPs using ANGSD is [here](https://github.com/ericgonzalezs/Characterization_of_introgression_from_Zea_mays_ssp._mexicana_to_Mexican_highland_maize/blob/master/SNP_calling/scripts/ANGSD/ANGSD_SNP_calling.sh)

And the the bam list used is availabe [here](https://github.com/ericgonzalezs/Characterization_of_introgression_from_Zea_mays_ssp._mexicana_to_Mexican_highland_maize/blob/master/SNP_calling/scripts/ANGSD/Bamlist.txt)

The SNPs using DaRT-seq data were called by the DaRT staff at CIMMYT

The file for select SNPs and convert to a hapmap format is [here](https://github.com/ericgonzalezs/Characterization_of_introgression_from_Zea_mays_ssp._mexicana_to_Mexican_highland_maize/blob/master/SNP_calling/scripts/DaRT/snp_selection.R)

THE SNP CALLING WAS CONDUCTED USING GATK AND ANGSD


GATK


There was followed the Best Practices for Germline SNP & Indel Discovery in Whole Genome and Exome Sequence of GATK and the pipeline is [here](https://software.broadinstitute.org/gatk/best-practices/bp_3step.php?case=GermShortWGS).

Instead of use the variant quality score recalibration (VQSR) to filter the variants, there was used the hard filters.

Also the mapping files were split by crhomosome in order to increrase the speed to obtain the SNPs at the whole genone level.

The steps and scripts for the SNP calling were:

1. [Split the chromosomes](https://github.com/sawers-rellan-labs/PTxREV_F2/blob/master/SNP_calling/scripts/split.sh)

2. [Idex chromosomes](https://github.com/sawers-rellan-labs/PTxREV_F2/blob/master/SNP_calling/scripts/Index.sh)

3. [Haplotype Caller](https://github.com/sawers-rellan-labs/PTxREV_F2/tree/master/SNP_calling/scripts/Haplotype_caller) for [1032.6](https://github.com/sawers-rellan-labs/PTxREV_F2/tree/master/SNP_calling/scripts/Haplotype_caller/1032_6): [chr1](https://github.com/sawers-rellan-labs/PTxREV_F2/blob/master/SNP_calling/scripts/Haplotype_caller/1032_6/HC_in_in%20GVCF_mode_chr1.sh), [chr2](https://github.com/sawers-rellan-labs/PTxREV_F2/blob/master/SNP_calling/scripts/Haplotype_caller/1032_6/HC_in_in%20GVCF_mode_chr2sh), [chr3](https://github.com/sawers-rellan-labs/PTxREV_F2/blob/master/SNP_calling/scripts/Haplotype_caller/1032_6/HC_in_in%20GVCF_mode_chr3sh), [chr4](https://github.com/sawers-rellan-labs/PTxREV_F2/blob/master/SNP_calling/scripts/Haplotype_caller/1032_6/HC_in_in%20GVCF_mode_chr4.sh), [chr5](https://github.com/sawers-rellan-labs/PTxREV_F2/blob/master/SNP_calling/scripts/Haplotype_caller/1032_6/HC_in_in%20GVCF_mode_chr5.sh), [chr6](https://github.com/sawers-rellan-labs/PTxREV_F2/blob/master/SNP_calling/scripts/Haplotype_caller/1032_6/HC_in_in%20GVCF_mode_chr6.sh), [chr7](https://github.com/sawers-rellan-labs/PTxREV_F2/blob/master/SNP_calling/scripts/Haplotype_caller/1032_6/HC_in_in%20GVCF_mode_chr7.sh), [chr8](https://github.com/sawers-rellan-labs/PTxREV_F2/blob/master/SNP_calling/scripts/Haplotype_caller/1032_6/HC_in_in%20GVCF_mode_chr8.sh), [chr9](https://github.com/sawers-rellan-labs/PTxREV_F2/blob/master/SNP_calling/scripts/Haplotype_caller/1032_6/HC_in_in%20GVCF_mode_chr9.sh) & [chr10](https://github.com/sawers-rellan-labs/PTxREV_F2/blob/master/SNP_calling/scripts/Haplotype_caller/1032_6/HC_in_in%20GVCF_mode_chr10.sh) and [1032.9](https://github.com/sawers-rellan-labs/PTxREV_F2/tree/master/SNP_calling/scripts/Haplotype_caller/1032_9): [chr1](https://github.com/sawers-rellan-labs/PTxREV_F2/blob/master/SNP_calling/scripts/Haplotype_caller/1032_9/HC_in_in%20GVCF_mode_chr1.sh), [chr2](https://github.com/sawers-rellan-labs/PTxREV_F2/blob/master/SNP_calling/scripts/Haplotype_caller/1032_9/HC_in_in%20GVCF_mode_chr2.sh), [chr3](https://github.com/sawers-rellan-labs/PTxREV_F2/blob/master/SNP_calling/scripts/Haplotype_caller/1032_9/HC_in_in%20GVCF_mode_chr3.sh), [chr4](https://github.com/sawers-rellan-labs/PTxREV_F2/blob/master/SNP_calling/scripts/Haplotype_caller/1032_9/HC_in_in%20GVCF_mode_chr4:.sh), [chr5](https://github.com/sawers-rellan-labs/PTxREV_F2/blob/master/SNP_calling/scripts/Haplotype_caller/1032_9/HC_in_in%20GVCF_mode_chr5.sh), [chr6](https://github.com/sawers-rellan-labs/PTxREV_F2/blob/master/SNP_calling/scripts/Haplotype_caller/1032_9/HC_in_in%20GVCF_mode_chr6.sh), [chr7](https://github.com/sawers-rellan-labs/PTxREV_F2/blob/master/SNP_calling/scripts/Haplotype_caller/1032_9/HC_in_in%20GVCF_mode_chr7.sh), [chr8](https://github.com/sawers-rellan-labs/PTxREV_F2/blob/master/SNP_calling/scripts/Haplotype_caller/1032_9/HC_in_in%20GVCF_mode_chr8.sh), [chr9](https://github.com/sawers-rellan-labs/PTxREV_F2/blob/master/SNP_calling/scripts/Haplotype_caller/1032_9/HC_in_in%20GVCF_mode_chr9.sh) & [chr10](https://github.com/sawers-rellan-labs/PTxREV_F2/blob/master/SNP_calling/scripts/Haplotype_caller/1032_9/HC_in_in%20GVCF_mode_chr10.sh) HC caller was runned with default parameters all but mappig quality of 30 and a base quelity of 20.


4. The obtained g.vcf files were merged for the next analysis with [this script](https://github.com/sawers-rellan-labs/PTxREV_F2/blob/master/SNP_calling/scripts/Merging_g_vcf.sh)

5. Then the merged g.vcf files were sorted with [this script](https://github.com/sawers-rellan-labs/PTxREV_F2/blob/master/SNP_calling/scripts/Reorder.sh) to have the chromosomes in the same order that the reference genome.

6. Finally the names of the merged, ordered g.vcf were changed with [this script](https://github.com/sawers-rellan-labs/PTxREV_F2/blob/master/SNP_calling/scripts/rename.sh)

7. [Joint calling](https://github.com/sawers-rellan-labs/PTxREV_F2/blob/master/SNP_calling/scripts/jointcalling.sh)

8. Before filtering the SNPs the [Maize HapMap3](http://www.biorxiv.org/content/biorxiv/early/2015/09/16/026963.full.pdf) SNPs were also used, this file was obtained from [panzea](http://www.panzea.org/) using icommands of [cyverse](http://www.cyverse.org/). First the HapMap3 vcf file with the SNPs was filtered to retain only the SNPs from maize landrace and teosintes diversity with [this script](https://github.com/sawers-rellan-labs/PTxREV_F2/blob/master/SNP_calling/scripts/HapMap_filtering_for_MaizeLandrace_and_teosinte.sh), the sample list is [here](https://github.com/sawers-rellan-labs/PTxREV_F2/blob/master/SNP_calling/scripts/sample_list.txt). Then the separated chromosomes were concatenated with [this script](https://github.com/sawers-rellan-labs/PTxREV_F2/blob/master/SNP_calling/scripts/Hapmap_chromosome_contatenation.sh)

9. [SNP Filtering, and contatenation with Hapmap](https://github.com/sawers-rellan-labs/PTxREV_F2/blob/master/SNP_calling/scripts/Filer_SNPs_and_hapmap_merging_and_fd_input_file.sh)

The hapmap3 SNPs were used because the Haplotype Caller call just a few SNPs using the mapping files of the maize landraces and teosintes used for the MaizeHapmap3. 

ANGSD

There was used the genomes of 1032.6 and 1032.9, the genomes lowland genomes RIMMA0703 and RIMMA0733 from [this paper](https://genomebiology.biomedcentral.com/articles/10.1186/s13059-017-1346-4), the bafiles of the landrace Reventador BKN22 and teosintes used for the Maize HapMap3, the bam files were downloaded using the instructions in panzea [here](http://cbsusrv04.tc.cornell.edu/users/panzea/download.aspx?filegroupid=23) using [icommands](https://pods.iplantcollaborative.org/wiki/display/DS/Setting+Up+iCommands). All preprocessing steps described for the PT genomes was applied also to Maize HapMap3 bam files.

Were calculated inbreeding values to allow deviations from the expected HWE in the SNP calling, the script to calculate inbreeding values is [here](https://github.com/sawers-rellan-labs/PTxREV_F2/blob/master/SNP_calling/scripts/ANGSD/inbreeding.sh)

The script to call SNPs using ANGSD are [here](https://github.com/sawers-rellan-labs/PTxREV_F2/blob/master/SNP_calling/scripts/ANGSD/ANGSD_SNP_calling.sh)

And the the bam list used is availabe [here](https://github.com/sawers-rellan-labs/PTxREV_F2/blob/master/SNP_calling/scripts/ANGSD/Bamlist.txt)


DaRT

The file for slect SNps and convert to a hapmap format is [here](https://github.com/sawers-rellan-labs/PTxREV_F2/blob/master/SNP_calling/scripts/DaRT/snp_selection.R)

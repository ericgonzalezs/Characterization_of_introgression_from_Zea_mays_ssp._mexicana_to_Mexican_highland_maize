PLANT MATERIAL

Two PT mexi 5 individual named 1032.6 and 1032.9 where grow in the greenhouse in standard conditions


DNA EXTRACTION

Leaves tissue was collected from the seedlings using liquid nitrogen and storaged at -80° C, the samples was grownded by hand using mortar and liquid nitrogren. 

The DNA was extracted in genomic services with a secret protocol.  


SEQUENCING

There was sequenced two Palomero Toluqueño genomes using IlluminaHigh sequence technology. 

Sequencing	of	2x150bp	reads	in	units	
of	one	high-output	lane	on	the	HiSeq	
3000/4000	platform	using	the	HiSeq	
4000	SBS	chemistry.	1	lanes	produces	
~90	GB	of	ouput. 
There was used 2 lines, 

*falta poner estadísticas de cuanto se secuencio de cada genoma, %del genoma cubierto, etc.*

PRE-PROCESSING OF DATA

There was followed the GATK best practices for Germline SNP & Indel Discovery in Whole Genome and Exome Sequence recommendetions for the preprocessing of the data and than info can be founded [here](https://software.broadinstitute.org/gatk/best-practices/bp_3step.php?case=GermShortWGS&p=1). With the exception that I carry an indel realignment step and I didin't recalibrate the bases using BQSR

The scripts of the preprocessing pipeline are [here](https://github.com/sawers-rellan-labs/PTxREV_F2/blob/master/Plant_material-DNA-extraction-sequencing_information_and_preprocessing_of_data/scripts/preprocessing)

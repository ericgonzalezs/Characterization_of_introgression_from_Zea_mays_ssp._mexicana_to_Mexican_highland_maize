The ANGSD SNPs were coverted to a hapmapformat and annotated with [this script](https://github.com/sawers-rellan-labs/PTxREV_F2/blob/master/SnpEff/Convert_to_hap_map.sh), 

The script to create the table to have the effects separated from the ANN section in the vcf file is [here](https://github.com/sawers-rellan-labs/PTxREV_F2/blob/master/SnpEff/Create_table_with_effect_separated.sh) then all the sites with non aternative allele where removed.

The scripts to create the tables for the effects separated (Homozygous alternative, Homozygous reference, total conuts) are [here](https://github.com/sawers-rellan-labs/PTxREV_F2/blob/master/SnpEff/Create_tables_to_count.R) add the counts of effects to the tables of introgression )top 1 and top 10%) are [here](https://github.com/sawers-rellan-labs/PTxREV_F2/blob/master/SnpEff/Add_counts_to_top1%26top10.R) and per gene are [here](https://github.com/sawers-rellan-labs/PTxREV_F2/blob/master/SnpEff/Add_counts_to_gene_table.R)

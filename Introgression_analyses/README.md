The introgression analyses was carried using the fd statistic from [this paper](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4271521/pdf/msu269.pdf) and the script to calculate fd was taked from [this paper](http://onlinelibrary.wiley.com/doi/10.1111/mec.13569/abstract;jsessionid=C1E4B49D5CEF05ECE73D4B6D74094BC8.f03t04) 

The script ABBA_BABA.v1.pl present in the apendix S1 from [this paper](http://onlinelibrary.wiley.com/doi/10.1111/mec.13569/abstract;jsessionid=C1E4B49D5CEF05ECE73D4B6D74094BC8.f03t04) that calculates the numerators and denominators for fd and D was runed in [this way](https://github.com/sawers-rellan-labs/PTxREV_F2/blob/master/Introgression_analyses/Run_ABBA_BABA.v1.pl.sh) and the output was used to calculate fd and D in windows of 50 SNPs with [this coustome script](https://github.com/sawers-rellan-labs/PTxREV_F2/blob/master/Introgression_analyses/FD_escaneo_por_ventanas_union_de_ventanas_graficarlas.R) in R. This script also includes the graphs for visualize the introgressed segements in the genome. This was used for the SNPs obtained with GATK and ANGSD for 1032.6 and 1032.9, using the single genomes or toguether.

To determine zscores and p-values of Fd and D we perform first a jakcnife bootstrap with [this script](https://github.com/sawers-rellan-labs/PTxREV_F2/blob/master/Introgression_analyses/Jacknife_ABBA_pipe_remaster.R) slightly mofifyed from Owens et al. (2016). And the zscores and pvalues where obtainied with [this scripts](https://github.com/sawers-rellan-labs/PTxREV_F2/blob/master/Introgression_analyses/ZscoreyPvalue.sh) and the R script ABBA_pvalue.R from Owens.

To determine a cutoff to identify the introgression segments a resampling method was used and selecting the values whose probailty to occur by chance was 0.01, the script for the resampling method is available [here]()

To distiguish shared ancestral variation form introgression was calculated Dxy using [this script]() using the SNP data but filtering for sites where ABBAs or BABAs could be counted using [this script]()

The regions that we considered introgression represent the X % of the genome and wasevaluated using [this script]()

Fd and D was evaluated again filtering the sites that we considered such as introgressed, the sites was filtered using [this script]()

The introgression regions was compared with the regions that show signals of selection between teosintes from [this paper]() and the regions uder selection [from this paper]() and the previous introgressed regions determined by Hufford [in this paper]()

Also the regios was compared with the QTLs analysis of the [F2 of PT x Rev]() and the [BC1S5 RIL of PT x B73](). 

Also was evaluated if the regions overlap with low recombination regions obtained for the [linkage map of the F2 PTxREV]()

The two PT genomes (1032.6 and 1032.9) was used to calculate pi using [this scrip]() and again comparing with introgressed region

The SNPs obtainded with GATK of the two PT genomes was used to perform a funtional anotation analses using SNP effect with [this script]()


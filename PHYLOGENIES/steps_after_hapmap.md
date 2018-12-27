1- I ordered the hapmap file with the Sort Genotype File Plugin of tassel

2- I open the ordered file with tassel and remove the chr 0 from the file

3- I save the new file in plink format with tassel and I run plink in the next way:
      
    /home/eric/Documentos/Programas/plink-1.07-x86_64/plink --file Jonas_ordered_plink_sin0.plk --make-bed --out /home/eric/Documentos/Maiz/Introgression/FILOGENIAS/Jonas_ordered
    
4- I remove select only the chromosomes from the reference genome with this two steps (the next tool don't work if my 
   reference genome have different chromosomes, the scaffolds, compared with the bim file produced in the last step:

    samtools faidx Zea_mays.AGPv3.22.dna.genome.fasta
    samtools faidx Zea_mays.AGPv3.22.dna.genome.fasta 1 2 3 4 5 6 7 8 9 10 > Zea_mays.AGPv3.22.dna.genome_sin_scaffolds.fasta
    
5- I get the posotions that most to be reversed with this:

    snpflip -b Jonas_ordered.bim -f Zea_mays.AGPv3.22.dna.genome_sin_scaffolds.fasta -o Jonas_snpflip

6- I use plink to reverse this 16027 sites
    
    /home/eric/Documentos/Programas/plink-1.07-x86_64/plink --file Jonas_ordered_plink_sin0.plk --flip Jonas_snpflip.reverse --recode --out Jonas_ordered_reversed

7- finally I change the map file to get the same locus name in this way:

    awk -F"\t" -v OFS="\t" '{print $1, "S"$1"_"$4, $3, $4}' Jonas_ordered_reversed.map > Jonas_ordered_reversed_new.ma

9- I open the ped and map jonas files with tassel, unsing the function open ass .. slecting the option Plink

10- I open the GATK previously filtered sites with tassel and I merge it with Jonas data

11 - I filter the sites with tassel, selectign those with a MAF of at least 0.05 and a Maximun allele frequency of 1, having at leat 10 individuals, having at the end 29848 merged sites

#####Ahora para mexicana y parviglumis de Tanja

1- Después de crear el hapmap, lo ordene con tassel y le quite el cromosoma 0 and I converted the file to plink format 

2- I create the .bim file

     /home/eric/Documentos/Programas/plink-1.07-x86_64/plink --file Tanja_plink_sinchr0.plk --make-bed --out tanja_mex_link_ordered


3- I see which SNPs must o be flipped

      snpflip -b tanja_mex_link_ordered.bim -f Zea_mays.AGPv3.22.dna.genome_sin_scaffolds.fasta -o Tanja_snpflip

4- I flip those snps

      /home/eric/Documentos/Programas/plink-1.07-x86_64/plink --file Tanja_plink_sinchr0.plk --flip Tanja_snpflip.reverse --recode --out Tanja_ordered_re

5- I open the plink files with TASSEL and merged with Jonas and GATK data

6- I did the same por parviglumis data

#########Final steps

1- I merge everything with tassel and I remove BKN022, BKN033 and TIL08

2 - then I filtered with a mior allele frequency of 0.05 and  amaximum allele frequency of 1 and having at least 250 individuals per site 

3 - then I select the sites within introgression



tail -n 3 D_fd_Fhom_ANGSD_Li_newq_high.txt > tmp1
tail -n 3 Tabla_Pts_li_para_R_top10_out_jackknife.txt > tmp2

paste tmp1 tmp2 > paraZscoresypvalue_out_2.txt
rm tmp1
rm tmp2
Rscript ABBA_pvalue.R paraZscoresypvalue_out_2.txt Zscoresypvalue_out_linewq.txt

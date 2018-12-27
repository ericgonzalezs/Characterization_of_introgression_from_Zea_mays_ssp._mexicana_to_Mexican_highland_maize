#PBS -N mergiendolas
#PBS -l nodes=1:ppn=1,vmem=30gb,walltime=250:00:00
#PBS -q default
#PBS -V

cd $PBS_O_WORKDIR

NP=$(wc -l < $PBS_NODEFILE)

grep -v "#" 1032.6merged_chr1.g.vcf | awk -F "\t" '$1 == 1 {print $0}' > 1032.6merged_chr1_solo.g.vcf
grep -v "#" 1032.6merged_chr2.g.vcf | awk -F "\t" '$1 == 2 {print $0}' > 1032.6merged_chr2_solo.g.vcf
grep -v "#" 1032.6merged_chr3.g.vcf | awk -F "\t" '$1 == 3 {print $0}' > 1032.6merged_chr3_solo.g.vcf
grep -v "#" 1032.6merged_chr4.g.vcf | awk -F "\t" '$1 == 4 {print $0}' > 1032.6merged_chr4_solo.g.vcf
grep -v "#" 1032.6merged_chr5.g.vcf | awk -F "\t" '$1 == 5 {print $0}' > 1032.6merged_chr5_solo.g.vcf
grep -v "#" 1032.6merged_chr6.g.vcf | awk -F "\t" '$1 == 6 {print $0}' > 1032.6merged_chr6_solo.g.vcf
grep -v "#" 1032.6merged_chr7.g.vcf | awk -F "\t" '$1 == 7 {print $0}' > 1032.6merged_chr7_solo.g.vcf
grep -v "#" 1032.6merged_chr8.g.vcf | awk -F "\t" '$1 == 8 {print $0}' > 1032.6merged_chr8_solo.g.vcf
grep -v "#" 1032.6merged_chr9.g.vcf | awk -F "\t" '$1 == 9 {print $0}' > 1032.6merged_chr9_solo.g.vcf
grep -v "#" 1032.6merged_chr10.g.vcf | awk -F "\t" '$1 == 10 {print $0}' > 1032.6merged_chr10_solo.g.vcf
grep "#" 1032.6merged_chr10.g.vcf > encabezado1032.6.txt

grep -v "#" 1032.6merged_chr10.g.vcf | awk -F "\t" '$1 != 10 && $1 !=9 && $1 != 8 && $1 != 7 && $1 !=6 && $1 != 5 && $1 != 4 && $1 != 3 && $1 != 2 && $1 != 1 {print $0}'> scaffolds_Pt_Mt.txt


grep -v "#" 1032.9merged_chr1.g.vcf | awk -F "\t" '$1 == 1 {print $0}' > 1032.9merged_chr1_solo.g.vcf
grep -v "#" 1032.9merged_chr2.g.vcf | awk -F "\t" '$1 == 2 {print $0}' > 1032.9merged_chr2_solo.g.vcf
grep -v "#" 1032.9merged_chr3.g.vcf | awk -F "\t" '$1 == 3 {print $0}' > 1032.9merged_chr3_solo.g.vcf
grep -v "#" 1032.9merged_chr4.g.vcf | awk -F "\t" '$1 == 4 {print $0}' > 1032.9merged_chr4_solo.g.vcf
grep -v "#" 1032.9merged_chr5.g.vcf | awk -F "\t" '$1 == 5 {print $0}' > 1032.9merged_chr5_solo.g.vcf
grep -v "#" 1032.9merged_chr6.g.vcf | awk -F "\t" '$1 == 6 {print $0}' > 1032.9merged_chr6_solo.g.vcf
grep -v "#" 1032.9merged_chr7.g.vcf | awk -F "\t" '$1 == 7 {print $0}' > 1032.9merged_chr7_solo.g.vcf
grep -v "#" 1032.9merged_chr8.g.vcf | awk -F "\t" '$1 == 8 {print $0}' > 1032.9merged_chr8_solo.g.vcf
grep -v "#" 1032.9merged_chr9.g.vcf | awk -F "\t" '$1 == 9 {print $0}' > 1032.9merged_chr9_solo.g.vcf
grep -v "#" 1032.9merged_chr10.g.vcf | awk -F "\t" '$1 == 10 {print $0}' > 1032.9merged_chr10_solo.g.vcf
grep "#" 1032.9merged_chr10.g.vcf > encabezado1032.9.txt

cat 1032.6*solo*g.vcf > sinHeader_1032.6_NyV_merged.g.vcf
cat 1032.9*solo*g.vcf > sinHeader_1032.9_NyV_merged.g.vcf


cat encabezado1032.6.txt scaffolds_Pt_Mt.txt sinHeader_1032.6_NyV_merged.g.vcf  > 1032.6_NyV_merged.g.vcf
cat encabezado1032.9.txt scaffolds_Pt_Mt.txt sinHeader_1032.9_NyV_merged.g.vcf > 1032.9_NyV_merged.g.vcf

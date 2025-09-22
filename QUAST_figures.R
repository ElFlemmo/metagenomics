library(ggplot2)
library(dplyr)
library(tidyr)
library(stringr)

quast <- read.csv("F:/DNAsense/quast/quast_transposed_summary.csv")

colnames(quast) <- c(
  "run_accession", "Contigs_0bp", "Contigs_1000bp", "Contigs_5000bp", 
  "Contigs_10000bp", "Contigs_25000bp", "Contigs_50000bp", 
  "TotalLength_0bp", "TotalLength_1000bp", "TotalLength_5000bp", 
  "TotalLength_10000bp", "TotalLength_25000bp", "TotalLength_50000bp", 
  "Total_Contigs", "Largest_Contig", "Total_Length", "GC_Percentage", 
  "N50", "N75", "L50", "L75", "Ns_per_100kbp"
)

quast$run_accession <- gsub("_contigs", "", quast$run_accession)

colnames(quast )[2] <- "Contigs_200bp"

write.csv2(quast , "F:/DNAsense/quast/quast.csv")
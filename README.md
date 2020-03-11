# Project Description

Transcriptional Profile of Mammalian Cardiac Regeneration with mRNA-Seq: process, analyze and understand the reason behind cardiac regeneration of neonatal at early stages of development and its loss at later stages.


# Contributors

Data curator: Mary T. Yohannes 
Programmer: Eetu Eklund
Analyst: Salam Al-Abdullatif
Biologist: Evie Wan

 
# Repository Contents

run_extract: extracts the SRA format to FASTQ (paired-end sequenceing)

run_cufflinks.qsub: runs differential expression analysis in accepted_hits.bam

run_cuffdiff.qsub: determines significant changes in transcipt expression

run_tophat.qsub: aligns the two FASTQ samples files to mouse reference genome

output.geneBodyCoverage.r: makes lineplot of RNA-seq read corerage over the gene body

output.inner_distance.r: makes density plot of distances between reads

run_genebody.qsub: runs geneBody_Coverage.py

analysis.R: takes differential expression output from cuffdiff and outputs the up-regulated and down-regulated signficant genes in text files

biologist.rmd: plots FPKM values of differentially expressed genes, compares DAVID analysis results, and creates clustered heatmap 

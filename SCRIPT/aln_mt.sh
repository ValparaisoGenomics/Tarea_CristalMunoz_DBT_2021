#!/bin/bash -l  
# para alinear tus dos secuencias fastq al genoma mitocondrial    
bwa mem mt.fasta SRR2006763_1.fastq SRR2006763_2.fastq > SRR2006763.sam     
# Transformar tu archivo sam a bam    
samtools view -Sb -q 30 SRR2006763.sam > SRR2006763.bam      
# ordenar tu archivo binario bam     
samtools sort SRR2006763.bam -o SRR2006763.sort.bam       
# indexar tu archivo bam     
samtools index SRR2006763.sort.bam 
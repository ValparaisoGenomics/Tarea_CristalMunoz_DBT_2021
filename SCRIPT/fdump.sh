#!/bin/bash      
#SBATCH - J fdump_cristal.munoz      
/home2/cristal.munoz/sratoolkit.2.11.0-centos_linux64/bin/fasterq-dump /home2/cristal.munoz/SRA_samples/SRR2006763/*.sra -O /home2/cristal.munoz/SRA_samples/SRR2006763/   
#!/bin/bash   
#SBATCH -J prefetch_cristal.munoz        
/home2/cristal.munoz/sratoolkit.2.11.0-centos_linux64/bin/prefetch --max-size 100G SRR2006763 -O /home2/cristal.munoz/SRA_samples/        
/home2/cristal.munoz/sratoolkit.2.11.0-centos_linux64/bin/vdb-validate /home2/cristal.munoz/SRA_samples/SRR2006763/SRR2006763.sra
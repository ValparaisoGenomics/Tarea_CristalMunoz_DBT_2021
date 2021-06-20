# SCRIPT _Proyecto Genómica Aplicada_

### _**Autor**_  
_Cristal Muñoz Rojas_  
- Chilena 
- Ingeniero en Biotecnología

### nano   
`nano script1.sh`  
```
# !/bin/bash    
# Mi primer script    
echo Curso de Genómica  
```

### SRA Toolkit   
`nano script1.sh`     
```
# !/bin/bash    
# Descarga y descomprime SRA Toolkit  
wget http://ftp-trace.ncbi.nlm.nih.gov/sra/sdk/current/sratoolkit.current-centos_linux64.tar.gz  
tar -xzf sratoolkit.current-centos_linux64.tar.gz   
```
### Descarga de biomuestra desde SRA    
`nano download.sh`  
```
#!/bin/bash   
#SBATCH -J prefetch_cristal.munoz        
/home2/cristal.munoz/sratoolkit.2.11.0-centos_linux64/bin/prefetch --max-size 100G SRR2006763 -O /home2/cristal.munoz/SRA_samples/        
/home2/cristal.munoz/sratoolkit.2.11.0-centos_linux64/bin/vdb-validate /home2/cristal.munoz/SRA_samples/SRR2006763/SRR2006763.sra      
```

`nano fdump.sh`  
```
#!/bin/bash      
#SBATCH - J fdump_cristal.munoz      
/home2/cristal.munoz/sratoolkit.2.11.0-centos_linux64/bin/fasterq-dump /home2/cristal.munoz/SRA_samples/SRR2006763/*.sra -O /home2/cristal.munoz/SRA_samples/SRR2006763/   
```  
### Comprobación de integridad de archivos  
`nano fastqc.sh`   
```
#!/bin/bash  
#SBATCH - J fastqc_cristal.munoz  
fastqc /home2/cristal.munoz/SRA_samples/SRR2006763/*.fastq    
```
### Alineamiento    
`nano aln_mt.sh`  
```
#!/bin/bash -l  
# para alinear tus dos secuencias fastq al genoma mitocondrial    
bwa mem mt.fasta SRR2006763_1.fastq SRR2006763_2.fastq > SRR2006763.sam     
# Transformar tu archivo sam a bam    
samtools view -Sb -q 30 SRR2006763.sam > SRR2006763.bam      
# ordenar tu archivo binario bam     
samtools sort SRR2006763.bam -o SRR2006763.sort.bam       
# indexar tu archivo bam     
samtools index SRR2006763.sort.bam  
```  


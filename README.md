# _**Práctica elaboracion de un proyecto de genómica aplicada**_   

### _**Autor**_  
_Cristal Muñoz Rojas_  
- Chilena 
- Ingeniero en Biotecnología  

## _**Descripción**_   

### Assembly

**Especie**: _Gallus gallus_   
**Sexo**: femenino  
**Secuenciación**: completa 
 
 | Longitud total de la secuencia | 1.053.332.251 | 
 |  :---  |  :---  | 
 | Númer de scaffolds |	214 |
 | Número de contigs | 677 |    
 | Número total de cromosomas y plásmidos | 42 |      

### Refseq

**Locus**: NM_001004390 ARNm de 549 pb lineal VRT 26-APR-2021   
**Definición** Gallus gallus hemoglobina beta, subunidad rho (HBBR), ARNm.   
**Referencia 1, autores**: Hoffmann FG, Storz JF, Gorr TA y Opazo JC.  
**Título**: Patrones específicos de linaje de diversificación funcional en las familias de genes de alfa y beta globina de vertebrados tetrápodos   
**Revista**: Mol Biol Evol 27 (5), 1126-1138 (2010)   

### SRA

**Comunidades microbianas cecales de gallinas ponedoras y de la línea de pollos de engorde y su cruce F1 ponedora x pollos de engorde**  
Este estudio compara la microbiota cecal de pollos de engorde, ponedoras e intermedias F1 ponedoras x pollos de engorde cruzados, con la hipótesis de que permanecerían diferencias significativas en la composición microbiana entre las tres líneas cuando se minimizaran los factores huésped y ambientales.

| Adhesión	| PRJNA732245 |
|  :---  |  :---  | 
| Tipo de datos |	Metagenoma |
| Alcance |	Multiisolate |
|	Fecha de registro | 24 de mayo de 2021 |
| Relevancia |	Agrícola |

**Project Data**

| Resource Name	| Number of Links |
|  :---  |  :---  | 
| SRA Experiments |	33 |
| BioSample |	99 |

**SRA Data Details**

| Data volume, Gbases |	1 |
|  :---  |  :---  | 
| Data volume, Mbytes |	270 |


_Links_:  
Base de datos que proporciona información sobre la estructura de genomas ensamblados, nombres de ensamblajes y otros metadatos, informes estadísticos y enlaces a datos de secuencias genómicas, en este caso se puede encontrar la informacion señalada anteriormente para la especie _Gallus gallus_  
https://www.ncbi.nlm.nih.gov/assembly/GCF_016699485.2  

Base de datos de nucleótidos es una colección de secuencias de varias fuentes, que incluyen GenBank, RefSeq, TPA y PDB. Los datos de secuencias de genomas, genes y transcripciones proporcionan la base para la investigación de diferentes areas de interés. Se anexa el enlace para la informacion entregada en la sección Refseq del informe.   
https://www.ncbi.nlm.nih.gov/nuccore/NM_001004390.2  

Un registro de Bioproyecto proporciona a los usuarios un único lugar para encontrar enlaces a los diversos tipos de datos generados para un proyecto en particular. Se anexa el enlace para la informacion entregada en la sección SRA del informe.   
https://www.ncbi.nlm.nih.gov/bioproject/PRJNA732245  

## **INSTALACIÓN Y CONFIGURACIÓN DE SOFTWARE PARA ACCESO REMOTO Y TRANSFERENCIA DE ARCHIVOS**

- **PuTTY**  
Ingresar a www.putty.org y descargar PuTTY.   

![img](https://github.com/GenomicsEducation/Cristal04/blob/main/Capturas%20pantalla%20actividad%209/pagina%20putty.png) 

Posteriormente ejecuta la instalacion en tu PC.  

![img](https://github.com/GenomicsEducation/Cristal04/blob/main/Capturas%20pantalla%20actividad%209/instalaci%C3%B3n%20putty%201.png)

- **WinSCP**  

Ingresar al siguiente link https://winscp.net/eng/download.php  y hacer click en **DOWNLOAD WINSCP 5.17.10 (10.6 MB)** y luego ejecutar la instalación en tu PC.
 
 ![img](https://github.com/GenomicsEducation/Cristal04/blob/main/Capturas%20pantalla%20actividad%209/Instalaci%C3%B3n%20WinSCP.png) 

## **ACCESO REMOTO A SERVIDOR POMEO**

- **SSH**      

Ingresar el Host Name **200.54.220.141**, seleccionar **POMEO** y hacer click en **DATA** Ingresar ususario y clave como se muesta en las imagenes: 

![img](https://github.com/GenomicsEducation/Cristal04/blob/main/Capturas%20pantalla%20actividad%209/Config%20pomeo.png)     

![img](https://github.com/GenomicsEducation/Cristal04/blob/main/Capturas%20pantalla%20actividad%209/Config%20pomeo%20usuario.png)  

![img](https://github.com/GenomicsEducation/Cristal04/blob/main/Capturas%20pantalla%20actividad%209/Config%20pomeo%20password.png)  


## **INSTALACIÓN Y CONFIGURACIÓN CONDA, NANO Y SRA TOOLKIT**  

- **Miniconda3**  

**_Esta instalacion se debe realizar en PuTTY_**     

Para instalar Miniconda primero se descarga del repositorio de anaconda con el comando **wget**. Se tendra un archivo de salida ejecutable con extension **“.sh”**, que debe ser ejecutado con el comando **bash**.

`wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-Linux-x86_64.sh`

**Activacion de miniconda**  
`source ~/.bashrc`  

**Revision del contenido de conda**  
`conda list`  

**Revision de version de conda**  
`conda --version`  

**Instalación de editor de texto nano**  
`conda install -c conda-forge nano`  

![img](https://github.com/GenomicsEducation/Cristal04/blob/main/Capturas%20pantalla%20actividad%209/Instalaci%C3%B3n%20miniconda.png)   

![img](https://github.com/GenomicsEducation/Cristal04/blob/main/Capturas%20pantalla%20actividad%209/Instalaci%C3%B3n%20miniconda%202.png)    

- **nano**  

Usando nano se creará un script denominado **script1.sh**. En este script ejecutaremos una simple impresión de la frase **_“Curso de Genomica”_** usando la función **echo**. La primera linea del script debe contener la siguiente instrucción **#!/bin/sh** a veces denominada **shebang**. Esta instrucción indica que se debe ejecutar, desde el directorio bin, el script actual usando la Shell.    
 
Ejecute entonces el siguiente código para llamar a nano en la terminal y escriba el siguiente script. Recuerde guardar el script con el nombre **“script1.sh”** usando **Ctrl+O**, luego salga de nano usando **Ctrl+X**.  

`**nano script1.sh**`  

`# !/bin/bash`  
`# Mi primer script`  
`echo Curso de Genómica`  

Ejecute el script desde la terminal usando,    

`**bash script1.sh**`

![img](https://github.com/GenomicsEducation/Cristal04/blob/main/Capturas%20pantalla%20actividad%209/Instalacion%20nano.png)   

- **SRA Toolkit** 
   
SRA Toolkit es una herramienta que permite descargar y convertir automáticamente archivos en formato .SRA en otros formatos usando un interprete de comandos y de manera automática. Este es compatible con Linux, Windows y Mac. 
Usar los comandos **wget** y **tar** para descargar y descomprimir **_SRA Toolkit_**.

`nano script1.sh`  

`# !/bin/bash`  
`# Descarga y descomprime SRA Toolkit`  
`wget http://ftp-trace.ncbi.nlm.nih.gov/sra/sdk/current/sratoolkit.current-centos_linux64.tar.gz
tar -xzf sratoolkit.current-centos_linux64.tar.gz`  

Moverse al directorio **/sratoolkit.2.10.5-centos_linux64** y configurar **SRAtoolkit** para trabajar en la nube.

`bin/vdb-config --interactive`

Ejecute el siguiente comando para probar que SRAToolkit está trabajando correctamente.

`fastq-dump --stdout SRR390728 | head -n 8`

Si todo va bien con esta muestra continue con los siguientes comandos, alternativamente agregue bin/ al inicio del comando.

El primero descarga y muestra el contenido de las 5 primeras secuencias del archivo SRR6019464.

`fastq-dump -X 5 -Z SRR6019464`  

El segundo descarga el contenido de las 5 primeras secuencias y las almacena en un archivo con formato fastq

`fastq-dump -X 5 SRR6019464`  

El tercero descarga la biomuestra completa, detenga la ejecución luego de unos momentos, son 65 GB de datos.

`fastq-dump --gzip --split-3 SRR6019464`  

Finalmente explore la muesta con **zcat** y chequee el número de read descargados.

`zcat SRR6019464.fastq.gz | echo $((`wc -l`/4))`

![img](https://github.com/GenomicsEducation/Cristal04/blob/main/Capturas%20pantalla%20actividad%209/Instalacion%20SRA.png)   



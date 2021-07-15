# _Elaboración de un proyecto de genómica aplicada_   

### _**Autor**_  
_Cristal Muñoz Rojas_  
- Chilena 
- Ingeniero en Biotecnología  

## Tabla de Contenidos  
- [_**Especie de importancia económica en producción animal**_   ](#Especie-de-importancia-económica-en-producción-animal)  
  - [ Assembly](#Assembly)  
  - [Refseq](#Refseq)
  - [SRA](SRA)
- [_**Intalación y configuración de Software para acceso remoto y transferencia de archivos**_](#Intalación-y-configuración-de-Software-para-acceso-remoto-y-transferencia-de-archivos)   
  - [PuTTY](#PuTTY) 
  - [WinSCP](#WinSCP)  
  - [POMEO](#Acceso-remoto-a-servidor-POMEO)
  - [Miniconda3](#Miniconda3)
  - [nano](#nano)  
  - [SRA Toolkit](#SRA-Toolkit)  
- [_**Práctica de Shell y Linux**_](#Práctica-de-Shell-y-Linux)
  - [Comandos básicos](#Comandos-básicos-para-trabajar-en-proyectos-de-genómica)
  - [Atajos de teclado](#Atajos-del-teclado-para-trabajar-eficientemente-en-la-terminal)
- [_**Instalación y cofiguración de Software**_](#Instalación-y-cofiguración-de-Software)  
  - [Control de calidad ](#Control-de-calidad)
  - [Alineamiento](#Alineamiento)
- [_**Análisis control de calidad, filtrado y poda**_](#Etapas-análisis-de-control-de-calidad,-filtrado-y-poda)
  - [Descarga secuencias NGS usando SRA toolkit](#Descarga-secuencias-NGS-usando-SRA-toolkit)
  - [Análisis de control de calidad](#Análisis-de-control-de-calidad)
  - [Filtrado y poda](#Filtrado-y-poda)
  - [Transferencia de archivos](#Transferencia-de-archivos-de-control-de-calidad-mediante-protocolo-FTP-desde-servidor-a-cliente)
- [_**Etapas de Alineamiento**_](#Etapas-de-Alineamiento)
  - [Directorio de trabajo y descarga de datos](#Creación-de-directorio-de-trabajo-y-descarga-de-datos-para-alineamiento)
  - [Descarga genoma mitocondrial](#Descarga-genoma-mitocondrial)
  - [Subir genoma a POMEO](#Subir-genoma-a-POMEO)
  - [Indexación del genoma de referencia](#Indexación-del-genoma-de-referencia)
  - [Alineamiento de secuencias contra genoma mitocondrial](#Alineamiento-de-secuencias-contra-genoma-mitocondrial)
  - [Exploración de alineamiento con samtools](#Exploración-de-alineamiento-con-samtools)
- [_**Llamado de variantes**_](#Llamado-de-variantes)
  - [Directorio de trabajo variant_call](#Directorio-de-trabajo-variant_call)
  - [Variantes](#Llamado-de-variantes)
  - [Análisis de variantes con vcftools](#Análisis-de-variantes-con-vcftools)
  - [Visualización de variantes con IGV](#Visualización-de-variantes-con-IGV)
  - [Videos llamado de variantes](#Videos-llamado-de-variantes)
- [_**Genómica poblacional**_](#Genómica-poblacional)
  - [Análisis de diversidad ](#Análisis-de-diversidad)
  - [Análisis de estructura poblacional](#Análisis-de-estructura-poblacional)
  - [Análisis de admixture](#Análisis-de-admixture)
  - [Visualización con RStudio Cloud](#Visualización-con-RStudio-Cloud)
  - [Videos Genómica poblacional](#Videos-Genómica-poblacional)
- [_**Introducción a los estudios de asociación genómica**_](#Introducción-a-los-estudios-de-asociación-genómica)


## _Especie de importancia económica en producción animal_   

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

## _Intalación y configuración de Software para acceso remoto y transferencia de archivos_

### PuTTY 
PuTTY es un emulador de terminal gratuito que permite conectarnos y ejecutar comandos en un servidor remoto. Este emulador admite varios protocolos de red tal como SSH, Telnet, rlogin, y SCP. La mayoría de usuarios, especialmente los que trabajan sobre sistemas operativos Windows, lo encuentran muy útil a la hora de conectar a un servidor Unix o Linux a través de SSH.  
Para relizar la descarga e instalación en tu sisema operativo Windows, sigue los siguientes pasos:   

1.- Ingresa a www.putty.org y descarga PuTTY.   

![img](https://github.com/GenomicsEducation/Cristal04/blob/main/Capturas%20pantalla%20actividad%209/pagina%20putty.png) 

2.- Ejecuta la instalacion en tu PC.  

![img](https://github.com/GenomicsEducation/Cristal04/blob/main/Capturas%20pantalla%20actividad%209/instalaci%C3%B3n%20putty%201.png)

### WinSCP   
WinSCP es una aplicación de Software Libre, es un cliente SFTP gráfico para Windows que emplea SSH. Su función principal es facilitar la transferencia segura de archivos entre dos sistemas informáticos, el local y uno remoto que ofrezca servicios SSH.  
Para relizar la descarga e instalación sigue los siguientes pasos: 

1.- Ingresa al siguiente link https://winscp.net/eng/download.php  
2.- Haz click en **DOWNLOAD WINSCP 5.17.10 (10.6 MB)**    
3.- Ejecuta la instalación en tu PC.
 
 ![img](https://github.com/GenomicsEducation/Cristal04/blob/main/Capturas%20pantalla%20actividad%209/Instalaci%C3%B3n%20WinSCP.png) 

### Acceso remoto a servidor POMEO       
- **SSH**  

1.- Ingresa el Host Name **200.54.220.141**   
2.- Selecciona **POMEO**    
3.- Haz click en **DATA**    
4.- Ingresa ususario y clave   

![img](https://github.com/GenomicsEducation/Cristal04/blob/main/Capturas%20pantalla%20actividad%209/Config%20pomeo.png)     

![img](https://github.com/GenomicsEducation/Cristal04/blob/main/Capturas%20pantalla%20actividad%209/Config%20pomeo%20usuario.png)  

![img](https://github.com/GenomicsEducation/Cristal04/blob/main/Capturas%20pantalla%20actividad%209/Config%20pomeo%20password.png)  
 

### Miniconda3  
Miniconda es una herramienta que ayuda a ordenar de manera fácil los paquetes o librerías de cada proyecto en el que trabajas, esta herramienta trabaja con el gestor de paquetes Conda que está escrito en lenguaje de programación Python, sin embargo Conda permite gestionar proyectos que contengan código escrito en otros lenguajes, como R y multilenguaje.

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

### nano  
nano es un editor de texto, presente por defecto en la mayoría de los sistemas basados en Linux.  

Usando nano se creará un script denominado **script1.sh**. En este script ejecutarás una simple impresión de la frase **_“Curso de Genomica”_** usando la función **echo**. La primera linea del script debe contener la siguiente instrucción **#!/bin/sh** a veces denominada **shebang**. Esta instrucción indica que se debe ejecutar, desde el directorio bin, el script actual usando la Shell.    
 
Ejecuta el siguiente código para llamar a nano en la terminal y escribe el siguiente script. Recuerda guardar el script con el nombre **“script1.sh”** usando **Ctrl+O**, luego sal de nano usando **Ctrl+X**.  

`nano script1.sh`  

```
# !/bin/bash    
# Mi primer script    
echo Curso de Genómica  
```

Ejecuta el script desde la terminal usando,    

`bash script1.sh`

![img](https://github.com/GenomicsEducation/Cristal04/blob/main/Capturas%20pantalla%20actividad%209/Instalacion%20nano.png)   

### SRA Toolkit     
SRA Toolkit es una herramienta que permite descargar y convertir automáticamente archivos en formato .SRA en otros formatos usando un interprete de comandos y de manera automática. Este es compatible con Linux, Windows y Mac. 

Usar los comandos **wget** y **tar** para descargar y descomprimir **_SRA Toolkit_**.

`nano script1.sh`  

```
# !/bin/bash    
# Descarga y descomprime SRA Toolkit  
wget http://ftp-trace.ncbi.nlm.nih.gov/sra/sdk/current/sratoolkit.current-centos_linux64.tar.gz  
tar -xzf sratoolkit.current-centos_linux64.tar.gz   
```

Moverse al directorio **/sratoolkit.2.10.5-centos_linux64** y configurar **SRAtoolkit** para trabajar en la nube.

`bin/vdb-config --interactive`

Ejecute el siguiente comando para probar que **SRAToolkit** está trabajando correctamente.   

`fastq-dump --stdout SRR390728 | head -n 8`

Si todo va bien con esta muestra continue con los siguientes comandos, alternativamente agregue **bin/** al inicio del comando.

El primero descarga y muestra el contenido: **5 primeras secuencias del archivo SRR6019464.**

`fastq-dump -X 5 -Z SRR6019464`  

El segundo descarga el contenido de las 5 primeras secuencias y las almacena en un archivo con formato **fastq**  
`fastq-dump -X 5 SRR6019464`  

El tercero descarga la biomuestra completa, detenga la ejecución luego de unos momentos, son 65 GB de datos. 

`fastq-dump --gzip --split-3 SRR6019464`  

Finalmente explore la muesta con **zcat** y chequee el número de read descargados.  

`zcat SRR6019464.fastq.gz | echo $((`wc -l`/4))`

![img](https://github.com/GenomicsEducation/Cristal04/blob/main/Capturas%20pantalla%20actividad%209/Instalacion%20SRA.png)   

## _Práctica de Shell y Linux_

### Comandos básicos para trabajar en proyectos de genómica

Ejecutar los siguientes comandos en la terminal:

**bash –version** indica información de la versión del software **bash**  

`bash --version`

**pwd - present working directory-** es un comando que indica el nombre del directorio en el que se encuentra. 

`pwd`

Informa acerca del espacio total en el sistema, espacio usado, espacio disponible  

`df -hP`

**Evalua el performance de la CPU, similar al monitor del sistema**  

`top`  
(para salir presiona q)  

Crea un directorio de trabajo denominado tesis    

`mkdir tesis`  

Cambia al directorio tesis    

`cd tesis`

**cd ..** es un comando para volver al directorio anterior, luego intenta regresar a tu cuenta de usuario.  

`cd ..`     
`cd nombre.usuario`

Al usar el simbolo **>** que funciona como una tibería la información del espacio total del sistema se almacena en un documento de texto denominado **espacio_libre_pomeo.txt**   

`df -hP > espacio_libre_pomeo.txt`  

La mayoría de los datos genómicos están almacenados en archivos de texto plano o formato de texto por lo que es conveniente aprender a leer los archivos usando diferentes comandos

**cat** lee datos de un archivo e imprime su contenido en la terminal. 

`cat espacio_libre.txt`

**less** lee datos de un archivo sin imprimir en la terminal. Podemos entonces recorrer el archivo. 

`less espacio_libre.txt`

**wc** cuenta líneas, palabras y caracteres de un fichero.   

`wc espacio_libre.txt`

**ls** es un comando de listado de objetos en un directorio (home 2 indica los usuarios) (en ~ indica los programas y ficheros que existen)    

`ls`  

**ls -l -h** entrega información con mas detalle de los objetos y de un tamaño que sea legible por humanos.  

`ls -l -h`

**rm -r** es un comando para remover un fichero o directorio forzando la acción. Pruebe borrar el directorio llamado tesis   

`rm tesis`
`rm -r tesis`  

### Atajos del teclado para trabajar eficientemente en la terminal    
| **ATAJOS** | **FUNCIÓN** |    
|  :---  |  :---  |   
| **flecha arriba/abajo** | Te permite moverte por las líneas ejecutadas en la terminal |  
| **history** | Imprime todas las líneas de comando ejecutadas en la terminal |  
| **tab** | Usa el tabulador como un atajo para llamar al fichero |  
| **ctrl-a -** | Mueve el cursor al comienzo de la línea actual |  
| **ctrl-e -**| Mueve el cursor al final de la línea actual |  
| **ctrl-k -**| Borra desde el cursor hasta el final de la línea |  
| **ctrl-u -** | Borra desde el cursor hasta el inicio de la línea |  
| **ctrl-w -** | Borra la palabra inmediatamente detras del cursor |  
| **exit** | Es un comando para cerrar la sesión |  

## _Instalación y cofiguración de Software_

Recuerda que debes ingreasar a **PuTTY**, el cual se encuentra previamente instalado en tu PC, e iniciar conexión remota en **POMEO**. Una vez iniciada tu sesión, **configura bioconda e instala el software** con los siguientes comandos:   

`conda config --add channels bioconda` 

### Control de calidad 
- FastQC  
   
`conda install -c bioconda fastqc` 

![img](https://github.com/GenomicsEducation/Cristal04/blob/main/Capturas%20pantalla%20actividad%2010/A1-Conectar%20a%20servidor%20Pomeo.png) ![img](https://github.com/GenomicsEducation/Cristal04/blob/main/Capturas%20pantalla%20actividad%2010/A2.1.png) 

- Trimmomatic  

`conda install -c bioconda trimmomatic` 

![img](https://github.com/GenomicsEducation/Cristal04/blob/main/Capturas%20pantalla%20actividad%2010/A2.png)     

### Alineamiento
- BWA  

`conda install -c bioconda bwa`

![img](https://github.com/GenomicsEducation/Cristal04/blob/main/Capturas%20pantalla%20actividad%2011/1.1.png) 
![img](https://github.com/GenomicsEducation/Cristal04/blob/main/Capturas%20pantalla%20actividad%2011/2.2.png)

- Samtools   

`conda install -c bioconda samtools`    
![img](https://github.com/GenomicsEducation/Cristal04/blob/main/Capturas%20pantalla%20actividad%2011/2.3.1.png)  

`conda config --add channels bioconda`    
![img](https://github.com/GenomicsEducation/Cristal04/blob/main/Capturas%20pantalla%20actividad%2011/2.3.2.png)     

`conda config --add channels conda-forge`      
![img](https://github.com/GenomicsEducation/Cristal04/blob/main/Capturas%20pantalla%20actividad%2011/2.3.3.png) 

`conda install samtools==1.11`      
![img](https://github.com/GenomicsEducation/Cristal04/blob/main/Capturas%20pantalla%20actividad%2011/2.3.4.png)     
 
Puedes revisar la ruta de instalación de un programa determinado utilizando el comando **“whereis”** en la terminal, junto a el programa del cual quieres obtener la ruta.  
*Ejemplo*    
`whereis sratoolkit`  

`whereis samtools`  

`whereis bwa`  

Y la salida de cada comando te indicará la ruta de instalación.    
`/home2/usuario/miniconda3/bin/bwa`    

## _Etapas análisis de control de calidad, filtrado y poda_

### Descarga secuencias NGS usando SRA toolkit

Trabaja con la biomuestra **SRR2006763** proveniente de la cepa Aquagen de _Salmo salar_. Obtendrás dos archivos **fastq**, (los datos que utilizarás provienen de una secuenciación pair-end)

| Biomuestra 1 | SRR2006763_1.fastq |
|  :---  |  :---  |   
| Biomuestra 2 | SRR2006763_2.fastq |  

Créa un archivo ejecutable **(.sh)** con nano denominado **download.sh** utilizando el siguiente comando:  

`nano download.sh`

Introduce y guarda la información del script como se detalla a continuación:
```
#!/bin/bash        
#SBATCH -J prefetch_usuario        
/home2/usuario/sratoolkit.2.11.0-centos_linux64/bin/prefetch --max-size 100G SRR2006763 -O /home2/usuario/SRA_samples/           
/home2/usuario/sratoolkit.2.11.0-centos_linux64/bin/vdb-validate /home2/usuario/SRA_samples/SRR2006763/SRR2006763.sra  
```

Cambia en la segunda, tercera y cuarta línea de **usuario** por **tu_nombre_de_usuario**.  
_Ejemplo_    
```
#!/bin/bash   
#SBATCH -J prefetch_cristal.munoz        
/home2/cristal.munoz/sratoolkit.2.11.0-centos_linux64/bin/prefetch --max-size 100G SRR2006763 -O /home2/cristal.munoz/SRA_samples/        
/home2/cristal.munoz/sratoolkit.2.11.0-centos_linux64/bin/vdb-validate /home2/cristal.munoz/SRA_samples/SRR2006763/SRR2006763.sra      
```

Corre el script mediante el siguiente comando:  

`bash download.sh`  
 
Cuando finalice la ejecución, lista la carpeta **SRA_samples** para comprobar que se creó el directorio de la secuencia descargada con el nombre **SRR2006763**, corroborar que dentro de este directorio se generó el archivo **SRR2006763.sra**, utiliza el siguiente comando:  

`ls -l -h `  

![img](https://github.com/GenomicsEducation/Cristal04/blob/main/Capturas%20pantalla%20actividad%2010/3BASH.png)  

Luego debes acceder a la carpeta **SRR2006763** y crear el siguiente script (**nano fdump.sh**) que permitirá obtener los archivos fastq de la muestra **SRR2006763**.  
```
#!/bin/bash      
#SBATCH - J fdump_usuario      
/home2/usuario/sratoolkit.2.11.0-centos_linux64/bin/fasterq-dump /home2/usuario/SRA_samples/SRR2006763/*.sra -O /home2/usuario/SRA_samples/SRR2006763/   
```
Recuerda que debes cambiar **_usuario_** por **tu_nombre_de_usuario**    
 
Finalmente, corre el script mediante el comando **bash fdump.sh**. Se extraerán los archivos **fastq** y se indicará el total de **read leidos y escritos**.  
`bash fdump.sh`    
 
Si lo deseas, puedes comprobar la integridad de los datos obtenidos utilizando **md5sum**, este algoritmo que se utiliza para evitar daños que pueden generarse durante el proceso de descarga de la biomuestra desde SRA.  

Busca el código **Md5** de las muestras y direcciona la información a un archivo **md5_samples**, con el siguiente comando:    

`md5sum SRR2006763_1.fastq SRR2006763_2.fastq > md5_samples`    
 
Verifica la salida generada con el comando; los valores de **md5** de las muestras.   

`cat md5_samples`  
  
Comprueba la integridad de ambas biomuestras usando **md5sum** o similar. El resultado se puede observar en la imagen.  

`md5sum -c md5_samples`  
 
![img](https://github.com/GenomicsEducation/Cristal04/blob/main/Capturas%20pantalla%20actividad%2010/4.3.png)   
 
### Análisis de control de calidad  
 
Es recomendable realizar un análisis de control de calidad de secuencias **fastq** que provienen de **secuenciadores NGS**. Para esto, en el directorio **SRR2006763** debes crear y correr el siguiente script:   

`nano fastqc.sh`  

Luego, introduce y guarda la información del script como se detalla a continuación:  
```
#!/bin/bash  
#SBATCH - J fastqc_usuario  
fastqc /home2/usuario/SRA_samples/SRR2006763/*.fastq    
```
Recuerda que debes cambiar **_usuario_** por **tu_nombre_de_usuario**  
 
La salida resultante de la ejecución del script anterior serán dos archivos:

- **Archivo HTML**
- **Archivo .zip**  

### Filtrado y poda  

Ejecuta nano  

`nano trimm.sh`

Luego, introduce y guarda la información del script como se detalla a continuación:  
```
#!/bin/bash
#SBATCH - J trimm_usuario
trimmomatic PE SRR2006763_1.fastq SRR2006763_2.fastq -baseout SRR20067634_filtered.fastq.gz SLIDINGWINDOW:5:25 MINLEN:60
```  
Obtendras el siguiente resultado, 4 archivos comprimidos:  
- SRR20067634_filtered_1P.fastq.gz
- SRR20067634_filtered_1U.fastq.gz
- SRR20067634_filtered_2P.fastq.gz
- SRR20067634_filtered_2U.fastq.gz  

Luego debes descomprimir los archivos con el siguiente comando:    

`gunzip SRR20067634_filtered_1P.fastq.gz`  

Realiza nuevamente un análisis de calidad de las muestras y comparara con el reporte de calidad inicial (en un script o directamente en la terminal)  

`fastqc  *.fastq.gz`

### Transferencia de archivos de control de calidad mediante protocolo FTP desde servidor a cliente

Para acceder a los archivos se puede utilizar **Rstudio server** instalado en **POMEO**, como se señala a continuación: 

- Ingresa al siguiente link http://200.54.220.141:8787/ (verifica que este conectado al puerto 8787).
- Utiliza tus datos de usuario y clave de **POMEO**   
- Haz click en la carpeta **SRA_SAMPLES**
- Haz click en la carpeta **SRR2006763** 
- Listo! ya encontraste tus archivos **HTML y ZIP**    

## _Etapas de Alineamiento_  

### Creación de directorio de trabajo y descarga de datos para alineamiento  

Primero consideraremos que las secuencias fastq originales obtenidas tiene muy buena calidad, por lo tanto trabajaremos directamente en ellas. Para llevar a cabo este trabajo, debemos trasladar los archivos a una nueva carpeta que denominaremos **"alineamiento"** y que sera creada en tu usuario de **home2** segun el siguiente comando:  

`mkdir alineamiento`  

Una vez creada la carpeta **alineamiento** debemos ingresar a ella y transferir los archivos de clase anterior, haciendo uso de los siguientes comandos en la terminal:  
```
mv /home2/usuario/SRA_samples/SRR2006763/SRR2006763_1.fastq /home2/usuario/alineamiento/ 

mv /home2/usuario/SRA_samples/SRR2006763/SRR2006763_2.fastq /home2/usuario/alineamiento/
```

Lista tu carpeta de alineamiento para verificar que tienes lo necesario para el alineamiento, hasta ahora deben estar tus dos secuencias **“SRR2006763_1.fastq”** y **“SRR2006763_2.fastq”**  `ls`

### Descarga genoma mitocondrial  

Haremos uso de el genoma de referencia de la **mitocondria de _Salmo salar_**. Realizaremos la descarga en la misma carpeta de **alineamiento**, para esto debes ingresar al siguiente link en tu navegador:   
https://www.ncbi.nlm.nih.gov/genome/?term=salmo+salar; en este link encontraras el genoma de la mitocondria de _Salmo salar_, en una tabla que lista el genoma de referencia de esta especie donde se incluyen todos los cromosomas y el genoma de la mitocondria, buscarás "Name: **MT**" y haz clic en "RefSeq: **NC_001960.1**", puedes guiarte con las imagenes que estan a continuación:

![img](https://github.com/GenomicsEducation/Cristal04/blob/main/Capturas%20pantalla%20actividad%2011/4.2.png)    
![img](https://github.com/GenomicsEducation/Cristal04/blob/main/Capturas%20pantalla%20actividad%2011/4.3.png)  

Una vez que ingresaste al genoma, debes dar clic en la opción **FASTA** localizada bajo el título e identificador RefSeq de la referencia y enviar la secuencia FASTA del genoma mitocondrial a un archivo, como se observa en la imagen.

![img](https://github.com/GenomicsEducation/Cristal04/blob/main/Capturas%20pantalla%20actividad%2011/4.4.png)  

### Subir genoma a POMEO  

Dirigete a la carpeta descargas de tu PC, encontrarás un archivo denominado **“sequence.fasta”**, cambia el nombre del archivo por **“mt.fasta”** y súbelo a **POMEO**.  
Para llevar a cabo esta tarea, puedes utilizar **WINSCP**, para hacer uso de este software se debe realizar primero la tarea **"Intalación y configuración de Software para acceso remoto y transferencia de archivos"** o hacer la descarga e instalacion con el siguiente link:  https://winscp.net/eng/download.php
 
Una vez instalado **WINSCP** debes iniciar sesión, con tus datos de usuario y clave de **POMEO**, guarda tus datos. Aquí encontrarás la interfaz de tu servidor con las carpetas que tienes creadas, en donde ingresarás en tu carpeta de alineamiento y arrastrarás el archivo descagado del genoma mitocondrial a la misma.  

![img](https://github.com/GenomicsEducation/Cristal04/blob/main/Capturas%20pantalla%20actividad%2011/11-1.2.2.png)  

Cuando termines lo anterior puedes ingresar a **POMEO**, listar tu carpeta de alineamiento con **ls** y verás tu archivo **“mt.fasta”** junto con tus secuencias fastq.  

![img](https://github.com/GenomicsEducation/Cristal04/blob/main/Capturas%20pantalla%20actividad%2011/4.5.png)  

### Indexación del genoma de referencia  

Ya incluiste a tu carpeta de **alineamiento** todos los archivos descritos en pasos anteriores, por lo tanto, podemos comenzar con la primera etapa del alineamiento, que corresponde a la indexación del genoma de referencia con **bwa** usando el siguiente comando:  

`bwa index mt.fasta`  

La salida del comando dará como resultado **5 archivos** con extensiones **“amb”,“ann”,“bwt”,“pac” y “sa”**  

![img](https://github.com/GenomicsEducation/Cristal04/blob/main/Capturas%20pantalla%20actividad%2011/indexaci%C3%B3n1.png)

### Alineamiento de secuencias contra genoma mitocondrial

Para llevar a cabo el alineamiento se deben contemplar las siguientes etapas:

- Alineamiento de las secuencias contra el genoma de referencia, cuya salida será un archivo con extensión “.sam”  
- Conversión del archivo SAM a BAM  
- Inspeccionar el archivo .sam de salida  
- Ordenar lecturas alineadas por posición  
- Indexación con Samtools  
- Exploración de datos con Samtools  

Se pueden ejecutar todas la etapas mensionadas anteriormente, creando un **script** con **nano** denominado **aln_mt.sh**, como se muestra a continuación: 

`nano aln_mt.sh`

En el script ingresar las siguientes instrucciones:  
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

Ejecuta tu script con bash  

`bash aln_mt.sh`    

Ahora que ya tienes tus archivos **SAM/BAM** puedes observar tu archivo sam con el comando **less** de linux  

`less SRR2006763.sam`   

También puedes realizar un análisis estadístico estandar con los siguientes comandos:  
`samtools flagstat SRR2006763.bam > muestra_stat.txt`  

### Exploración de alineamiento con samtools  
| Comando | Función |
|  :---  |  :---  |
| samtools flags unmap| Proporciona los reads no mapeados |
| samtools flags 77 | read 1 - emparejado no mapeado |
| samtools flags 141 | read 2 - emparejado no mapeado |
| samtools flags 99 | Reverse de un read 1 adecuadamente emparejado |  

`samtools view -f 66 SRR2006763.bam | head -n 10` Busca solo reads emparejados en el archivo bam 

## Visualización de alineamiento con IGV

Primero debes descargar el software **IGV** en el siguiente link: https://software.broadinstitute.org/software/igv/download, luego descargar desde **POMEO** a tu computador el archivo “bam” generado del alineamiento con su respectivo índice “.bam.bai”, para llevar a cabo la descarga ingresa a **WinSCP** haciendo uso del Host Name **200.54.220.141** e ingreasando tu nombre de usuario y clave. 

Para cargar el genoma de referencia en IGV debes seguir los siguientes pasos:  
1.- Seleccionar la opción “More”    
2.- Selecciona el genoma de _**Salmo salar**_ (ICSASG_v2) y presiona Ok.    
3.- Selecciona el genoma de mitocondrial **NC_001960.1**     

Una vez se cargue el genoma de _Salmo salar_ como el genoma mitocondrial seleccionado,se visualizará el alineamiento como en la imagen: 
NOTA: El alineamiento toma su tiempo... ten paciencia. 

![igv](https://user-images.githubusercontent.com/84527684/124798600-88627200-df21-11eb-8bfd-557a42c41665.jpeg)   

## _Llamado de variantes_

Conectate al servidor **POMEO** y configura el canal bioconda con los siguientes comandos:  
`conda config --add channels bioconda`  

Instala los software **gatk4**  
`conda install -c bioconda gatk4`  

Instala **picard** tools   
`wget https://github.com/broadinstitute/picard/releases/download/2.8.1/picard.jar`  

Y finalmente instala los software **vcftools**  
`conda install -c bioconda vcftools`  

### Directorio de trabajo variant_call 
Para ingresar al directorio de trabajo variant_call utiliza los siguientes comandos: 

`cd variant_call`  
`ls -l -h`

En variant_call encontrarás los archivos necesarios para poder llevar a cabo la actividad de variantes, las cuales se listan a continuación: 

- **"SRR2006763.sort.bam"**: Obtenido con las actividades anteriores.
- **ref_genome.fna**: Genoma de referencia de _Salmo salar_ en formato FASTA.
 -**ref_genome.fna.fai**: Archivo indexado del genoma de referencia con 5 columna que corresponden a columnas **1= contig, 2 = tamaño, 3= ubicación, 4= basesPerLine y 5= bytesPerLine**.

Puedes explorar los archivos **“ref_genome.fna”** y **“ref_genome.fna.bai”** con los comandos **less, head, tail**  
```
less ref_genome.fna
less ref_genome.fna.fai

head -n 20 ref_genome.fna
head -n 30 ref_genome.fna.fai 

tail -n 20 ref_genome.fna
tail -n 20 ref_genome.fna.fai
```

El genoma de salmon presenta 29 cromosomas los cuales estan caracterizados, sin embargo posee un numero considerable de contigs sin mapear. Estos se identifican porque comienzan con NW, como el muestra el siguiente ejemplo **NW_012341867.1**.Puedes investigar los cromosomas del salmón con los siguientes comandos:   
```
grep 'NC_' ref_genome.fna
grep -c 'NC_' ref_genome.fna

grep 'NC_' ref_genome.fna.fai
grep -c 'NC_' ref_genome.fna.fai
```    
Tambien, puedes buscar los contings no mapeados, de la especie de estudio, con los siguientes comandos:
```
grep -c 'NW_' ref_genome.fna
grep -c 'NW_' ref_genome.fna.fai
```
### Llamado de variantes   
Para realizar el llamado de variantes primero debes obtener un archivo que representa un **“diccionario de referencias”** del genoma de referencia, en este caso del salmón. Utiliza el siguiente comando:

`java -jar picard.jar CreateSequenceDictionary R=ref_genome.fna O=ref_genome.dict`  
Este comando te entregará un archivo con extensión .dict. `ref_genome.dict`   
Explora este archivo con **less o head**.
También puedes añadir grupos de reads al archivo sort bam con el siguiente comando: 

`java -jar picard.jar AddOrReplaceReadGroups I=SRR2006763.sort.bam O=SSRR2006763_sorted_RG.bam ID=sample LB=Paired-end PL=Illumina PU=Unknown SM=sample`  

Para indexar el archivo generado con Read groups utiliza el comando: 

`samtools index SSRR2006763_sorted_RG.bam`

Finalmente, para el llamado de variantes debes ejecutar el comando **HaplotypeCaller** del sofatware **GATK**, este proceso demora aproximadamente una hora, ten paciencia... Una vez terminada la ejecución, lista el directorio con **ls** y verifica que el archivo de salida es el siguiente: **raw_variants.vcf**

`gatk HaplotypeCaller -R ref_genome.fna -I SRR2006763_sorted_RG.bam -O raw_variants.vcf`  

Observaciones: 
Puedes explorar el archivo llamado de variantes con los comandos **less, head, tail**
```
less raw_variants.vcf

head -n 30 raw_variants.vcf

tail -n 30 raw_variants.vcf
```
**Comandos de utilidad**  
Usa grep para contar el numero de lineas en el “vcf header”.  
`grep "^#" -c  raw_variants.vcf`

Ahora, usa grep para contar el número de variantes detectadas   
`grep "^#" -c -v raw_variants.vcf`   

Listar el nombre de esta muestra usando el siguiente comando    
`grep "^#CHROM" raw_variants.vcf | cut -f 10-`  

**¿Cómo entender la codificación de los archivos vcf?**

La información de los archivos se encuentra codificada, sin embargo esta puede ser interpretada haciendo uso de diferentes comandos.  

Para imprimir el nombre de las columnas del llamado de variantes podemos ejecutar el siguiente comando:  
`grep "^#CHROM" raw_variants.vcf`

Para listar las 10 primeras variantes el siguiente:
`grep "^#" -v raw_variants.vcf | head`  

Por último, podemos ejecutarcomandos para comprender la codificación de la columna INFO y FORMAT que contine la información del genotipo de la muestra para las primeras 10 variantes   
```
grep "##INFO" raw_variants.vcf

grep "##FORMAT" raw_variants.vcf
```
Como mencionamos anteriormente, la calidad de las secuencias puede ser variada, una forma de filtrar la información es con el número de **reads** sobre los cuales se han identificado las variantes. En terminos sensillos, una mayor calidad estará dada por un alto número de reads.
Puedes usar el siguiente comando para extraer las variantes con calidad mayor a 100.   
```
grep -v "#" raw_variants.vcf | awk '{if ($6 > 100 ) print }' > hq_variant.txt

grep "NC_" -c -v hq_variant.txt
grep "NW_" -c -v hq_variant.txt
```
### Análisis de variantes con vcftools
vcftools es una herramienta de análisis de archivos vcf.

Si buscas contar individuos y variantes de un archivo .vcf utiliza el siguiente comando:   
`vcftools --vcf raw_variants.vcf`

Si buscas determinar las frecuencias de todos los alelos, utiliza el siguiente comando:   
`vcftools --vcf raw_variants.vcf --freq -c > hq.freqs.txt`

Si quieres filtrar algún cromosoma en particular incluye el argumento **–chr**, o podemos 
Si quieres excluir un genoma, como por ejemplo el mitocondrial utiliza **–not-chr**  
_Ejemplos_    
```
vcftools --vcf raw_variants.vcf --chr NC_027300.1
vcftools --vcf raw_variants.vcf --freq -c --chr NC_027300.1

vcftools --vcf raw_variants.vcf –not-chr NC_001960.1
vcftools --vcf raw_variants.vcf --freq -c --not-chr NC_001960.1
```
Por último, si buscas extraer solo los **INDELS** utiliza el argumento **–keep-only-indel** o solo los SNP **–remove-indels**
_Ejemplo_   
```
vcftools --vcf raw_variants.vcf --freq -c --chr NC_027300.1 --keep-only-indel
vcftools --vcf raw_variants.vcf --freq -c --chr NC_027300.1 --remove-indel
```
### Visualización de variantes con IGV
Para realizar la visualización de variantes en IGV primero debes descargar el archivo **raw_variants.vcf** generado en el directorio **“variant_call”** para esto utiliza **WinSCP** y obtendras lo que se ve en la siguiente imagen. 

![IGV](https://user-images.githubusercontent.com/84527684/124524519-67870900-ddc9-11eb-8f9d-e0593e2740a1.png)

### Videos llamado de variantes 
En los siguientes videos se muestra el desarrollo de toda la actividad **llamado de variantes** realizada en **PuTTY** 

[![Watch the video](https://i9.ytimg.com/vi/TRrnx3fc4Kw/mq2.jpg?sqp=CKyCmYcG&rs=AOn4CLDDw57_E01DEuQSTww8-oIIxZxx5w)](https://youtu.be/TRrnx3fc4Kw)
[![Watch the video](https://i9.ytimg.com/vi/eWTzYuQUwPg/mq2.jpg?sqp=CNiEmYcG&rs=AOn4CLBt1O4KBYb0X1UzISdOszoMgPel2A)](https://youtu.be/eWTzYuQUwPg)

## _Genómica poblacional_

Conectate al servidor **POMEO** y configura el canal bioconda con los siguientes comandos:    
`conda config --add channels bioconda`  

`conda install -c bioconda plink`  

`conda install -c bioconda admixture`  
Con estos comandos instalas los software plink y admixture. Posteriormente debes ingresar directorio de trabajo **population** el cual ya esta instalado en tu directorio personal, utiliza los siguientes comandos para ingresar al directorio y listar los archivos:    
`cd population`  

`ls -l -h`

En el directorio **population** tienes los archivos necesarios para realizar los análisis poblacionales, haciendo uso de los software instalados anteriormente.

| EU_OC_US.vcf | Archivo vcf que contiene las muestras provenientes de tres poblaciones de salmon del Atlantico (Salmo salar) |
|  :---  |  :---  |
| Europa | 2_WG0341511-DNA_A02_5408, 3_WG0341511-DNA_A03_5416, 5_WG0341511-DNA_A05_5450 |
| Oceania | FR07958834, FR07958842, FR07958850 |
| Norteamerica | GNB12-1, GNB12-10, GNB12-11 |

Adicionalmente, contiene un **Script** para realizar los diagramas de admixture.

**Admixture_plot.R:** Contiene el codigo para crear una funcion llamada admixtureplot (), utilizada para realizar los diagramas de admixture.

### Análisis de diversidad  
Estima el número de sitios heterocigotos para cada individuo y la heterocigosidad observada y esperada para cada marcador

```
vcftools --vcf EU_OC_US.vcf --het --out EU_OC_US

vcftools --vcf EU_OC_US.vcf --hardy --out EU_OC_US
```
Puedes utilizar **ls -l, head, cat, less, etc.**, segun corresponda, para explorar los archivos de salida de cada uno de estos analisis.

Para calcular la diversidad en una ventana no superpuesta de 200 kb para cada individuo de las tres poblaciones, utiliando los siguientes comandos segun corresponda la población. 

**Europa**  
```
vcftools --vcf EU_OC_US.vcf --window-pi 200000 --indv 2_WG0341511-DNA_A02_5408 --indv 3_WG0341511-DNA_A03_5416 --indv 5_WG0341511-DNA_A05_5450 --out EU
```
**Oceania**  
```
vcftools --vcf EU_OC_US.vcf --window-pi 200000 --indv FR07958834 --indv FR07958842 --indv FR07958850 --out OC
```
**Norteamerica**  
```
vcftools --vcf EU_OC_US.vcf --window-pi 200000 --indv GNB12-1 --indv GNB12-10 --indv GNB12-11 --out US
```

Para calcular el desequilibrio de ligamiento (LD) para las tres poblaciones, puedes hacer uso de los siguientes comandos: 

**Europa**  
```
vcftools --vcf EU_OC_US.vcf --geno-r2 --chr 1 --ld-window-bp 100000 --min-r2 0.001 --indv 2_WG0341511-DNA_A02_5408 --indv 3_WG0341511-DNA_A03_5416 --indv 5_WG0341511-DNA_A05_5450 --out EU
```
**Oceania**  
```
vcftools --vcf EU_OC_US.vcf --geno-r2 --chr 1 --ld-window-bp 100000 --min-r2 0.001 --indv FR07958834 --indv FR07958842 --indv FR07958850 --out OC
```
**Norteamerica**  
```
vcftools --vcf EU_OC_US.vcf --geno-r2 --chr 1 --ld-window-bp 100000 --min-r2 0.001 --indv GNB12-1 --indv GNB12-10 --indv GNB12-11 --out US
```
### Análisis de estructura poblacional
Primero, debes generar el archivo de entrada en formato **plink**  
`plink --vcf EU_OC_US.vcf --recode --out EU_OC_US --double-id --allow-extra-chr --chr-set 29`

Segundo, debes generar el archivo de entrada en formato **plink binario**  
`plink --file EU_OC_US --make-bed --out EU_OC_US --allow-extra-chr --chr-set 29`

Tercero, debes filtrar en base al equilibrio de **Hardy-Weinberg y frecuencia del alelo menor**   
`plink --bfile EU_OC_US --hwe 0.01 --maf 0.05 --make-bed --out EU_OC_US.Filtered --allow-extra-chr --chr-set 29`

Cuarto, debes filtrar y excluir marcadores por **desequilibrio de ligamiento**   
```
plink --bfile EU_OC_US.Filtered --indep-pairwise 50 10 0.05 --make-bed --out EU_OC_US.Filtered --allow-extra-chr --chr-set 29

plink --bfile EU_OC_US.Filtered --extract EU_OC_US.Filtered.prune.in --make-bed --out EU_OC_US.FilteredPruned --allow-extra-chr --chr-set 29
```
Quinto, debes filtrar para **remover individuos relacionados**   
```
plink --bfile EU_OC_US.FilteredPruned --rel-cutoff 0.4 --out EU_OC_US.FilteredPruned --allow-extra-chr --chr-set 29

plink --bfile EU_OC_US.FilteredPruned --keep EU_OC_US.FilteredPruned.rel.id --make-bed --out EU_OC_US.FilteredPrunedUnrel --allow-extra-chr --chr-set 29
```
sexto, análisis de **PCA** (Principal Component Analysis)

`plink --bfile EU_OC_US.FilteredPrunedUnrel --pca 4 --out EU_OC_US.FilteredPrunedUnrel --allow-extra-chr --chr-set 29`   

### Análisis de admixture  

Primero, debes seleccionar al azar del 1% de los marcadores   
`plink --bfile EU_OC_US.FilteredPrunedUnrel --thin 0.01 --make-bed --out EU_OC_US.Thinned --allow-extra-chr --chr-set 29`

Segundo, debes realizar un análisis de ancestria de 2 a 6 poblaciones
```
for K in `seq 2 6`;
do
admixture EU_OC_US.Thinned.bed $K;
done
```    
**OBS:** ADMIXTURE genera 2 archivos: *.Q* que contiene asignaciones de grupos para cada individuo y *.P* que contiene para cada **SNP** las frecuencias alélicas de la población

### Visualización con RStudio Cloud  

**Heterogocidad individual**   
Puedes observar los gráficos de heterogocidad individual, diversidad de nucleotidos y LD haciendo uso de **_RStudio Cloud_**, a continuación encuentras los codigos y los resultados de su ejecución en RStudio. 

```
het <- read_delim("EU_OC_US.het",delim = "\t")
het
```
![tabla 1](https://user-images.githubusercontent.com/84527684/124837682-523de600-df53-11eb-8977-de6807896efa.png)

```
het$Heterozygosity <- 1-(het$`O(HOM)`/het$N_SITES) 
het$Population <- c(rep("EU",3),rep("OC",3),rep("US",3))
A <- ggplot(het,aes(x = Population, y = Heterozygosity, col = Population)) +
  geom_point()+
  theme_bw()+
  theme(legend.position = "none")+
  xlab("")
A
```
![img 1](https://user-images.githubusercontent.com/84527684/124838042-08a1cb00-df54-11eb-9607-9c92abe60fbe.png)

**Diversidad de nucleotidos**
```
pi_EU <- read_delim("EU.windowed.pi",delim = "\t")
pi_EU
```
![tabla 2](https://user-images.githubusercontent.com/84527684/124838340-9d0c2d80-df54-11eb-9cef-36919cc90bf5.png)

```
pi_OC <- read_delim("OC.windowed.pi",delim = "\t")
pi_OC
```
![tabla 3](https://user-images.githubusercontent.com/84527684/124838469-eceaf480-df54-11eb-9964-cc2060cc7cd0.png)

```
pi_US <- read_delim("US.windowed.pi",delim = "\t")
pi_US
```
![tabla 4](https://user-images.githubusercontent.com/84527684/124838485-f4120280-df54-11eb-9dd1-b0184b579b27.png)

```
pi_all <- bind_rows(pi_EU,pi_OC,pi_US)
pi_all$Population<-c(rep("EU",nrow(pi_EU)),rep("OC",nrow(pi_OC)),rep("US",nrow(pi_US)))

B <- ggplot(pi_all,aes(x = Population, y = PI, col = Population))+
      geom_jitter(col = "grey",width = 0.1)+ 
      geom_boxplot(notch = T, alpha = 0,outlier.shape = NA)+ 
      theme_bw()+
      theme(legend.position = "none")+
      xlab("")+
      ylab(expression(pi))
B
```
![img 2](https://user-images.githubusercontent.com/84527684/124838547-1441c180-df55-11eb-9bb4-0334d897cb38.png)

**Desequilibrio de ligamiento**   
```
ld <- read_csv("EU_OC_US.windowed.ld.csv")
ld
```
![tabla 5](https://user-images.githubusercontent.com/84527684/124838657-4bb06e00-df55-11eb-90bf-00f6cb0bc2ac.png)

```
C <- ggplot(ld,aes(x = dist/1000, y = meanR2, col = pop)) +
      geom_point()+
      geom_line()+
      theme_bw()+
      xlab("Distance (kb)")+
      ylab(expression(R^2))+
      scale_colour_discrete(name = "Population")
C
```
![img 3](https://user-images.githubusercontent.com/84527684/124838723-6e428700-df55-11eb-8ce3-bbb7fb43d77c.png)

**Gráfico de paneles múltiples**  

![img 4](https://user-images.githubusercontent.com/84527684/124838791-903c0980-df55-11eb-8284-2782ff8ce5ba.png)

**Gráficos de PCA**  
```
pca1 <- read_delim("EU_OC_US.FilteredPrunedUnrel.eigenvec", delim = " ",col_names = F)
    head(pca1)
```
![tabla 6 1](https://user-images.githubusercontent.com/84527684/124839052-0b052480-df56-11eb-8f72-04e6077e7f2b.png)
![tabla 6 2](https://user-images.githubusercontent.com/84527684/124839056-0d677e80-df56-11eb-952c-6f74d300d359.png)

```
colnames(pca1) <- c("Population","Individual",paste0("PC",c(1:4)))
    head(pca1)
```
![tabla 7 1](https://user-images.githubusercontent.com/84527684/124839136-3982ff80-df56-11eb-8104-b0597d156bb7.png)
![tabla 7 2](https://user-images.githubusercontent.com/84527684/124839143-3c7df000-df56-11eb-9fe8-10debd99d8e7.png)

```
mycols <- c("#a6cee3",
              "#1f78b4",
              "#b2df8a",
              "#33a02c",
              "#fb9a99",
              "#e31a1c",
              "#fdbf6f",
              "#ff7f00",
              "#cab2d6")

    D <- ggplot(pca1,aes(x = PC1,y = PC2,col = Population))+
      geom_point()+
      theme_bw()+
      scale_colour_manual(values = mycols)
    D
```
![img 5](https://user-images.githubusercontent.com/84527684/124839200-591a2800-df56-11eb-89d2-df7f2886e914.png)

**Gráficos de ADMIXTURE para 2, 4 y 6 poblaciones**  
```
library(readr)
source("Admixture_plot.R")

    pops <- read_delim("EU_OC_US.Thinned.fam", delim = " ",col_names = F)

    K2 <- read_delim("EU_OC_US.Thinned.2.Q", delim = " ",col_names = F)
    E <- admixtureplot(str_out = K2,k = 2, pops = pops, xaxis = F)
    E
```
![img 6](https://user-images.githubusercontent.com/84527684/124839418-c0d07300-df56-11eb-82bd-747029e1b3df.png)

```
 K4 <- read_delim("EU_OC_US.Thinned.4.Q", delim = " ", col_names = F)
 G <- admixtureplot(str_out = K4,k = 4, pops = pops, xaxis = F)
 G
```   
![img 7](https://user-images.githubusercontent.com/84527684/124839505-e8bfd680-df56-11eb-8021-6f5c93b631e7.png)

```
K6 <- read_delim("EU_OC_US.Thinned.6.Q", delim = " ", col_names = F)
H <- admixtureplot(str_out = K6,k = 6, pops = pops, xaxis = T)
H
```
![img 8](https://user-images.githubusercontent.com/84527684/124839595-10af3a00-df57-11eb-9a04-0dda318772b7.png)

### Videos Genómica poblacional
En los siguientes videos se muestra el desarrollo de toda la actividad **Genómica poblacional y ancestria** realizada en **PuTTY** y en **RStudio Cloud**   

[![Watch the video](https://i9.ytimg.com/vi/mxEkN1_237U/mq2.jpg?sqp=CICAmYcG&rs=AOn4CLCuqPsrTws3mh7cmar6mcvAjWLXZg)](https://youtu.be/mxEkN1_237U)
[![Watch the video](https://i9.ytimg.com/vi/esVTvub_lo4/mq3.jpg?sqp=CICAmYcG&rs=AOn4CLCxUl03tnPuNLXVx7qeXBaUg3XRXg)](https://youtu.be/esVTvub_lo4)

## _Introducción a los estudios de asociación genómica_

En esta prectica podrás realizar un análisis de asociación genómico usando datos simulados de **genotipos** y **fenotipos**.
Para llevar a cabo la simulación de datos, utilizarás los sigientes datos

**Genotipos geno** = Set de datos de genotipo con 200 animales endogámicos con 1000 SNP distribuidos en 10 cromosomas.

**geno_inbred** = Set de datos de genotipo con 200 animales no endogámicos con 1000 SNP distribuidos en 10 cromosomas.

**Fenotipos pheno** = Set de datos con variable cuantitativa continua y, con promedio 0 y varianza 5.

**QTL y heredabilidad del rasgo pheno 1 QTLs**: 10, 1 por cromosoma.

**Heredabilidad** = 0.5

 A continuación puedes observar el informe realizado en **RStudio Cloud** de la actividad _**Introducción a los estudios de asociación genómica**_

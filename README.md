# _Elaboracion de un proyecto de genómica aplicada_   

### _**Autor**_  
_Cristal Muñoz Rojas_  
- Chilena 
- Ingeniero en Biotecnología  

## [_Especie de importancia económica en producción animal_   ](##Especie-de-importancia-económica-en-producción-animal)

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

- **PuTTY**  
Ingresar a www.putty.org y descargar PuTTY.   

![img](https://github.com/GenomicsEducation/Cristal04/blob/main/Capturas%20pantalla%20actividad%209/pagina%20putty.png) 

Posteriormente ejecuta la instalacion en tu PC.  

![img](https://github.com/GenomicsEducation/Cristal04/blob/main/Capturas%20pantalla%20actividad%209/instalaci%C3%B3n%20putty%201.png)

- **WinSCP**  

Ingresar al siguiente link https://winscp.net/eng/download.php  y hacer click en **DOWNLOAD WINSCP 5.17.10 (10.6 MB)** y luego ejecutar la instalación en tu PC.
 
 ![img](https://github.com/GenomicsEducation/Cristal04/blob/main/Capturas%20pantalla%20actividad%209/Instalaci%C3%B3n%20WinSCP.png) 

### **Acceso remoto a servidor POMEO**

- **SSH**      

Ingresar el Host Name **200.54.220.141**, seleccionar **POMEO** y hacer click en **DATA** Ingresar ususario y clave como se muesta en las imagenes: 

![img](https://github.com/GenomicsEducation/Cristal04/blob/main/Capturas%20pantalla%20actividad%209/Config%20pomeo.png)     

![img](https://github.com/GenomicsEducation/Cristal04/blob/main/Capturas%20pantalla%20actividad%209/Config%20pomeo%20usuario.png)  

![img](https://github.com/GenomicsEducation/Cristal04/blob/main/Capturas%20pantalla%20actividad%209/Config%20pomeo%20password.png)  


### **Instalación y configuración CONDA, NANO Y SRA TOOLKIT**  

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

```
# !/bin/bash    
# Mi primer script    
echo Curso de Genómica  
```

Ejecute el script desde la terminal usando,    

`**bash script1.sh**`

![img](https://github.com/GenomicsEducation/Cristal04/blob/main/Capturas%20pantalla%20actividad%209/Instalacion%20nano.png)   

- **SRA Toolkit** 
   
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

Comandos básicos para trabajar en proyectos de genómica. 

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

**Atajos del teclado para trabajar más eficientemente en la terminal**     
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

## _Introducción al análisis de secuencias NGS_

### Conección a servidor Pomeo, configuración de bioconda e instalación de software  

Ingreasar a **PuTTY**, el cual se encuentra previamente instalado en tu PC, e iniciar conección remota en **POMEO** (##**Acceso-remoto-a-servidor-POMEO**). Una vez iniciada tu sesión, **configurar bioconda e instalar el software** con los siguientes comandos:  
`conda config --add channels bioconda`  

`conda install -c bioconda fastqc`  

`conda install -c bioconda trimmomatic`  

![img]()   
 
Usando el comando **mkdir** creas un directorio llamado **SRA_samples**    
`mkdir SRA_samples`  

Luego accedes a este directorio con el comando:   
`cd SRA_samples`  

![img]()  
![img]()  

### Descarga de biomuestra desde SRA

Trabajar con la biomuestra **SRR2006763** proveniente de la cepa Aquagen de _Salmo salar_. Se obtendrán los dos archivos **fastq**, los datos provienen de una secuenciación pair-end.

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
**Observación: Mantener las cuatro lineas al ingresar el script en nano**
 
Corre el script mediante el siguiente comando:  
`bash download.sh`  
 
Cuando finalice la ejecución, lista la carpeta **SRA_samples** para comprobar que se creó el directorio de la secuencia descargada con el nombre **SRR2006763**, corroborar que dentro de este directorio se generó el archivo **SRR2006763.sra**, utiliza el siguiente comando:  
`ls -l -h `  

![img]()  

Luego debes acceder a la carpeta **SRR2006763** y crear el siguiente script (**nano fdump.sh**) que permitirá obtener los archivos fastq de la muestra **SRR2006763**.  
```
#!/bin/bash      
#SBATCH - J fdump_usuario      
/home2/usuario/sratoolkit.2.11.0-centos_linux64/bin/fasterq-dump /home2/usuario/SRA_samples/SRR2006763/*.sra -O /home2/usuario/SRA_samples/SRR2006763/   
```
Recuerda que debes cambiar **_usuario_** por **tu_nombre_de_usuario**    

 ![img]()  
 ![img]()  
 
 Finalmente, corre el script mediante el comando **bash fdump.sh**. Se extraerán los archivos **fastq** y se indicará el total de **read leidos y escritos**.  
 `bash fdump.sh`  
 
 ![img]() 
 
### Comprobación de integridad de archivos  

**md5sum** es un algoritmo que se utiliza para evitar daños que pueden generarse durante el proceso de descarga de la biomuestra desde SRA.  

Busca el código **Md5** de las muestras y direcciona la información a un archivo **md5_samples**, con el siguiente comando:    
`md5sum SRR2006763_1.fastq SRR2006763_2.fastq > md5_samples`    
 
Verifica la salida generada con el comando; los valores de **md5** de las muestras se pueden observar en la imagen:   
`cat md5_samples`  
 
 ![img]()  
 
Comprueba la integridad de ambas biomuestras usando **md5sum** o similar. El resultado se puede observar en la imagen.  
`md5sum -c md5_samples`  
 
 ![img]()  
 
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

Para acceder a los archivos se puede utilizar **Rstudio server** instalado en **POMEO**, como se señala a continuación: 

- Ingresa al siguiente link http://200.54.220.141:8787/ (verifica que este conectado al puerto 8787).
- Utiliza tus datos de usuario y clave de **POMEO**   
- Haz click en la carpeta **SRA_SAMPLES**
- Haz click en la carpeta **SRR2006763** 
- Listo! ya encontraste tus archivos **HTML y ZIP**  

### Filtrado y poda  


## _Introducción al análisis de secuencias NGS - Alineamiento_  

### Conectar a servidor Pomeo  

Ingresa al servidor **POMEO** como se especifica en la sección **Acceso remoto a servidor POMEO**    

![img]() 

### Configurar bioconda e instalar programas para análisis  

*Primero*: Configurar el canal **bioconda** ejecutando el siguiente comando:   
`conda config --add channels bioconda`   

![img]() 

*Segundo*: Instala los software **bwa**  
`conda install -c bioconda bwa`  

![img]() 

*Tercero*: Instalar **samtools** ejecutanda cada uno de los comandos que se entregan a continuación:  
`conda install -c bioconda samtools`  

`conda config --add channels bioconda`  

`conda config --add channels conda-forge`  

`conda install samtools==1.11`  

![img]()   

### Verificar directorios de instalación  

Si deseas, puedes revisar la ruta de instalación de un programa determinado, para esto se utiliza el comando **“whereis”** en la terminal, junto a el programa del cual quieres obtener la ruta.  
*Ejemplo*    
`whereis sratoolkit`  

`whereis samtools`  

`whereis bwa`  

![img]()   

La salida de cada comando te indicará la ruta de instalación.    
`/home2/usuario/miniconda3/bin/bwa`  

![img]()  

### Creación de directorio de trabajo y descarga de datos para alineamiento  

Primero consideraremos que las secuencias fastq originales obtenidas tiene muy buena calidad, por lo tanto trabajaremos directamente en ellas. Para llevar a cabo este trabajo, debemos trasladar los archivos a una nueva carpeta que denominaremos **"alineamiento"** y que sera creada en tu usuario de **home2** segun el siguiente comando:  
`mkdir alineamiento`  

Una vez creada la carpeta **alineamiento** debemos ingresar a ella y transferir los archivos de clase anterior, haciendo uso de los siguientes comandos en la terminal:  
`mv /home2/usuario/SRA_samples/SRR2006763/SRR2006763_1.fastq /home2/usuario/alineamiento/`  

`mv /home2/usuario/SRA_samples/SRR2006763/SRR2006763_2.fastq /home2/usuario/alineamiento/`  

Lista tu carpeta de alineamiento para verificar que tienes lo necesario para el alineamiento, hasta ahora deben estar tus dos secuencias **“SRR2006763_1.fastq”** y **“SRR2006763_2.fastq”**  
`ls`

Para continuar con la descarga de datos, haremos uso de el genoma de referencia de la **mitocondria de _Salmo salar_**. Realizaremos la descarga en la misma carpeta de **alineamiento**, para esto debes ingresar al siguiente link en tu navegador:   
https://www.ncbi.nlm.nih.gov/genome/?term=salmo+salar; en este link encontraras el genoma de la mitocondria de _Salmo salar_, en una tabla que lista el genoma de referencia de esta especie donde se incluyen todos los cromosomas y el genoma de la mitocondria, buscarás "Name: **MT**" y haz clic en "RefSeq: **NC_001960.1**", puedes guiarte con las imagenes que estan a continuación:


![img]()    
![img]()  

Una vez que ingresaste al genoma, debes dar clic en la opción **FASTA** localizada bajo el título e identificador RefSeq de la referencia y enviar la secuencia FASTA del genoma mitocondrial a un archivo, como se observa en la imagen.

![img]()  

Dirigete a la carpeta descargas de tu PC, encontrarás un archivo denominado **“sequence.fasta”**, cambia el nombre del archivo por **“mt.fasta”** y súbelo a **POMEO**.  
Para llevar a cabo esta tarea, puedes utilizar **WINSCP**, para hacer uso de este software se debe realizar primero la tarea **"Intalación y configuración de Software para acceso remoto y transferencia de archivos"** o hacer la descarga e instalacion con el siguiente link:  https://winscp.net/eng/download.php
 
Una instalado **WINSCP** debes iniciar sesión, con tus datos de usuario y clave de **POMEO**, guarda tus datos y conectarte como se indica en la siguiente imagen:

![img]()  
![img]()  
![img]()  

Finalmente, encontrarás la interfaz de tu servidor con las carpetas que tienes creadas, aquí ingresarás en tu carpeta de alineamiento y arrastrarás el archivo descagado del genoma mitocondrial a la misma.

Cuando termines lo anterior puedes ingresar a **POMEO**, listar tu carpeta de alineamiento con **ls** y verás tu archivo **“mt.fasta”** junto con tus secuencias fastq.  

### Indexación del genoma de referencia  

Ya incluiste a tu carpeta de **alineamiento** todos los archivos descritos en pasos anteriores, por lo tanto, podemos comenzar con la primera etapa del alineamiento, que corresponde a la indexación del genoma de referencia con **bwa** usando el siguiente comando:  
`bwa index mt.fasta`  

La salida del comando dará como resultado **5 archivos** con extensiones **“amb”,“ann”,“bwt”,“pac” y “sa”**  

![img]()

### Alineamiento  

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

![img]()  

Ejecuta tu script con bash  
`bash aln_mt.sh`  

![img]() 

Ahora que ya tienes tus archivos **SAM/BAM** puedes observar tu archivo sam con el comando **less** de linux   
`less SRR2006763.sam` 

![img]() 
![img]() 

También puedes realizar un análisis estadístico estandar con los siguientes comandos:  
`samtools flagstat SRR2006763.bam > muestra_stat.txt`  



























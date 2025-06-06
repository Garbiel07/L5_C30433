#Para construir el programa, se debe crear un directorio raíz llamado "proyecto"
donde se incluyen los archivos del directorio src así como los makefiles (Makefile, meson.build, CMakelists.txt).
Para importar las librerías cJSON se utiliza sudo apt get install sudo apt install libcjson-dev
Sin embargo, esto solo funciona para construir los proyectos de con make y cmake. Para meson
se requiere instalar la librería cJSON directamente dentro de la raíz del proyecto clonando el repositorio.
De otro modo no logra encontrar los archivos cJSON.c y cJSON.h. Al menos estos dos deben estar presentes
dentro del directorio proyecto para que funcione. 

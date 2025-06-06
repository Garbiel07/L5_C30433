# Instrucciones generales
Para construir el programa, se debe crear un directorio raíz llamado "proyecto"
donde se incluyen los archivos del directorio src así como los makefiles (Makefile, meson.build, CMakelists.txt). Para importar las librerías cJSON se utiliza sudo apt get install sudo apt install libcjson-dev. Sin embargo, esto solo funciona para construir los proyectos de con make y cmake. Para meson se requiere instalar la librería cJSON directamente dentro de la raíz del proyecto clonando el repositorio. De otro modo a la hora de compilar no logra encontrar los archivos cJSON.c y cJSON.h.

#Make 
Para make se necesita correr el comando make en la raíz del proyecto

#Cmake
Para cmake se debe correr el comando cmake .. dentro del directorio build

#Meson
Para meson se deben correr las siguientes lineas en la raíz del proyecto
meson setup build
meson compile -C build





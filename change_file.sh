#! /bin/bash
clear
echo -e "\n\e[36mModificador de permisos"

echo -e "\e[31mIngrese la ruta del archivo o si ya esta en la carpeta, ingrese el nombre del archivo\n \e[0m" 
read -e ROUTE
echo -e "
Privilegios Actuales"
ls -la $ROUTE

echo ""
echo -e "\e[31m Escriba privilegios:
r Lectura
w Escritura
x Ejecucion

\e[36mejemplo rx (Permisos para lectura y ejecucion unicamente)"

echo -e "\n Permisos Owner\e[0m"
read OWNER
#echo $OWNER
chmod u=$OWNER $ROUTE

echo -e "\e[31m \nPermisos Group \e[0m"
read GROUP
chmod g=$GROUP $ROUTE

echo -e "\n\e[31mPermisos Genericos\e[0m"
read GENERIC
chmod o=$GENERIC $ROUTE

echo -e "\n
\e[32mListo... Privilegios modificados"
ls -la $ROUTE
echo -e "\n\n\n"

#! /bin/bash

echo -e "Listado de Procesos"

ps -ad | more

echo -e "\n\e[31mEscriba el ID del proceso que desea detener\e[36m"

read  KILLPROCESS
#echo "$KILLPROCESS"
MI_VARIABLE=$(ps -ad | grep $KILLPROCESS)

#echo $MI_VARIABLE
if (whiptail --title "Eliminador de Procesos" --yesno "Seguro que desea eliminar el proceso $MI_VARIABLE?" 7 80)then
	echo -e "\e[32mProceso $PROCESS eliminado"
	kill -9 $KILLPROCESS
else
	echo -e "\e[35mNo se elimino ningun processo"
fi

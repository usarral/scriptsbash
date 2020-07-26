#!/bin/bash
#======================================================================================================================================
#Funciones
pause(){
    read -p "Pulsa [Enter] para continuar..." variablequenovalepana;
}


menu(){
    clear;
    echo "MENU";
    echo "1) Listar archivos";
    echo "2) Muestra fecha del sistema";
    echo "3) Salir";
}


leerOpcion(){
    #Defino la variable "opcion " como local solo para dentro de la funicion
    local opcion;
    #Equivalencia a pausa en set -p
        read -p "Elige una opcion [1 - 3]" opcion;

#Detecta que opcion eliges y actua en consecuencia.
        case $opcion in 
        1) listararchivos ;;
        2) fechaSistema ;;
        3) exit 0 ;;
        *) echo "Has pulsado cualquier otra cosa" ;;
        esac                                                                                #cierra case
}

listararchivos(){
    ls -la;
}
fechaSistema(){
    date;
}

#======================================================================================================================================
#PROGRAMA
while true #crea un bucle infinito
do
#comandos dentro del bule infinito
    menu
    leerOpcion
    pause
done
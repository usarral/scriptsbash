#!/bin/bash
#======================================================================================================================================
#Funciones
menu1(){
    clear;
    echo "MENU";
    echo "1) Solicitar fichero";
    echo "2) Salir";
}


leerOpcion1(){
    #Defino la variable "opcion " como local solo para dentro de la funicion
    local opcion;
    #Equivalencia a pausa en set -p
        read -p "Elige una opcion [1 - 2]" opcion;

#Detecta que opcion eliges y actua en consecuencia.
        case $opcion in 
        1) elecfichero ;;
        2) exit 0 ;;
        *) echo "Has pulsado cualquier otra cosa" ;;
        esac                                                                                #cierra case
}
elecfichero(){
    read -p "Nombre del fichero: " fichero;
}
menu2(){
    clear;
    echo "MENU 2";
    echo "1) Mostrar contenido del fichero poco a poco";
    echo "2) Mostrar contenido del fichero de golpe";
    echo "3) Ver permisos del fichero";
    echo "4) Asignar permiso de escritura al fichero";
    echo "5) Asignar permiso de lectura al fichero";
    echo "6) Asignar permiso de ejecución al fichero";
    echo "7) Mostrar últimas líneas del fichero";
    echo "8) Mostrar las primeras lineas del fichero";
    echo "9) Salir al otro menú";
    leerOpcion2

}

leerOpcion2(){
    local opcion2;

    read -p "Elige una opcion [1 - 9]"
    case $opcion2 in 
        1) less $fichero
        2) more $fichero
        3) ls -la $fichero
        4)chmod +w $fichero
        5)chmod +r $fichero
        6)chmod +x $fichero
        7)tail $fichero
        8)head $fichero
        9)menu1
        *) echo "Has pulsado cualquier otra cosa" ;;
        esac
}
#======================================================================================================================================
#PROGRAMA
while true #crea un bucle infinito
do
#comandos dentro del bule infinito
    menu1
    leerOpcion1
done
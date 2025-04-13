#!/bin/bash

#
echo "Ingrese Nombre y Apellido del usuario"
read NOMYAPE
echo "Ingrese el departamento al cual pertenece"
echo "1) Contabilidad"
echo "2) Finanzas"
echo "3) Tecnologia"
read DEPARTAMENTO

case $DEPARTAMENTO in
    1)
        GRUPO="Contabilidad"   
        ;;
    2)
        GRUPO="Finanzas"   
        ;;
    3)
        GRUPO="Tecnologia"  
         ;; 
        
    *)
    echo "El departamento no es correcto." ;;
esac
LOGIN=$NOMYAPE-$GRUPO
sudo useradd -g $GRUPO $LOGIN
#Generar y asignar la contraseña
PASSWORD=$(openssl rand -base64 8)
echo "$LOGIN:$PASSWORD" | sudo chpasswd
sudo passwd -e $LOGIN
#Mostrar la contraseña
echo "-----------------------------------------"
echo "Usuario creado: $LOGIN"
echo "Contraseña: $PASSWORD"
echo "-----------------------------------------"
echo "Al iniciar sesión por primera vez deberá cambiarla."

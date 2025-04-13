# Aplicación Scrip para generación de usuarios

## Objetivo
Desarrollar un pipeline declarativo en Jenkins que nos permite crear usuarios dentro 
de un sistema linux.

## Descripción
Al ejecutar el script deberá ingresar el nombre del usuario, luego deberá seleccionar el 
departamento al cual pertenece.
Automáticamente el script generará el usuario en el sistema y le asignará una contraseña 
temporal, que deberá cambiar al iniciar sesión por primera vez.
Al finalizar, el script le brindara el nombre de usuario y su contraseña asignada para que
pueda anotarlo.

## Requisitos
1) Los grupos a los que serán asignados deben estar previamente creados en el sistema.
2) Jenkins debe tener permiso "sudo".
3) Abre el archivo sudoers de forma segura: "sudo visudo".
4) Agregá una línea como esta al final: "jenkins ALL=(ALL) NOPASSWD: ALL".


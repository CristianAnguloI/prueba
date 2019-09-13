Pasos para crear la imagen y versionar el Dockerfile:

1. Se crea una rama alterna para versionar el Dockerfile y no hacerlo
directamente desde la rama master ($ git checkout -b ramadocker)
2. Se crea un archivo llamado Dockerfile ($ nano Dockerfile)
3. Escribir los pasos de nuestra imagen en el archivo Dockerfile 
4. Subir este cambio en el archivo a git:
4.1. $ git add Dockerfile
4.2. $ git commit -m "Modificando el archivo Dockerfile"
5. Generar la imagen docker ($ docker build -f servidorapache .)
6. Generar el contenedor a partir de la imagen propia (docker run 
--name apache -d -p 81:80 servidorapache)
7. Verificar que se creo correctamente ($ docker ps -a)
8. Hacer un push de los archivos generados ($ git push origin ramadocker)
9. Hacer merge para combinar las dos ramas ($ git merge ramadocker)


# sistema operativo
FROM ubuntu:16.04
LABEL author="@Miguel Amoros"
LABEL description="Ubuntu con Server Apache para Jenkins"
# actualizar e instalar paquetes 
RUN apt-get update -y
RUN apt-get install -y apache2 telnet
# crear directorio
RUN mkdir /opt/docker
# copiar los archivos en el directorio
COPY * /opt/docker/
# trabajar en ese directorio al entrar al container
WORKDIR /opt/docker
# escuchar por el puerto 80
EXPOSE 80
# como arrancar el container: lo ponemos detached con el httpd(apache)
CMD [ "/usr/sbin/apache2ctl", "-DFOREGROUND" ]

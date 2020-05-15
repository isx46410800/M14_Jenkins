# sistema operativo
FROM ubuntu:16.04
LABEL author="@Miguel Amoros"
LABEL description="Ubuntu para App Flask desplegado en Docker, Jenkins"
# actualizar e instalar paquetes
RUN apt-get update -y
RUN apt-get install -y python python-pip 
# crear directorio
RUN mkdir /opt/docker
# copiar ficheros en el directorio
COPY * /opt/docker/
# instalar los requisitos para la app
RUN pip install -r /opt/docker/requisitos.txt
# dar permisos al file main.py
RUN chmod +x /opt/docker/main.py
# directorio en el que trabajamos al entrar
WORKDIR /opt/docker
# escuchar por el puerto por defecto 5000
EXPOSE 5000
# como encender el container para dejar funcionando la app
ENTRYPOINT [ "/usr/bin/python" ]
CMD ["/opt/docker/main.py"]

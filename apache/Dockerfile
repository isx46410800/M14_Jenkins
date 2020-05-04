FROM ubuntu:16.04
LABEL author="@Miguel Amoros"
LABEL description="Server Apache para Jenkins"
RUN apt-get update -y
RUN apt-get install -y apache2 telnet
RUN mkdir /opt/docker
COPY * /opt/docker/
RUN chmod +x /opt/docker/startup.sh
WORKDIR /opt/docker
EXPOSE 80
CMD [ "/usr/sbin/apache2ctl", "-DFOREGROUND" ]

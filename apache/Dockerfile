FROM fedora:27
LABEL author="@Miguel Amoros"
LABEL description="Server Apache para Jenkins"
RUN dnf update -y
RUN dnf -y install httpd telnet vim tree 
RUN mkdir /opt/docker
COPY * /opt/docker/
RUN chmod +x /opt/docker/startup.sh
WORKDIR /opt/docker
EXPOSE 80
CMD [ "/opt/docker/startup.sh" ]

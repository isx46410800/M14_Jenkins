FROM fedora:27
LABEL author="@Miguel Amoros"
LABEL description="Fedora para App Flask, Jenkins"
RUN dnf install -y python python-pip 
RUN mkdir /opt/docker
COPY * /opt/docker/
RUN pip install -r /opt/docker/requisitos.txt
RUN chmod +x /opt/docker/main.py
WORKDIR /opt/docker
EXPOSE 5000
ENTRYPOINT [ "/usr/bin/python" ]
CMD ["/opt/docker/main.py"]

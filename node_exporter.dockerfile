FROM ubuntu

WORKDIR node

COPY node_exporter-1.2.2.linux-amd64.tar.gz .
RUN tar xvfz node_exporter-1.2.2.linux-amd64.tar.gz

WORKDIR node_exporter-1.2.2.linux-amd64

EXPOSE 9100

CMD ./node_exporter
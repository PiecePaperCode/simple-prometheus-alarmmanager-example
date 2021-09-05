FROM ubuntu

WORKDIR node

COPY alertmanager-0.23.0.linux-amd64.tar.gz .
RUN tar xvfz alertmanager-0.23.0.linux-amd64.tar.gz

WORKDIR alertmanager-0.23.0.linux-amd64

COPY alertmanager.yml .

EXPOSE 9093

CMD ./alertmanager --config.file=alertmanager.yml

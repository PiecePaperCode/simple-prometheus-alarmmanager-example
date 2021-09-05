FROM ubuntu

WORKDIR server

COPY prometheus-2.29.2.linux-amd64.tar.gz .
RUN tar xvfz prometheus-2.29.2.linux-amd64.tar.gz
WORKDIR prometheus-2.29.2.linux-amd64
COPY conf.yml .
COPY prometheus.rules.yml .

EXPOSE 9090

CMD ./prometheus --config.file=conf.yml

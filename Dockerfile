FROM registry.access.redhat.com/ubi8/ubi
MAINTAINER dr4mohamed
      
RUN yum install wget -y && yum clean all

RUN useradd --user-group --system --create-home --no-log-init eth
USER eth
WORKDIR /home/eth

RUN wget https://gethstore.blob.core.windows.net/builds/geth-linux-amd64-1.10.8-26675454.tar.gz

RUN tar xvf geth-linux-amd64-1.10.8-26675454.tar.gz
RUN mv geth-linux-amd64-1.10.8-26675454/geth .

RUN rm -rf geth-linux-amd64-1.10.8-26675454.tar.gz geth-linux-amd64-1.10.8-26675454
CMD ["cd /home/eth/&&./geth"]






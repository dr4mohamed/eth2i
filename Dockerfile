FROM registry.access.redhat.com/ubi8/ubi
MAINTAINER dr4mohamed
RUN yum install wget -y && yum clean all
RUN mkdir /blockchain && \
    chgrp -R 0 /blockchain && \
    chmod -R g+rwX /blockchain
WORKDIR /blockchain
ADD entrypoint.sh .
RUN chmod +x  entrypoint.sh
RUN wget https://gethstore.blob.core.windows.net/builds/geth-linux-amd64-1.10.8-26675454.tar.gz&&tar xvf geth-linux-amd64-1.10.8-26675454.tar.gz&&mv geth-linux-amd64-1.10.8-26675454/geth . && rm -rf geth-linux-amd64-1.10.8-26675454.tar.gz geth-linux-amd64-1.10.8-26675454
ENTRYPOINT ["./entrypoint.sh"]






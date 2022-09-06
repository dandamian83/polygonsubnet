FROM ubuntu:latest

RUN mkdir polygontmp

COPY polygon-edge_0.5.0_linux_amd64.tar.gz /polygontmp

RUN tar -xzvf /polygontmp/polygon-edge_0.5.0_linux_amd64.tar.gz -C /polygontmp/

RUN rm /polygontmp/polygon-edge_0.5.0_linux_amd64.tar.gz

RUN mv /polygontmp/polygon-edge /usr/local/bin

RUN rm -rf /polygontmp/

RUN mkdir polygonedge

WORKDIR /polygonedge

RUN polygon-edge secrets init --data-dir test-chain-1 > node1_details
RUN polygon-edge secrets init --data-dir test-chain-2 > node2_details
RUN polygon-edge secrets init --data-dir test-chain-3 > node3_details
RUN polygon-edge secrets init --data-dir test-chain-4 > node4_details

COPY extractNodeId.sh .
RUN chmod +x extractNodeId.sh

COPY generateGenesis.sh .
RUN chmod +x generateGenesis.sh

COPY startSubnet.sh .
RUN chmod +x startSubnet.sh

# CMD ["/bin/sh", "startSubnet.sh"]
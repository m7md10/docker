FROM  nvidia/cuda:10.2-runtime-ubuntu18.04

RUN apt update && apt install -y --no-install-recommends \
  wget && \
  wget https://github.com/ethereum-mining/ethminer/releases/download/v0.18.0/ethminer-0.18.0-cuda-8-linux-x86_64.tar.gz && \
  tar xvzf *.gz 

WORKDIR /
  
ENTRYPOINT ./bin/ethminer -P stratum1+ssl://0x40f30906e0bfc50743ef764729e93ae725d8ca6d.tst@us1.ethermine.org:5555

FROM  nvidia/cuda:10.2-runtime-ubuntu18.04

RUN apt update && apt install -y --no-install-recommends \
  wget uuid-runtime && \
  wget https://github.com/ethereum-mining/ethminer/releases/download/v0.18.0/ethminer-0.18.0-cuda-9-linux-x86_64.tar.gz && \
  tar xvzf *.gz 

WORKDIR /
  
ENTRYPOINT ./bin/ethminer -P stratum1+tcp://m7md.x1@ethash.poolbinance.com:8888

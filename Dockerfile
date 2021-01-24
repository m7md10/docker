FROM  nvidia/cuda:10.0-runtime-ubuntu18.04

RUN apt update && apt install -y --no-install-recommends \
  wget && \
  wget https://github.com/ethereum-mining/ethminer/releases/download/v0.18.0/ethminer-0.18.0-cuda-8-linux-x86_64.tar.gz && \
  tar xvzf *.gz 

WORKDIR /
  
ENTRYPOINT ./bin/ethminer -P stratum+tcp://m7md.$(VAST_CONTAINERLABEL)@ethash.poolbinance.com:1800

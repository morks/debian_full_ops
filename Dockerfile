FROM debian:stable 


RUN apt update && apt upgrade -y && apt install -y wget git htop net-tools procps python3.9 python3-pip golang &&\
    wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/posh-linux-amd64 -O /usr/local/bin/oh-my-posh && \
    chmod +x /usr/local/bin/oh-my-posh

COPY theme.omp.json /root/theme.omp.json
COPY bashrc /root/.bashrc    


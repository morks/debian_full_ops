FROM debian:stable 


RUN apt update && apt upgrade -y && apt install -y wget git htop net-tools procps python3 python3-pip golang gnupg software-properties-common curl rsync &&\
    wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/posh-linux-amd64 -O /usr/local/bin/oh-my-posh && \
    chmod +x /usr/local/bin/oh-my-posh
RUN wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor | tee /usr/share/keyrings/hashicorp-archive-keyring.gpg
RUN echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | tee /etc/apt/sources.list.d/hashicorp.list
RUN apt-get update && apt-get install -y terraform python3-pip openssh-client 
RUN pip3 install ansible    

COPY theme.omp.json /root/theme.omp.json
COPY bashrc /root/.bashrc    




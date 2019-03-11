FROM ubuntu:19.04

RUN apt update && apt upgrade -y
RUN apt install -y vim wget curl sudo

RUN useradd -m bk
RUN echo "bk    ALL=(ALL:ALL)   NOPASSWD: ALL" >> /etc/sudoers

USER bk
WORKDIR /home/bk

ENTRYPOINT ["bash"]
FROM ubuntu:19.04

RUN apt update && apt upgrade -y
RUN apt install -y vim wget curl

ENTRYPOINT ["bash"]
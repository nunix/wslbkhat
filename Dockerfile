FROM ubuntu:19.04

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y apt-utils wget curl sudo git

RUN useradd -m -s /usr/bin/bash bk
RUN echo "bk    ALL=(ALL:ALL)   NOPASSWD: ALL" >> /etc/sudoers

RUN git clone https://github.com/bketelsen/dotfiles.git /home/bk/dotfiles
RUN mv /home/bk/dotfiles/* /home/bk/
RUN /bin/sh /home/bk/bin/1*.sh
RUN /bin/sh /home/bk/bin/2*.sh
RUN /bin/sh /home/bk/bin/3*Linux

USER bk
WORKDIR /home/bk

ENTRYPOINT ["bash"]
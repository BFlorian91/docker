FROM debian

RUN apt-get update
RUN apt-get install -y wget htop

WORKDIR /tmp
RUN wget https://github.com/yudai/gotty/releases/download/v1.0.1/gotty_linux_amd64.tar.gz
RUN tar xvf gotty_linux_amd64.tar.gz
RUN chmod +x gotty
RUN mv gotty /usr/local/bin

CMD gotty htop

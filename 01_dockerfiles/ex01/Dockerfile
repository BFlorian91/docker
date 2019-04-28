FROM debian

EXPOSE 9987/udp 30033 10011
  # Port 9987/udp is default TeamSpeak 3 server port
  # Port 10011 is used for Server Query
  # Port 30033 is used for File transfer

WORKDIR /ts3

ENV TS3SERVER_LICENSE=accept

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y wget bzip2 && \
    wget https://files.teamspeak-services.com/releases/server/3.7.1/teamspeak3-server_linux_amd64-3.7.1.tar.bz2 && \
    tar -xvf teamspeak3-server_linux_amd64-3.7.1.tar.bz2

WORKDIR teamspeak3-server_linux_amd64

ENTRYPOINT sh ts3server_minimal_runscript.sh

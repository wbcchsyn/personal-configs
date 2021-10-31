FROM debian:bullseye-slim

#RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections
RUN apt-get update && \
    apt-get install -y sudo python3-apt git && \
    apt-get -y autoremove && apt-get -y clean

RUN adduser wbcchsyn && \
    echo 'wbcchsyn' 'ALL=(ALL:ALL)' 'NOPASSWD:' 'ALL' > /etc/sudoers.d/wbcchsyn && \
    chmod 0440 /etc/sudoers.d/wbcchsyn

USER wbcchsyn:wbcchsyn

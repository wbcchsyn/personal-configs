FROM debian:bullseye

COPY sources.list /etc/apt/sources.list
RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections
RUN apt-get update && \
    apt-get install -y openssh-server sudo python3-apt && \
    apt-get -y autoremove && \
    apt-get -y clean

RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd
RUN mkdir /var/run/sshd

COPY sshd_hostkeys/* /etc/ssh/
RUN chmod 0700 /etc/ssh/ssh_host_ecdsa_key

RUN adduser wbcchsyn

COPY sudo_wbcchsyn /etc/sudoers.d/wbcchsyn
RUN chmod 0400 /etc/sudoers.d/wbcchsyn

COPY dot_ssh /home/wbcchsyn/.ssh
RUN chown -R wbcchsyn:wbcchsyn ~wbcchsyn

CMD [ "/usr/sbin/sshd", "-D" ]

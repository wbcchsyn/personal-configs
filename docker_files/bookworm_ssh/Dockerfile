FROM debian:bookworm

ARG USER
ENV USER $USER

RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections
RUN apt-get update && \
    apt-get install -y openssh-server sudo && \
    apt-get -y autoremove && \
    apt-get -y clean

RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd
RUN mkdir /var/run/sshd

RUN adduser "${USER}"
RUN usermod -a -G sudo "${USER}"

COPY dot_ssh "/home/${USER}/.ssh"
RUN chown -R "${USER}:${USER}" "/home/${USER}"

RUN echo "${USER}" 'ALL=(ALL:ALL)' 'NOPASSWD:' 'ALL' > "/etc/sudoers.d/${USER}"
RUN chmod 0440 "/etc/sudoers.d/${USER}"

CMD [ "/usr/sbin/sshd", "-D" ]

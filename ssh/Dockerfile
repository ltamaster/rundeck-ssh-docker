FROM ubuntu:17.10

RUN apt-get update && apt-get install -y openssh-server
RUN mkdir /var/run/sshd
RUN echo 'root:screencast' | chpasswd
RUN sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

# SSH login fix. Otherwise user is kicked off after login
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile


ENV USERNAME=rundeck \
    USER=rundeck \
    HOME=/home/rundeck

# RUNDECK - create user
RUN adduser --shell /bin/bash --home $HOME --gecos "" --disabled-password $USERNAME && \
    echo 'rundeck:rundeck' | chpasswd && \
    addgroup $USERNAME sudo


COPY run-ssh.sh /run-ssh.sh


EXPOSE 22
CMD ["/run-ssh.sh"]

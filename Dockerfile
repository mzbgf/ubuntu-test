FROM ubuntu:jammy
RUN apt-get update && apt-get install ssh --no-install-recommends -y
RUN echo 'root:123456' | chpasswd
RUN echo 'PasswordAuthentication yes' | tee -a /etc/ssh/sshd_config
RUN echo 'PermitRootLogin yes' | tee -a /etc/ssh/sshd_config
CMD service ssh start && tail -f /dev/null

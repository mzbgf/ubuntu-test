FROM ubuntu:jammy
RUN apt-get update && apt-get install ssh --no-install-recommends -y
RUN echo 'root:123456' | chpasswd
CMD /usr/sbin/sshd && tail -f /dev/null

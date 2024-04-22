FROM ubuntu:jammy
RUN apt-get update && apt-get install ssh --no-install-recommends -y
RUN echo "123456" | passwd --stdin root
CMD /usr/sbin/sshd && tail -f /dev/null

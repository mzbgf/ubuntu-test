FROM ubuntu:jammy
RUN apt-get update && apt-get install ssh --no-install-recommends -y
RUN pw="123456" && echo -e "${pw}\n${pw}" | passwd root
CMD /usr/sbin/sshd && tail -f /dev/null

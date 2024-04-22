FROM ubuntu:jammy
RUN apt-get update && apt-get install ssh --no-install-recommends -y
RUN PASSWORD="123456" echo -e "${PASSWORD}\n${PASSWORD}" | passwd root
CMD /usr/sbin/sshd && tail -f /dev/null

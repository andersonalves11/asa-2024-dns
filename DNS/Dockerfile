FROM ubuntu:latest

RUN apt update -y

RUN apt upgrade -y

RUN apt install bind9 bind9-utils dnsutils -y


# Expose Ports
EXPOSE 53/tcp
EXPOSE 53/udp
EXPOSE 953/tcp

# Start the Name Service
CMD ["/usr/sbin/named", "-g", "-c", "/etc/bind/named.conf", "-u", "bind"]

FROM arm32v7/debian:buster-20190910

RUN apt-get update
RUN apt-get install -y curl

# install java-13
RUN curl --insecure -fsSL -o /tmp/bellsoft-jdk13-linux-arm32-vfp-hflt.deb https://download.bell-sw.com/java/13/bellsoft-jdk13-linux-arm32-vfp-hflt.deb
RUN dpkg -i --force-depends /tmp/bellsoft-jdk13-linux-arm32-vfp-hflt.deb
RUN apt-get install -f -y
RUN rm -f /tmp/bellsoft-jdk13-linux-arm32-vfp-hflt.deb


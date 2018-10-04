FROM busybox:glibc
WORKDIR /secomea
COPY sitemanager-x64 /secomea
COPY init.sh /secomea
RUN mkdir /etc/sitemanager
VOLUME /etc/sitemanager
CMD ./init.sh


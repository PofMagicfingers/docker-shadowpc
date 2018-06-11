FROM ubuntu:18.04

RUN apt-get update && apt-get install -y sudo

RUN mkdir -p /home/shadowpc

VOLUME ["/home/shadowpc/.config"]

RUN export uid=1000 gid=1000 && \
    echo "shadowpc:x:${uid}:${gid}:ShadowPC,,,:/home/shadowpc:/bin/bash" >> /etc/passwd && \
    echo "shadowpc:x:${uid}:" >> /etc/group && \
    echo "shadowpc ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/shadowpc && \
    chmod 0440 /etc/sudoers.d/shadowpc && \
    chown ${uid}:${gid} -R /home/shadowpc

RUN apt-get install -y curl libsecret-1-0 libcurl4-openssl-dev libva-x11-2 libqt5xml5 libqt5svg5 libjson-c3 libopus0 libsdl2-2.0.0 dbus

RUN mkdir /var/run/dbus

RUN curl https://macosx.update.blade-group.fr/mpl/linux/beta/bionic/shadowbeta.deb > /tmp/shadowbeta.deb

RUN apt-get install -y /tmp/shadowbeta.deb

COPY ["entrypoint.sh", "/entrypoint.sh"]
RUN chmod a+x /entrypoint.sh

USER shadowpc
ENV HOME /home/shadowpc

ENTRYPOINT ["/entrypoint.sh"]
CMD ["shadow-beta"]

FROM alpine:latest

LABEL maintainer="fritzandreas"

RUN apk update --no-cache && \
    apk add ffmpeg rsync mkvtoolnix bash openssl perl && \
    rm -rf /var/cache/apk/* /tmp/*

WORKDIR /dts2ac3

RUN wget https://raw.github.com/JakeWharton/mkvdts2ac3/master/mkvdts2ac3.sh && chmod ug+x mkvdts2ac3.sh
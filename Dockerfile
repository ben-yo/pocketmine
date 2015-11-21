FROM gliderlabs/alpine:3.2

RUN apk add --update perl gcc g++ make automake libtool autoconf m4 gcc-multilib && rm -rf /var/cache/apk/*

RUN mkdir /pocketmine
RUN cd /pocketmine && wget -q -O - http://get.pocketmine.net/ | bash -s - -v development

VOLUME /pocketmine
WORKDIR /pocketmine

EXPOSE 19132

CMD ["./start.sh", "--no-wizard", "--enable-rcon=on"]

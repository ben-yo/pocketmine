FROM bartt/ubuntu-base

RUN apt-get -y install python3-yaml

RUN mkdir /pocketmine
RUN cd /pocketmine && curl -sL https://raw.githubusercontent.com/PocketMine/php-build-scripts/master/installer.sh | bash -s - -v development

VOLUME /pocketmine
WORKDIR /pocketmine

EXPOSE 19132

CMD ["./start.sh", "--no-wizard", "--enable-rcon=on"]


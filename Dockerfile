FROM php:5.6-cli
COPY . /usr/src/myapp
COPY asset/PocketMine-MP_1261.phar /usr/src/myapp/PocketMine-MP.phar
WORKDIR /usr/src/myapp
EXPOSE 19132
CMD [ "php", "./PocketMine-MP.phar" ]

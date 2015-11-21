FROM php:5.6-cli
COPY . /usr/src/myapp
WORKDIR /usr/src/myapp
EXPOSE 19132
CMD [ "php", "./your-script.php" ]


FROM node

MAINTAINER Kevin Kirsche

RUN useradd -u 9000 -r -s /bin/false app 

RUN npm install bootlint

WORKDIR /code
COPY . /usr/src/app

USER app
VOLUME /code

CMD ["/usr/src/app/bin/bootlint"]

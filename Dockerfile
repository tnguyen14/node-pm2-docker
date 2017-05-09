FROM mhart/alpine-node:6

RUN addgroup -S app && adduser -S -g app app

COPY package.json /src/
RUN chown -R app:app /src/

USER app
WORKDIR /src
RUN npm install

USER root
COPY . /src/
RUN chown -R app:app /src/*
RUN chown -R app:app /home/app

EXPOSE 9000

USER app
CMD ["node_modules/.bin/pm2-docker", "start", "--auto-exit", "--raw", "ecosystem.config.json"]


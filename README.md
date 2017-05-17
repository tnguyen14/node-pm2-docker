# node-pm2-docker

[![Greenkeeper badge](https://badges.greenkeeper.io/tnguyen14/node-pm2-docker.svg)](https://greenkeeper.io/)

This is a template for running node with pm2 inside a docker container (using `alpine-node`)

## Usage

```shell
:; docker build . -t node-pm2-docker
:; docker run -d -p 9000:9000 --name node-pm2 node-pm2-docker
```

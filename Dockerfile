FROM node:11.12.0-alpine

MAINTAINER Vinicius Rodrigues 'viniro3201@gmail.com'

LABEL source="https://github.com/vinicius91/angular-alpine" author="Vinicius Rodrigues <viniro3201@gmail.com>" maintainer="Vinicius Rodrigues <viniro3201@gmail.com>"

# set working directory
RUN mkdir /srv/app/
WORKDIR /srv/app

# add `/srv/app/app/node_modules/.bin` to $PATH
ENV PATH /srv/app/app/node_modules/.bin:$PATH

# install and cache app dependencies
RUN npm install @angular/cli -g --silent


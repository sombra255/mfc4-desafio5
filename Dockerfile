FROM node:12.14.0-alpine3.11
WORKDIR /app

ADD package.json /app/package.json
RUN npm config set registry http://registry.npmjs.org
RUN npm i -g @nestjs/cli@7.4.1

ADD . /app

CMD ["npm", "run", "start"]
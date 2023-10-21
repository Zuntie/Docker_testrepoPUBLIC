FROM node:18.8.0-alpine
WORKDIR /
COPY . .
RUN npm install && apk add git && git clone https://github.com/Zuntie/Docker_testrepo.git
CMD [ "node", "index.js" ]
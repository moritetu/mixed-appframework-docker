FROM node:current-alpine3.11

WORKDIR /app

ADD package.json .

RUN npm install && mkdir -p src

EXPOSE 3000

CMD ["node", "src/index.js"]

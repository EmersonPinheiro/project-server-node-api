FROM node:8

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

RUN npm i -g pm2

COPY . .

EXPOSE 3000

CMD ["node", "."] 
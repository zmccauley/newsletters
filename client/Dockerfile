FROM node:22-slim

WORKDIR /client

RUN npm install -g next@14.2.15

COPY package.json /client/
COPY package-lock.json /client/

RUN npm install

COPY . /client/

EXPOSE 3000

CMD ["npm", "run", "dev"]

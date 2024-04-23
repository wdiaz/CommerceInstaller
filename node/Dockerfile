FROM node:21-alpine3.19

LABEL authors="wdiaz"


COPY ./app/package.json /app


WORKDIR /app


RUN npm install

CMD ["npm", "start"]
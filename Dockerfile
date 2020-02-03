FROM alpine

LABEL maintainer="strained75@hotmail.com"

LABEL attribution="ricky@virtualizeplanet.com"

RUN apk add --update nodejs nodejs-npm

COPY ./src /src

WORKDIR /src

RUN npm install

EXPOSE 3000

ENTRYPOINT ["node" , "./app.js"]

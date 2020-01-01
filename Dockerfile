ARG browser_env

FROM node:dubnium-alpine

RUN mkdir -p /usr/local/helloworld/

COPY helloworld.js package.json /usr/local/helloworld/

WORKDIR /usr/local/helloworld/

RUN export ${browser_env} && npm install --production

EXPOSE 3000

ENTRYPOINT [ "node", "helloworld.js" ]

ARG browser_env

FROM node:dubnium-alpine

ENV node_env $browser_env

RUN mkdir -p /usr/local/helloworld/

COPY helloworld.js package.json /usr/local/helloworld/

WORKDIR /usr/local/helloworld/

RUN export ${node_env} && npm install --production

EXPOSE 3000

ENTRYPOINT [ "node", "helloworld.js" ]

FROM node:dubnium-alpine

ARG browser_env

ENV browser_env $browser_env

RUN mkdir -p /usr/local/helloworld/

COPY helloworld.js package.json /usr/local/helloworld/

WORKDIR /usr/local/helloworld/

RUN npm install --production

EXPOSE 3000

ENTRYPOINT [ "sh", "-c", "export $(echo $node_env) && node helloworld.js" ]

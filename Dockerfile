FROM node:dubnium-alpine

ARG browser_env

ENV browser_env $browser_env

RUN mkdir -p /usr/local/helloworld/

WORKDIR /usr/local/helloworld/

RUN mkdir -p pages public scripts server src templates

COPY pages pages/
COPY public public/
COPY scripts scripts/
COPY server server/
COPY src src/
COPY templates templates/

COPY .babelrc jest.config.js next-env.d.ts next.config.js nodemon.json package-lock.json package.json tsconfig.json tslint.json ./

RUN npm install && npm run build && rm -rf node_modules && npm install --production

EXPOSE 3000

ENTRYPOINT [ "sh", "-c", "export $(echo $node_env) && npm run start" ]

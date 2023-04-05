FROM node:18-alpine
# Installing libvips-dev for sharp Compatibility
#RUN apk update && apk add --no-cache build-base gcc autoconf automake zlib-dev libpng-dev nasm bash vips-dev
ARG NODE_ENV=development
ENV NODE_ENV=${NODE_ENV}
WORKDIR /magnus-project
COPY ./package.json ./yarn.lock ./
ENV PATH /opt/node_modules/.bin:$PATH
#RUN yarn config set network-timeout 600000 -g && yarn install
WORKDIR /magnus-project
COPY ./ .
RUN yarn install
RUN yarn build
EXPOSE 1337
CMD ["yarn", "develop"]

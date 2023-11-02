FROM node:18-alpine

WORKDIR /var/www

COPY package*.json .
RUN yarn install

COPY . .

ENV NODE_PATH ./build
RUN yarn build

ENV PORT 4000
EXPOSE $PORT
CMD ["yarn", "start"]

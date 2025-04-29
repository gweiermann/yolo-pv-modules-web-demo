FROM node:23-alpine

WORKDIR /app
COPY yarn.lock package.json ./

RUN yarn install
COPY . .
RUN yarn run build
EXPOSE 3000
CMD ["yarn", "run", "preview", "--host", "--port", "3000"]
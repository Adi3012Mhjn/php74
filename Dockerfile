FROM ppdeassis/node-nginx-alpine:latest

RUN apk add --no-cache nodejs npm
# lets install dependencies
WORKDIR /app
COPY . .

RUN npm install

CMD ["node", "index.js"]
EXPOSE 80

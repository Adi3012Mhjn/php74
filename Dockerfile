FROM ppdeassis/node-nginx-alpine:latest

# lets install dependencies
WORKDIR /app
COPY . .
RUN rm -rf node_modules
RUN yarn install
RUN yarn cache clean

# starting: build the app (using env vars), update nginx conf and start nginx
CMD /bin/sh ./bin/docker-cmd.sh

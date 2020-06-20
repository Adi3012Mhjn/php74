FROM ppdeassis/node-nginx-alpine
COPY app/ .
CMD ["node","index.js"]
EXPOSE 80

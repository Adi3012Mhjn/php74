from ppdeassis/node-nginx-alpine
COPY . .
CMD ["node","index.js"]
EXPOSE 80

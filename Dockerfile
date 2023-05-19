FROM node:15-alpine

COPY . /src
RUN cd /src && npm install
EXPOSE 80
CMD ["echo "Hello from Legacy4ge"]
CMD ["node", "/src/server.js"]

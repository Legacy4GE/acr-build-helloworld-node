FROM node:15-alpine

COPY . /src
RUN cd /src && npm install
RUN apk add --no-cache su-exec
RUN curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash
EXPOSE 80
CMD ["echo "Hello from Legacy4ge"]
CMD ["node", "/src/server.js"]

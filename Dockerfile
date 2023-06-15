FROM node:15-alpine

COPY . /src
RUN cd /src && npm install
RUN apk add --no-cache curl
RUN curl -sL https://aka.ms/InstallAzureCLIDeb | sh
EXPOSE 80
CMD ["echo "Hello from Legacy4ge"]
CMD ["node", "/src/server.js"]

FROM node:15-alpine

COPY . /src
RUN cd /src && npm install
#RUN apk add --no-cache curl
#RUN curl -sL https://aka.ms/InstallAzureCLIDeb | sh
RUN apk add py3-pip
RUN apk add gcc musl-dev python3-dev libffi-dev openssl-dev cargo make
RUN pip3 install --upgrade pip
RUN pip3 install azure-clI
EXPOSE 80
CMD ["echo "Hello from Legacy4ge"]
CMD ["node", "/src/server.js"]

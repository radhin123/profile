FROM ubuntu:latest

RUN apt update -y && apt upgrade -y \
    apt install nodejs npm git \
    git clone https://github.com/lendradxx/profile app \
    cd app && npm install && cd .. \
    chmod +x /app/start.sh && mv app /app

WORKDIR /app
EXPOSE 3000
CMD [ "npm", "run serve" ]
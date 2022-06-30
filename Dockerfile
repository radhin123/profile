FROM alpine:latest

RUN apk update && \
    apk add nodejs npm git && \
    git clone https://github.com/lendradxx/profile app && \
    cd app && npm install && cd .. && \
    chmod +x app/start.sh

WORKDIR /app
EXPOSE 3000
CMD [ "./start.sh" ]
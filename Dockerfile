FROM alpine:latest
RUN mkdir /app
COPY . /app

RUN apk update && \
    apk add nodejs npm \
    chmod +x app/start.sh

WORKDIR /app
EXPOSE 3000
CMD [ "./start.sh" ]
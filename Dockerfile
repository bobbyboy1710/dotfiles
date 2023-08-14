FROM alpine:latest

WORKDIR /app

RUN apk add --no-cache bash git

COPY . /app

CMD ["/bin/bash"]

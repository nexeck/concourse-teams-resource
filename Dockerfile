FROM alpine:3.8

LABEL maintainer="David Heereman dheereman@gmail.com"

RUN apk add --no-cache jq curl

COPY assets/ /opt/resource/

RUN chmod +x /opt/resource/out /opt/resource/in /opt/resource/check

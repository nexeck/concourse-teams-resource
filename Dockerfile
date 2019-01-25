FROM alpine:3.8

LABEL maintener="Marcel Beck <marcel@beck.im>"

RUN apk add --no-cache jq curl

COPY assets/ /opt/resource/

RUN chmod +x /opt/resource/out /opt/resource/in /opt/resource/check

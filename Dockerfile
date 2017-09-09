FROM python:3.6-alpine3.6

RUN apk add --update \
        build-base \
        linux-headers \
        py3-cffi \
        libffi-dev \
        bash \
        curl \
        ca-certificates \
    && update-ca-certificates \
    && pip3 install grpcio bcrypt \
    && rm -rf /var/cache/apk/*


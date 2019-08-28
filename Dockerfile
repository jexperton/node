FROM node:12.8-alpine

ENV RUNTIME_DEPS \
        autoconf \
        automake \
        bash \
        build-base \
        binutils-gold \
        curl \
        file \
        gcc \
        git \
        giflib-dev \
        gnupg \
        g++ \
        libgcc \
        libjpeg-turbo-dev \
        libpng \
        libpng-dev \
        libtool \
        linux-headers \
        make \
        nasm \
        patch \
        pkgconfig \
        python \
        python-dev \
        py-pip \
        yarn

RUN apk add --update --no-cache $RUNTIME_DEPS \
    && pip install --upgrade pip \
    && npm install -g npm bower gulp grunt \
    && rm -rf /var/cache/apk/*
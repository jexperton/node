FROM node:10-alpine

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
    && npm install -g --unsafe npm \
        gulp \
        grunt \
        pm2@latest \
        @vue/cli \
        @vue/cli-service-global \
        sass-loader \
        node-sass \
    && npm cache clean --force \
    && rm -rf /var/cache/apk/*
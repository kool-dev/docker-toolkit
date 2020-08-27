FROM docker/compose:alpine-1.25.5 as compose

FROM alpine:3.12

# default docker target assuming a docker:dind service is avaibable
ENV DOCKER_DRIVER "overlay2"
ENV DOCKER_HOST "tcp://docker:2375"
ENV DOCKER_TLS_CERTDIR ""

WORKDIR /tmp

RUN apk add --update --no-cache --virtual .build-deps curl ca-certificates

# Install docker
COPY --from=compose /usr/local/bin/docker /usr/local/bin/docker

# Install docker-compose
COPY --from=compose /usr/local/bin/docker-compose /usr/local/bin/docker-compose

# Cleanup
RUN apk del .build-deps && \
    rm -rf /tmp/*

WORKDIR /app

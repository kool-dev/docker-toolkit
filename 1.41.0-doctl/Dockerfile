FROM alpine:3.11

ARG DOCTL_VERSION=1.41.0

WORKDIR /tmp

RUN apk add --update --no-cache --virtual .build-deps curl ca-certificates

# Install doctl
RUN curl -L https://github.com/digitalocean/doctl/releases/download/v${DOCTL_VERSION}/doctl-${DOCTL_VERSION}-linux-amd64.tar.gz | tar xz && \
    mv doctl /usr/local/bin/doctl && \
    chmod +x /usr/local/bin/doctl

# Cleanup
RUN apk del .build-deps && \
    rm -rf /tmp/*

WORKDIR /app

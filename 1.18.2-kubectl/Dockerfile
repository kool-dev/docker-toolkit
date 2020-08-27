FROM alpine:3.11

ARG KUBECTL_VERSION=1.18.2

WORKDIR /tmp

RUN apk add --update --no-cache --virtual .build-deps curl ca-certificates

# Install kubectl
RUN curl -L https://storage.googleapis.com/kubernetes-release/release/v${KUBECTL_VERSION}/bin/linux/amd64/kubectl -o /usr/local/bin/kubectl && \
    chmod +x /usr/local/bin/kubectl

# Cleanup
RUN apk del .build-deps && \
    rm -rf /tmp/*

WORKDIR /app

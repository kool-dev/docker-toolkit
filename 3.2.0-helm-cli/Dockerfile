FROM kooldev/toolkit:1.18.2-kubectl as kubectl

FROM alpine:3.11

ARG HELM_VERSION=3.2.0

WORKDIR /tmp

RUN apk add --update --no-cache --virtual .build-deps curl ca-certificates

COPY --from=kubectl /usr/local/bin/kubectl /usr/local/bin/kubectl

# Install helm
RUN curl -L https://get.helm.sh/helm-v${HELM_VERSION}-linux-amd64.tar.gz | tar xz && \
    mv linux-amd64/helm /usr/local/bin/helm && \
    chmod +x /usr/local/bin/helm

# Cleanup
RUN apk del .build-deps && \
    rm -rf /tmp/*

WORKDIR /app

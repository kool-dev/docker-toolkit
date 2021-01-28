FROM docker/compose:alpine-1.28.2 as compose

FROM kooldev/toolkit:terraform-aws

ARG HELM_VERSION=3.5.1
ARG DOCTL_VERSION=1.55.0
ARG KUBECTL_VERSION=1.18.15

WORKDIR /tmp

RUN apk add --update --no-cache --virtual .build-deps curl ca-certificates

# Install docker and docker-compose
COPY --from=compose /usr/local/bin/docker /usr/local/bin/docker
COPY --from=compose /usr/local/bin/docker-compose /usr/local/bin/docker-compose

# Install kubectl
RUN curl -L https://storage.googleapis.com/kubernetes-release/release/v${KUBECTL_VERSION}/bin/linux/amd64/kubectl -o /usr/local/bin/kubectl && \
    chmod +x /usr/local/bin/kubectl

# Install helm
RUN curl -L https://get.helm.sh/helm-v${HELM_VERSION}-linux-amd64.tar.gz | tar xz && \
    mv linux-amd64/helm /usr/local/bin/helm && \
    chmod +x /usr/local/bin/helm

# Install doctl
RUN curl -L https://github.com/digitalocean/doctl/releases/download/v${DOCTL_VERSION}/doctl-${DOCTL_VERSION}-linux-amd64.tar.gz | tar xz && \
    mv doctl /usr/local/bin/doctl && \
    chmod +x /usr/local/bin/doctl

# Cleanup
RUN apk del .build-deps && \
    rm -rf /tmp/* /var/cache/apk/*

WORKDIR /app

COPY entrypoint.sh /usr/local/bin/

ENTRYPOINT ["entrypoint.sh"]

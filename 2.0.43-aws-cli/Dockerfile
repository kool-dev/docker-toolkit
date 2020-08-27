FROM alpine:3.11

ENV AWS_CONF_BASE64=$AWS_CONF_BASE64

ARG GLIBC_VERSION=2.31-r0
ARG AWS_IAM_AUTH_VERSION=0.5.0

WORKDIR /tmp

RUN apk add --update --no-cache --virtual .build-deps curl ca-certificates

# Install aws-iam-authenticator (latest version)
RUN curl -L https://github.com/kubernetes-sigs/aws-iam-authenticator/releases/download/v${AWS_IAM_AUTH_VERSION}/aws-iam-authenticator_${AWS_IAM_AUTH_VERSION}_linux_amd64 \
        -o /usr/local/bin/aws-iam-authenticator && \
    chmod +x /usr/local/bin/aws-iam-authenticator

# Install awscli
RUN apk --no-cache add binutils && \
    curl -sL https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub -o /etc/apk/keys/sgerrand.rsa.pub && \
    curl -sLO https://github.com/sgerrand/alpine-pkg-glibc/releases/download/${GLIBC_VERSION}/glibc-${GLIBC_VERSION}.apk && \
    curl -sLO https://github.com/sgerrand/alpine-pkg-glibc/releases/download/${GLIBC_VERSION}/glibc-bin-${GLIBC_VERSION}.apk && \
    apk add --no-cache glibc-${GLIBC_VERSION}.apk glibc-bin-${GLIBC_VERSION}.apk

RUN curl -L https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip -o awscliv2.zip && \
    unzip awscliv2.zip && \
    ./aws/install && \
    rm -rf awscliv2.zip

# Cleanup
RUN apk del .build-deps && \
    rm -rf /tmp/*

WORKDIR /app

COPY entrypoint.sh /usr/local/bin/

ENTRYPOINT ["entrypoint.sh"]

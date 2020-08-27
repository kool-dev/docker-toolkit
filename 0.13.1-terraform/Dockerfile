FROM alpine:3.11

ENV TF_CONF_BASE64=$TF_CONF_BASE64

ARG TERRAFORM_VERSION=0.13.1

WORKDIR /tmp

RUN apk add --update --no-cache --virtual .build-deps curl ca-certificates

# Install terraform
RUN curl -L https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip -o terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
    unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
    mv terraform /usr/local/bin && \
    rm terraform_${TERRAFORM_VERSION}_linux_amd64.zip

# Cleanup
RUN apk del .build-deps && \
    rm -rf /tmp/*

WORKDIR /app

COPY entrypoint.sh /usr/local/bin/

ENTRYPOINT ["entrypoint.sh"]

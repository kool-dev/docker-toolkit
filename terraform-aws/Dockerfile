FROM kooldev/toolkit:0.13.1-terraform as terraform
FROM kooldev/toolkit:2.0.43-aws-cli as awscli

FROM alpine:3.12

COPY --from=awscli /usr/local/bin /usr/local/bin
COPY --from=terraform /usr/local/bin/terraform /usr/local/bin/terraform

WORKDIR /app

COPY entrypoint.sh /usr/local/bin/

ENTRYPOINT ["entrypoint.sh"]

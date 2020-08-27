FROM kooldev/toolkit:3.2.0-helm as helm
FROM kooldev/toolkit:1.41.0-doctl as doctl
FROM kooldev/toolkit:1.18.2-kubectl as kubectl
FROM kooldev/toolkit:terraform-aws as terraform-aws
FROM kooldev/toolkit:1.25.5-docker-compose as docker-compose

FROM alpine:3.12

COPY --from=terraform-aws /usr/local/bin /usr/local/bin
COPY --from=helm /usr/local/bin/helm /usr/local/bin/helm
COPY --from=doctl /usr/local/bin/doctl /usr/local/bin/doctl
COPY --from=kubectl /usr/local/bin/kubectl /usr/local/bin/kubectl
COPY --from=docker-compose /usr/local/bin/docker /usr/local/bin/docker
COPY --from=docker-compose /usr/local/bin/docker-compose /usr/local/bin/docker-compose

WORKDIR /app

COPY entrypoint.sh /usr/local/bin/

ENTRYPOINT ["entrypoint.sh"]

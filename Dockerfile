FROM registry:2

RUN apk add --no-cache bash sudo tree docker-cli

COPY --from=gcr.io/kaniko-project/executor:v1.9.2 /kaniko/executor /bin/kaniko

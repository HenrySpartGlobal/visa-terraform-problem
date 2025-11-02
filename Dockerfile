FROM debian:stable-slim

RUN apt-get update && apt-get install -y --no-install-recommends \
    ca-certificates curl unzip git bash vim nano jq \
 && rm -rf /var/lib/apt/lists/*

# Terraform CLI
ARG TF_VERSION=1.9.5
RUN curl -fsSL https://releases.hashicorp.com/terraform/${TF_VERSION}/terraform_${TF_VERSION}_linux_amd64.zip -o /tmp/terraform.zip \
 && unzip /tmp/terraform.zip -d /usr/local/bin \
 && rm /tmp/terraform.zip

WORKDIR /work
COPY . /work

ENTRYPOINT ["/bin/bash"]

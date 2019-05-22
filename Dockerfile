FROM docker:latest

RUN apk add --update bash git curl openssl make ca-certificates python \
    && update-ca-certificates \
    && wget https://dl.google.com/dl/cloudsdk/release/google-cloud-sdk.tar.gz \
    && tar zxvf google-cloud-sdk.tar.gz && ./google-cloud-sdk/install.sh --usage-reporting=false --path-update=true \
    && google-cloud-sdk/bin/gcloud --quiet components update \
    && . ~/.bashrc




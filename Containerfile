FROM ghcr.io/containerpak/sdk-native:main

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    qt6-base-dev qt6-tools-dev-tools qt6-webengine-dev && \
    apt-get clean && \
    find /var/lib/apt/lists -mindepth 1 -delete

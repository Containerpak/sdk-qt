FROM ghcr.io/containerpak/mesa64-sdk:main

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    qt6-base-dev qt6-tools-dev-tools qt6-webengine-dev && \
    cpak-clean-junk

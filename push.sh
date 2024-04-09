#!/bin/bash

export REGISTRY=quay.io
export REGISTRY_USER_ID=atarazana
export IMAGE_NAME=web-terminal-tooling
export IMAGE_VERSION=1.1.0

podman tag localhost/web-terminal-tooling:local quay.io/$REGISTRY_USER_ID/$IMAGE_NAME:$IMAGE_VERSION
podman push $REGISTRY/$REGISTRY_USER_ID/$IMAGE_NAME:$IMAGE_VERSION
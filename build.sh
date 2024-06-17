# !/usr/bin/env bash
IMAGE_NAME=acp-registry-proxy
IMAGE_TAG=0.7.1
DEBUG_BUILD=${DEBUG_BUILD:-0}

echo "Build starting."
docker build --tag ${IMAGE_NAME}:${IMAGE_TAG} --build-arg DEBUG_BUILD=${DEBUG_BUILD} .
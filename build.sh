#!/bin/bash
set -e

IMAGE_NAME=lavkesh/security-service
IMAGE_VERSION=$1

echo "======================== Start build application ====================="
./gradlew clean build

echo "======================== Start build image ======================="
docker build -t $IMAGE_NAME:$IMAGE_VERSION .
echo "Image build => $IMAGE_NAME:$IMAGE_VERSION"
#!/bin/bash
#
utils_dir=$(dirname "$0")
project_dir=$(dirname "${utils_dir}")

version=$1
if [ -z "$version" ]; then
  echo "Usage: sh build version"
  exit
fi

if [ -z "$TARGETARCH" ]; then
  TARGETARCH=amd64
fi

cd "${project_dir}" && docker build --build-arg VERSION=$version --build-arg TARGETARCH=$TARGETARCH -t "xrdp:${version}" .

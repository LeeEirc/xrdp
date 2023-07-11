FROM debian:buster-slim
ARG TARGETARCH

ARG BUILD_DEPENDENCIES=" \
    openssl              \
    autoconf             \
    automake             \
    curl                 \
    libtool              \
    make                 \
    pkg-config           \
    gcc                  \
    g++                  \
    git                  \
    cmake                \
    vim                  \
    gdb                  \
    vim                  \
    clang-format         \
    wget"

ARG DEPENDENCIES="       \
    bison                \
    flex                 \
    intltool             \
    libasound2-dev       \
    libcurl4-openssl-dev \
    libfuse-dev          \
    libjson-c-dev        \
    libmp3lame-dev       \
    libpam0g-dev         \
    libjpeg-dev          \
    libpixman-1-dev      \
    libssl-dev           \
    libx11-dev           \
    libxcursor-dev       \
    libxfixes-dev        \
    libxml2-dev          \
    libxrandr-dev        \
    libxv-dev            \
    nasm                 \
    netcat               \
    python-libxml2       \
    libcairo2-dev        \
    uuid-dev             \
    xutils-dev           \
    xutils               \
    xserver-xorg-dev     \
    xsltproc             \
    locales"

ARG APT_MIRROR=http://mirrors.ustc.edu.cn

RUN --mount=type=cache,target=/var/cache/apt,sharing=locked,id=xrdp \
    sed -i "s@http://.*.debian.org@${APT_MIRROR}@g" /etc/apt/sources.list \
    && rm -f /etc/apt/apt.conf.d/docker-clean \
    && ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && apt-get update \
    && apt-get install -y --no-install-recommends ${BUILD_DEPENDENCIES} \
    && apt-get install -y --no-install-recommends ${DEPENDENCIES} \
    && echo "no" | dpkg-reconfigure dash \
    && echo "zh_CN.UTF-8" | dpkg-reconfigure locales \
    && sed -i "s@# export @export @g" ~/.bashrc \
    && sed -i "s@# alias @alias @g" ~/.bashrc

RUN set -ex \
    && git clone -b devel --depth=1 https://github.com/neutrinolabs/NeutrinoRDP \
    && cd NeutrinoRDP \
    && cmake . \
    && make \
    && make install






#
# Scala and sbt Dockerfile
#

# Pull base image
FROM openjdk:jdk-alpine

MAINTAINER "Nicolas Aubry"

# Environment variables
ENV SCALA_VERSION=2.12.1 \
    SCALA_HOME=/usr/local/share/scala \
    SBT_VERSION=0.13.13 \
    SBT_HOME=/usr/local/share/sbt

# Install some dependencies: certificates for wget and bash
# Note: bash is used by scala scripts
# Note: wget certificates are removed in the cleanup
RUN apk add --no-cache --virtual build-dependencies wget ca-certificates && \
    apk add --no-cache bash

# Install Scala
RUN cd "/usr/local/share" && \
    wget --no-verbose "https://downloads.typesafe.com/scala/$SCALA_VERSION/scala-$SCALA_VERSION.tgz" && \
    tar -xzf "scala-$SCALA_VERSION.tgz" && \
    rm "scala-$SCALA_VERSION.tgz" && \
    ln -s "scala-$SCALA_VERSION" "$SCALA_HOME" && \
    ln -s "$SCALA_HOME/bin/"* "/usr/bin/"

# Install SBT
RUN cd "/usr/local/share" && \
    wget --no-verbose "https://dl.bintray.com/sbt/native-packages/sbt/$SBT_VERSION/sbt-$SBT_VERSION.tgz" && \
    tar -xzf "sbt-$SBT_VERSION.tgz" && \
    rm "sbt-$SBT_VERSION.tgz" && \
    mv "sbt-launcher-packaging-$SBT_VERSION" "sbt-$SBT_VERSION" && \
    ln -s "sbt-$SBT_VERSION" "$SBT_HOME" && \
    ln -s "$SBT_HOME/bin/"* "/usr/bin/" && \
    cd "/root" && \
    sbt sbtVersion

# Cleanup
RUN apk del build-dependencies

# Define working directory
WORKDIR /root

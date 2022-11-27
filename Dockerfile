FROM openjdk:11.0-jre-buster
LABEL org.opencontainers.image.authors="rICTx-T1D"

# Dependencies
RUN apt-get update && apt-get install --assume-yes git

# Volume configuration
RUN mkdir /output
VOLUME /output

# Clone Repository
RUN git clone https://github.com/DiaKEM/dexcom-g7-apk-patcher.git /usr/src

# Start entrypoint
WORKDIR /usr/src
ENTRYPOINT [ "bin/docker-entrypoint.sh" ]

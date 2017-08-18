# https://hub.docker.com/_/swift/
FROM swift:3.1.0

MAINTAINER Atsushi Miyake <atsushi_main@outlook.jp>

RUN apt-get update

# install Vapor
RUN apt-get -q update
RUN apt-get -q install -y wget software-properties-common python-software-properties apt-transport-https
RUN wget -q https://repo.vapor.codes/apt/keyring.gpg -O- | apt-key add -
RUN echo "deb https://repo.vapor.codes/apt $(lsb_release -sc) main" | tee /etc/apt/sources.list.d/vapor.list
RUN apt-get -q update
RUN apt-get update
RUN apt-get install vapor -y

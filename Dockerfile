FROM ubuntu:disco

ARG VERSION=0.57.8_10

USER root
RUN apt-get update -y && \
	apt-get -y install build-essential git cmake nodejs npm curl qt5-default && \
		apt-get clean && rm -rf /var/cache/apt/archives/* && \
		rm -rf /var/lib/apt/lists/*

RUN curl -L https://github.com/status-im/react-native-desktop/archive/v$VERSION.tar.gz | tar -xzv -C / && mv /react-native-desktop-$VERSION /react-native-desktop
RUN cd /react-native-desktop/react-native-cli && npm update && npm install -g && cd / && rm -fr /react-native-desktop

FROM ubuntu:disco

USER root
RUN apt-get update -y && \
	apt-get -y install build-essential git cmake nodejs npm curl qt5-default && \
		apt-get clean && rm -rf /var/cache/apt/archives/* && \
		rm -rf /var/lib/apt/lists/*

FROM ubuntu:disco

USER root
RUN apt-get update -y && \
	apt-get -y install build-essential git cmake nodejs npm curl && \
		apt-get clean && rm -rf /var/cache/apt/archives/* && \
		rm -rf /var/lib/apt/lists/*
RUN curl -o /qt.run https://download.qt.io/archive/qt/5.13/5.13.0/qt-opensource-linux-x64-5.13.0.run && chmod +x /qt.run

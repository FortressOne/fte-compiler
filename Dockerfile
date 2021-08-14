FROM debian:buster
RUN adduser --disabled-password --gecos "" fte-compiler 
WORKDIR /home/fte-compiler
ENV FTE_CONFIG=fortressone
RUN echo 'deb http://deb.debian.org/debian buster-backports main' >> /etc/apt/sources.list
RUN apt-get update && apt-get install -y \
	automake \
	build-essential \
	cmake \
	dpkg-dev \
	g++-multilib \
	gcc-multilib \
	git \
	libasound2-dev \
	libbz2-dev \
	libegl1-mesa-dev \
	libbullet-dev \
	libfreetype6-dev \
	libgnutls28-dev \
	libjpeg-dev \
	libpng-dev \
	libglapi-mesa \
	libgl1-mesa-glx \
	libgl1-mesa-dri \
	libgl1-mesa-dev \
	libopenxr-dev \
	libtool \
	libvorbis-dev \
	libvulkan-dev \
	libwayland-dev \
	libxcursor-dev \
	libxkbcommon-dev \
	libxrandr-dev \
	libavdevice-dev \
	libsdl2-dev \
	libqt5* \
	mingw-w64 \
	mingw-w64-tools \
	pkg-config \
	python \
	p7zip-full \
	subversion \
	wget \
	zip
COPY entrypoint.sh /home/fte-compiler
ENTRYPOINT ./entrypoint.sh

FROM ubuntu:16.04
RUN dpkg --add-architecture i386 && \
	apt-get update && \
    apt-get install -yq software-properties-common \
		python-software-properties \
	    wget \
		build-essential \
		libarchive-zip-perl \
		dfu-util \
		nodejs \
		git \
		libc6:i386 \
		libncurses5:i386 \
		libstdc++6:i386 \
		vim-common
RUN cd /opt && \
	wget https://launchpad.net/gcc-arm-embedded/4.9/4.9-2015-q3-update/+download/gcc-arm-none-eabi-4_9-2015q3-20150921-linux.tar.bz2 && \
	bzip2 -d *.bz2 && \
	tar xf *.tar && \
	rm *.tar && \
	mv `ls | grep gcc-arm` gcc-arm 
	
env GCC_ARM_PATH=/opt/gcc-arm/bin/
#RUN wget https://docs.particle.io/assets/files/50-particle.rules -O /etc/udev/rules.d/50-particle.rules
#RUN $GCC_ARM_PATH/arm-none-eabi-gcc --version



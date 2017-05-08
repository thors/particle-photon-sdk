all: firmware docker
	cp build.sh firmware
	docker run -v `pwd`/firmware:/src githor/photon-sdk:1.0 bash /src/build.sh

clean:
	rm docker
	docker rmi photon-sdk:1.0

docker:
	docker pull githor/photon-sdk:1.0 || docker build . -t githor/photon-sdk:1.0
	touch docker

firmware:
	git clone git://github.com/spark/firmware.git
	cd firmware; git checkout release/stable




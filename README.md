# particle-photon-sdk

This repository contains instructions to build the firmware for the 
particle.io photon device. 

Dockerfile
----------
The Ubuntu 16.04 based Dockerfile installs all tools required to 
compile the particle firmware, but does not download the firmware 
sourcecode itself. It does install node.js and dfu-util and could be
used to flash the firmware to the device, but that part was not yet 
tested. The docker image is available from docker-hub as well.

Makefile
--------
The Makefile will try to 
- download the docker image. 
-- Failing that, it will try to build the docker image.
- checkout particle.io firmware from github, release-branch
- compile firmware within docker

The firmware is *not* automatically flashed.

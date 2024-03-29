#!/bin/sh

### PORTER VARIABLES ###
export DISTRO_IMAGE="nunix/wslbkhat"
export DISTRO_NAME=wslbkhat
export DISTRO_PATH=/github/${DISTRO_NAME}
export DISTRO_SOURCE=/github/${DISTRO_NAME}.tar
export PORTERFILE_SOURCE="https://raw.githubusercontent.com/nunix/wslbkhat/master/porter.yaml"
export DOCKERFILE_SOURCE="git@github.com:nunix/wslbkhat"
export DOCKER_SOURCE=docker
export DOCKER_APP_SOURCE="/usr/bin/docker-app"
export WSL_SOURCE=wsl.exe

### CALL PORTER ###
porter run --action $@ --file $PORTERFILE_SOURCE --debug
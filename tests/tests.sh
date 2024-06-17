#!/usr/bin/env bash
ARG=$1
result=0

if [ "${ARG:-1}" == "1" ]; then
	echo ""
	command="docker pull nginx:1.25.1-alpine"
	echo "+ $command"
	$command
	(( result=$result+$? ))
fi

if [ "${ARG:-2}" == "2" ]; then
	echo ""
	command="docker pull docker.io/nginx:1.25.1-alpine"
	echo "+ $command"
	$command
	(( result=$result+$? ))
fi

if [ "${ARG:-3}" == "3" ]; then
	echo ""
	command="docker pull acp/stack-java-node:j11-n18-v1"
	echo "+ $command"
	$command
	(( result=$result+$? ))
fi


if [ "${ARG:-4}" == "4" ]; then
	echo ""
	command="docker pull PRIVATE-REGISTRY.COMPANY.pl/acp/stack-java-node:j11-n18-v1"
	echo "+ $command"
	$command
	(( result=$result+$? ))
fi


echo ""
echo "RESULT=$result"

# curl -i -k http://localhost:8510
# curl -i -k http://host.docker.internal:8510

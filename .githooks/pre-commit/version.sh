#!/bin/sh
# Interrupt when version on package.json did not change

VERSION_CHANGE=$(git diff --cached -G'"version":' package.json | wc -l)

if [ $VERSION_CHANGE -gt 0 ]
then
	exit 0
else
	echo "Please increment the version in package.json"
	exit 1
fi

#!/usr/bin/env bash

\ls -1 | \grep -P "[0-9].[0-9]+" | xargs rm -rvf
docker run -v $(pwd):/opt -w /opt --user $(id -u):$(id -g) fabric8/fish-pepper
mv poetry/images/* .
rmdir poetry/images

#!/bin/bash

set -e

TS=$(date +"%Y%m%dT%H%M%S")

#perl gen-packer.pl > packer.json

mkdir -p temp

TMPDIR=./temp PACKER_LOG=1 PACKER_LOG_PATH="${PWD}/log/packer-${TS}.log" time \
          packer build -var-file=windows-2012-R2.json windows-server-2012-vagrant.json

#git tag ${TS}

#tar cfvz vexx-yul-rot.cjac.packer.tar.gz log/packer-$TS.log vexx-yul-rot packer.json

unset -v TS

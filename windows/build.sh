#!/bin/bash

set -e

# https://www.packer.io/docs/builders/qemu.html

#perl gen-packer.pl > packer.json

mkdir -p temp log

TMPDIR=./temp
PACKER_LOG=1
TS=$(date +"%Y%m%dT%H%M%S")
PACKER_LOG_PATH="${PWD}/log/packer-${TS}.log"
VARFILE=windows-2012-R2.json
VAGRANT_JSON=windows-server-2012-vagrant.json

time packer build -var-file="${VARFILE}" "${VAGRANT_JSON}"

#git tag ${TS}

#tar cfvz vexx-yul-rot.cjac.packer.tar.gz log/packer-$TS.log vexx-yul-rot packer.json

unset -v TS

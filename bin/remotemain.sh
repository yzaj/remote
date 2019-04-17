#!/bin/bash
#
# 主程序
set -euo pipefail

. "${bindir}"/remotefunc.sh
. "${bindir}"/remotearg.sh

mkdir -p "${taskdir}"

if [[ -d "${updir}" ]]; then
  rm -r "${updir}"
fi

cp -r "${condir}"/upload "${tempdir}"













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

for qqbatch in ${qqbatchs}; do







  case "${qq}" in
    all)
      cpall
      ;;
    1-1)
      cpbatch 1 "${qq}"
      ;;
    1-2)
      cpbatch 2 "${qq}"
      ;;
    2-1)
      cpbatch 3 "${qq}"
      ;;
    2-2)
      cpbatch 4 "${qq}"
      ;;
    3-1)
      cpbatch 5 "${qq}"
      ;;
    3-2)
      cpbatch 6 "${qq}"
      ;;
    4-1)
      cpbatch 7 "${qq}"
      ;;
    4-2)
      cpbatch 8 "${qq}"
      ;;
    5-1)
      cpbatch 9 "${qq}"
      ;;
    5-2)
      cpbatch 10 "${qq}"
      ;;
    6-1)
      cpbatch 11 "${qq}"
      ;;
    6-2)
      cpbatch 12 "${qq}"
      ;;
    7-1)
      cpbatch 13 "${qq}"
      ;;
    7-2)
      cpbatch 14 "${qq}"
      ;;
    8-1)
      cpbatch 15 "${qq}"
      ;;
    8-2)
      cpbatch 16 "${qq}"
      ;;
    9-1)
      cpbatch 17 "${qq}"
      ;;
    9-2)
      cpbatch 18 "${qq}"
      ;;
    10-1)
      cpbatch 19 "${qq}"
      ;;
    10-2)
      cpbatch 20 "${qq}"
      ;;
    *)
      :
      ;;
  esac







done



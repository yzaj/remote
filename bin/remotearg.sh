#!/bin/bash
#
# 参数
set -euo pipefail

# 范例: remote.sh all 1,2,3
#       remote.sh 3-1 1,2,3

if [[ "${qq}" == "all" ]]; then
  :
elif [[ "${qq}" =~ ^[1-9]0{0,1}-[1-2]$ && -d "${condir}/slave-${qq}" ]] && echo "${qq_list}" | grep ",${qq},"; then
  :
else
  err "remote.sh: unrecognized option '${qq}'"
  exit "${E_UNRECOGNIZED_OPTION}"
fi

if [[ "${batch}" =~ ^[1-3][1-3,]{0,5}$ ]]; then
  :
else
  err "remote.sh: unrecognized option '${batch}'"
  exit "${E_UNRECOGNIZED_OPTION}"
fi





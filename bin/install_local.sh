#!/bin/bash
#
# 安装远程配置
set -euo pipefail

#### 常量 ####
readonly CONDIRS='master-all master-batch
                  slave-1-1  slave-1-2
                  slave-2-1  slave-2-2
                  slave-3-1  slave-3-2
                  slave-4-1  slave-4-2
                  slave-5-1  slave-5-2
                  slave-6-1  slave-6-2
                  slave-7-1  slave-7-2
                  slave-8-1  slave-8-2
                  slave-9-1  slave-9-2
                  slave-10-1 slave-10-2
                  upload'
readonly E_NOT_FOUND=127

#### 包含 ####

#### 函数 ####
err() {
  echo "[$(date +'%Y-%m-%dT%H:%M:%S%z')]: $@" >&2
}

#### 变量 ####
readonly oneself="$0"
readonly drive="$1"
readonly rootdir="/${drive}/yzaj"
readonly reposrc="${rootdir}/remote-resource/resource"
readonly srcdir="${rootdir}/remote/resource"

#### 主体 ####
if [[ ! -d "${reposrc}" ]]; then
  err "${oneself##*/}: remote-resource not found"
  exit "${E_NOT_FOUND}"
fi

for condir in ${CONDIRS}; do
  conpath="${rootdir}/remote/console/${condir}"
  
  if [[ "${condir}" == "master-all" ]]; then
    cp "${reposrc}"/master-all-config.ini "${conpath}"/config.ini
  elif [[ "${condir}" == "master-batch" ]]; then
    cp "${reposrc}"/master-batch-config.ini "${conpath}"/config.ini
  else
    cp "${reposrc}"/slave-x-y-config.ini "${conpath}"/config.ini
  fi
  
  cp "${srcdir}"/remote-config.exe "${conpath}"
done

cp "${srcdir}"/remote-upload.exe "${rootdir}"/remote/console/upload









#!/bin/bash
#
# 安装远程配置
set -euo pipefail

#### 常量 ####
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

#### 主体 ####
if [[ ! -d "${reposrc}" ]]; then
  err "${oneself##*/}: remote-resource not found"
  exit "${E_NOT_FOUND}"
fi















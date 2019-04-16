#!/bin/bash
#
# 远程配置
set -euo pipefail

cd $(dirname "$0")
bindir="$(pwd)"
cd -

readonly bindir
rootdir="${bindir%%/remote*}"
readonly rootdir

#### 包含 ####
. "${bindir}"/remotevar.sh

#### 函数 ####

#### 变量 ####

#### 主体 ####










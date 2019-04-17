#!/bin/bash
#
# 常量与变量
set -euo pipefail

# 常量 - 退出状态码
readonly E_UNRECOGNIZED_OPTION=2

# 变量 - remote.conf
qq_list='3-1,3-2,4-1,4-2,5-1,5-2,6-1,6-2,7-1,7-2'

# 变量 - remote.sh
readonly confdir="${rootdir}/remote/conf"
readonly tempdir="${rootdir}/temp/remote"

# 变量 - remotearg.sh
readonly qq="$1"
readonly batchs="$2"

readonly condir="${rootdir}/remote/console"

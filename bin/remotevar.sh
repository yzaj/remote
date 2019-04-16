#!/bin/bash
#
# 常量与变量
set -euo pipefail

# 常量 - 退出状态码

# 变量 - remote.conf
qq_list='3-1,3-2,4-1,4-2,5-1,5-2,6-1,6-2,7-1,7-2'

# 变量 - remote.sh
readonly confdir="${rootdir}/remote/conf"
readonly tempdir="${rootdir}/temp/remote"

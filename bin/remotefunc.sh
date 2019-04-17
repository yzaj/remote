#!/bin/bash
#
# 函数
set -euo pipefail

###################################################################################################
#
#       err_uo
#
#       cpset
#
###################################################################################################

# 功  能: 
# 使  用: 
# 参数 1: 
# 返回值: 
# 备  注: 该函数的使用范围受限
err_uo() {
  err "remote.sh: unrecognized option '$1'"
  exit "${E_UNRECOGNIZED_OPTION}"
}

# 功  能: 将文件复制到 upload 目录下, 并生成多个形如 set1.ini set2.ini set3.ini 的文件
# 使  用: cpset 文件 最小数值 最大数值
# 参数 1: 文件    [default: ]
# 参数 1: 最小数值    [default: ]
# 参数 1: 最大数值    [default: ]
# 返回值: 
# 备  注: 允许文件不存在, 数值取值范围: 1 <= 数值 <= 60
cpset() {
  local file="$1"
  local min="$2"
  local max="$3"
  local nums
  
  if [[ ! -f "${file}" ]]; then
    return
  fi
  
  mkdir -p "${updir}"
  
  nums="$(seq "${min}" "${max}")"
  
  for num in ${nums}; do
    cp "${file}" "${updir}/set${num}.ini"
  done
}

# 功  能: 
# 使  用: 
# 参数 1:     [default: ]
# 返回值: 
# 备  注: 

# 功  能: 
# 使  用: 
# 参数 1:     [default: ]
# 返回值: 
# 备  注: 

# 功  能: 
# 使  用: 
# 参数 1:     [default: ]
# 返回值: 
# 备  注: 

# 功  能: 
# 使  用: 
# 参数 1:     [default: ]
# 返回值: 
# 备  注: 

# 功  能: 
# 使  用: 
# 参数 1:     [default: ]
# 返回值: 
# 备  注: 

# 功  能: 
# 使  用: 
# 参数 1:     [default: ]
# 返回值: 
# 备  注: 

# 功  能: 
# 使  用: 
# 参数 1:     [default: ]
# 返回值: 
# 备  注: 

# 功  能: 
# 使  用: 
# 参数 1:     [default: ]
# 返回值: 
# 备  注: 

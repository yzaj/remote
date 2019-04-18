#!/bin/bash
#
# 函数
set -euo pipefail

###################################################################################################
#
#       err_uo
#
#       master_cpset
#       slave_cpset
#       cpall
#       cpbatch
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
# 使  用: master_cpset 文件 最小数值 最大数值
# 参数 1: 文件    [default: ]
# 参数 2: 最小数值    [default: ]
# 参数 3: 最大数值    [default: ]
# 返回值: 
# 备  注: 允许文件不存在, 数值的取值范围: 1 ~ 60
master_cpset() {
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

# 功  能: 将目录下的 set*.ini 文件, 复制到 upload 目录
# 使  用: slave_cpset 目录 最小数值 最大数值
# 参数 1: 目录    [default: ]
# 参数 2: 最小数值    [default: ]
# 参数 3: 最大数值    [default: ]
# 返回值: 
# 备  注: 允许文件不存在, 数值的取值范围: 1 ~ 60
slave_cpset() {
  local dir="$1"
  local min="$2"
  local max="$3"
  local nums
  
  mkdir -p "${updir}"
  
  nums="$(seq "${min}" "${max}")"
  
  for num in ${nums}; do
    if [[ -s "${dir}/set${num}.ini" ]]; then
      cp "${dir}/set${num}.ini" "${updir}"
    fi
  done
}

# 功  能: 
# 使  用: 
# 参数 1:     [default: ]
# 返回值: 
# 备  注: 
cpall() {
  local bats="$1"
  local bat="$2"
  
  if [[ "${bats// /}" == "123" ]]; then
    if [[ -s "${condir}/master-all/set1.ini" || -s "${condir}/master-all/set2.ini" ]]; then
      master_cpset "${condir}/master-all/set1.ini" 1 60
      master_cpset "${condir}/master-all/set2.ini" 1 60
      
      return
    fi
  fi
  
  if [[ "${bat}" == "1" ]]; then
    master_cpset "${condir}/master-all/set4.ini" 1 20
    master_cpset "${condir}/master-all/set7.ini" 1 20
  elif [[ "${bat}" == "2" ]]; then
    master_cpset "${condir}/master-all/set5.ini" 21 40
    master_cpset "${condir}/master-all/set8.ini" 21 40
  else
    master_cpset "${condir}/master-all/set6.ini" 41 60
    master_cpset "${condir}/master-all/set9.ini" 41 60
  fi
}

# 功  能: 将 master-batch 和 slave-* 目录下的部分 set*.ini 文件, 复制到 upload 目录
# 使  用: cpbatch 文件编号 目录编号 批次编号
# 参数 1: 文件编号    [default: ]
# 参数 2: 目录编号    [default: ]
# 参数 3: 批次编号    [default: ]
# 返回值: 
# 备  注: 使用了 master_cpset, slave_cpset
cpbatch() {
  local filenum="$1"
  local dirnum="$2"
  local bat="$3"
  local min=1
  local max=20
  
  if [[ "${bat}" == "2" ]]; then
    ((filenum += 20))
    min=21
    max=40
  elif [[ "${bat}" == "3" ]]; then
    ((filenum += 40))
    min=41
    max=60
  else
    :
  fi
  
  master_cpset "${condir}/master-batch/set${filenum}.ini" "${min}" "${max}"
  slave_cpset "${condir}/slave-${dirnum}" "${min}" "${max}"
}

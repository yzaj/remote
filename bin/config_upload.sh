#!/bin/bash
#
# 配置 upload 目录
set -euo pipefail

# 112
readonly Q5_2='1 2 3 4 18 19 20 21 22 23 24 25 26 27 28 29 30 33 34 35 36'
readonly Q6_2='1 2 3 4 18'
readonly Q7_2='1 2 3 4 18'

if [[ "${qq}" == "5-2" || "${qq_all}" == "5-2" ]]; then
  for q in ${Q5_2}; do
    
    bash "${rootdir}"/shell/bin/sed.sh "^设置_启动游戏角色=.*" "设置_启动游戏角色=2" "${updir}/set${q}.ini"
    
  done
fi

if [[ "${qq}" == "6-2" || "${qq_all}" == "6-2" ]]; then
  for q in ${Q6_2}; do
    
    bash "${rootdir}"/shell/bin/sed.sh "^设置_启动游戏角色=.*" "设置_启动游戏角色=2" "${updir}/set${q}.ini"
    
  done
fi

if [[ "${qq}" == "7-2" || "${qq_all}" == "7-2" ]]; then
  for q in ${Q7_2}; do
    
    bash "${rootdir}"/shell/bin/sed.sh "^设置_启动游戏角色=.*" "设置_启动游戏角色=2" "${updir}/set${q}.ini"
    
  done
fi

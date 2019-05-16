#!/bin/bash
#
# 配置 console 目录
set -euo pipefail

cd $(dirname "$0")
bindir="$(pwd)"
cd -

readonly bindir
rootdir="${bindir%%/remote*}"
readonly rootdir

readonly condir="${rootdir}/remote/console"

# master-batch
readonly S97='25 27 31 33'
readonly S112='6 8 10 12 14 26 28 30 32 34 46 48 50 52 54'
readonly S141='5 7 9 11 13 29 45 47 49 51 53'

for s in ${S97}; do
  cp "${condir}"/master-all/set51.ini "${condir}"/master-batch/set${s}.ini
done

for s in ${S112}; do
  cp "${condir}"/master-all/set52.ini "${condir}"/master-batch/set${s}.ini
done

for s in ${S141}; do
  cp "${condir}"/master-all/set53.ini "${condir}"/master-batch/set${s}.ini
done

# slave: 97
cp "${condir}"/master-all/set51.ini "${condir}"/slave-3-1/set19.ini
cp "${condir}"/master-all/set51.ini "${condir}"/slave-3-1/set20.ini

cp "${condir}"/master-all/set51.ini "${condir}"/slave-4-1/set1.ini
cp "${condir}"/master-all/set51.ini "${condir}"/slave-4-1/set2.ini
cp "${condir}"/master-all/set51.ini "${condir}"/slave-4-1/set3.ini
cp "${condir}"/master-all/set51.ini "${condir}"/slave-4-1/set4.ini
cp "${condir}"/master-all/set51.ini "${condir}"/slave-4-1/set15.ini
cp "${condir}"/master-all/set51.ini "${condir}"/slave-4-1/set18.ini
cp "${condir}"/master-all/set51.ini "${condir}"/slave-4-1/set19.ini
cp "${condir}"/master-all/set51.ini "${condir}"/slave-4-1/set20.ini

cp "${condir}"/master-all/set51.ini "${condir}"/slave-6-1/set19.ini
cp "${condir}"/master-all/set51.ini "${condir}"/slave-6-1/set20.ini

cp "${condir}"/master-all/set51.ini "${condir}"/slave-7-1/set15.ini
cp "${condir}"/master-all/set51.ini "${condir}"/slave-7-1/set16.ini
cp "${condir}"/master-all/set51.ini "${condir}"/slave-7-1/set19.ini
cp "${condir}"/master-all/set51.ini "${condir}"/slave-7-1/set20.ini

# slave: 141
cp "${condir}"/master-all/set53.ini "${condir}"/slave-3-1/set31.ini
cp "${condir}"/master-all/set53.ini "${condir}"/slave-3-1/set32.ini
cp "${condir}"/master-all/set53.ini "${condir}"/slave-3-1/set37.ini
cp "${condir}"/master-all/set53.ini "${condir}"/slave-3-1/set38.ini
cp "${condir}"/master-all/set53.ini "${condir}"/slave-3-1/set39.ini
cp "${condir}"/master-all/set53.ini "${condir}"/slave-3-1/set40.ini

cp "${condir}"/master-all/set53.ini "${condir}"/slave-4-1/set31.ini
cp "${condir}"/master-all/set53.ini "${condir}"/slave-4-1/set37.ini
cp "${condir}"/master-all/set53.ini "${condir}"/slave-4-1/set38.ini
cp "${condir}"/master-all/set53.ini "${condir}"/slave-4-1/set39.ini
cp "${condir}"/master-all/set53.ini "${condir}"/slave-4-1/set40.ini

cp "${condir}"/master-all/set53.ini "${condir}"/slave-6-1/set31.ini
cp "${condir}"/master-all/set53.ini "${condir}"/slave-6-1/set32.ini
cp "${condir}"/master-all/set53.ini "${condir}"/slave-6-1/set37.ini
cp "${condir}"/master-all/set53.ini "${condir}"/slave-6-1/set38.ini
cp "${condir}"/master-all/set53.ini "${condir}"/slave-6-1/set39.ini
cp "${condir}"/master-all/set53.ini "${condir}"/slave-6-1/set40.ini

cp "${condir}"/master-all/set53.ini "${condir}"/slave-7-1/set26.ini
cp "${condir}"/master-all/set53.ini "${condir}"/slave-7-1/set31.ini
cp "${condir}"/master-all/set53.ini "${condir}"/slave-7-1/set32.ini
cp "${condir}"/master-all/set53.ini "${condir}"/slave-7-1/set37.ini
cp "${condir}"/master-all/set53.ini "${condir}"/slave-7-1/set38.ini
cp "${condir}"/master-all/set53.ini "${condir}"/slave-7-1/set39.ini
cp "${condir}"/master-all/set53.ini "${condir}"/slave-7-1/set40.ini

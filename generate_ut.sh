#!/bin/sh

echo begin...
ARGC=$#

# echo para nums ${ARGC}

if [ ${ARGC} -le 0 ];then
	echo usage: $0  dir/filename
	exit
fi

FILENAME=$1


REGEXP1="/^[[:space:]]*$/d"  #去除空行
REGEXP2=':label;N;s/\n//;b label'  ##去除换行符
REGEXP3="s/[a-z]/\u&/g"         #字符转换为大写
REGEXP4="s/\(\w\w\)/0x\1,/g"         #在两个连续字符添加0x,




parafile_cxx_2ut()
{
FILENAME=$1
echo paring file to unittest [${FILENAME}] 

cat ${FILENAME} | sed .*



}




parafile_cxx_2ut  ${FILENAME}





echo done!!


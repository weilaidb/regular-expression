#!/bin/sh
SRCFILE=$1
DESTFILE=result.${SRCFILE}

REGEXP1="/^[[:space:]]*$/d"  #去除空行
REGEXP2=':label;N;s/\n//;b label'  ##去除换行符
REGEXP3="s/[a-z]/\u&/g"         #字符转换为大写
REGEXP4="s/\(\w\w\)/0x\1,/g"         #在两个连续字符添加0x,





if [ 0 -eq $# ];then
echo please input one file
exit
fi

echo "parsing file " $SRCFILE
echo "" > $DESTFILE
cat $SRCFILE |  sed  ${REGEXP1} | sed  ${REGEXP3} | sed  ${REGEXP4} >> $DESTFILE
echo "" >> $DESTFILE


# cat org | sed 's/\(\w\w\)/0x\1,/g' | sed  '/^[[:space:]]*$/d' | sed  's/[[:space:]]*//g'  | sed ':label;N;s/\n//;t label'  

##cat org | sed  ${REGEXP2}


# cat org | sed  ${REGEXP1} | sed  ${REGEXP3} | sed  ${REGEXP4}



echo "generate file " $DESTFILE

#!/bin/sh
SRCFILE=$1
DESTFILE=result.${SRCFILE}

if [ 0 -eq $# ];then
echo please input one file
exit
fi

echo "parsing file " $SRCFILE
echo "" > $DESTFILE
cat $SRCFILE | sed 's/\(\w\w\)/0x\1, /g' | sed  /^[[:space:]]*$/d >> $DESTFILE
echo "" >> $DESTFILE



echo "generate file " $DESTFILE

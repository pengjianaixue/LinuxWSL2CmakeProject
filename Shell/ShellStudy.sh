#!/usr/bin/bash
tst="12"
if [[ -z  ${tst} ]]; # 字符串为空
then
    echo "empty"
elif [[ -n  ${tst} ]]; # 字符串不为空 
then
     echo "not empty"
fi
#Calculate expr
a=100
b=200
echo $((a=a+b))
echo $((++a))
echo $((a*=a))
# shell 特殊变量
echo $0
echo $?
# quotes(引号)
# 单引号在shell中，类似于其他语言的raw字符串，引号中的所有字符都被当做普通字符，包括转义符(\),以及shell 中的变量标识符$
single_quotes='\aftertansfer
enterafter'
echo $single_quotes
#双引号在shell 中，会进行转义字符包括 转义字符，变量标识符$ ， 以及反引号(``)
double_quotes="\n $single_quotes `ls`"
echo $double_quotes #会删掉换行符和空格
echo "$double_quotes" #会保留换行符
#在shell 中双引号中可以保留单引号，反之亦然

single_quotes_include_double='"test"'

double_quotes_include_single="'test'"

#shell 中的命令替换

#使用反引号(不提倡使用)
lsecho=`ls -a`
echo $lsecho
#使用$(...)结构,提倡使用
lsecho=$(ls -a)
echo $lsecho
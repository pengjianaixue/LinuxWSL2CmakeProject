# 条件控制
# if 语句中，then 语句必须在新行,否者要使用命令分隔符；例如if [[ -z  "${name}" ]]；then ,这样就可以在同一行
echo "---------- start read input block ----------"
echo  -e "Please enter the name\n"
read name #获取用户输入
echo  -e "---------- end read input block ----------\n"
echo "*********** start Flow Control block ***********"
echo "---------- start if block ----------"
if [[ -z  "${name}" ]] # 字符串为空
then
    echo "empty"
elif [[ -n "${name}" ]] # 字符串不为空 
then
     echo "not empty"
fi
if [ $# -gt 0 ] #$# 大于0
then
    echo $*
elif [ $# -lt 2 ]#$# 小于 0
then
    echo "param number less than 2"
fi
echo -e "---------- end if block ----------\n"
# while 语句
echo "---------- start while block ----------"
loopNumber=10
while [ ${loopNumber} -gt 0 ] #${loopNumber} 大于0
do
    echo "loopNumber: ${loopNumber}"
    $((loopNumber-=1))
done
loopNumber=5
while (read line) && [ $loopNumber -gt 1 ] 
do
    echo $line
    $((loopNumber-=1))
done

echo -e "---------- end while block ----------\n"
# for 语句
echo "---------- start for block ----------"
loopNumber=10
for i in 1 2 3 4 5 6
do
    echo "loopIt： ${i}"
done
for fileItem in $(ls)
do
    echo "fileItem: ${fileItem}"
done
echo -e "---------- end for block ----------\n"

#case 语句
echo "---------- start case block ----------"
case $loopNumber in
    1) echo 1
    ;;
    2|3) echo 2 or 3
    ;;
    10)
    echo "10"
    ;;
    *) echo "default"
    ;;
esac
echo -e "---------- end case block ----------\n"

echo -e "*********** end Flow Control block ***********\n"
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

#awk
# awk 是包含一个BEGIN 语句 以及一个Pattern 以及一个 END 语句
# BEGIN 语句和END语句都只会在开始 以及结束执行一次
# BEGIN 和END 中间的语句 为 Pattern 语句，会在输入到awk 的每一行进行执行，所有非BEGIN 和 END 语句也都被视作Pattern 语句
# $n 是代表输入行的域，即字段，默认为以空格分隔,$0 为整行， $1 为第一个字段，$2 为第二个，以此类推
# awk 中的动作要用{} 进行包括，比如print 就是一个动作
# NF 为 awk 内置 变量，表示当前的行的字段数
# awk 也可以有条件控制if
# Pattern 常用的还有正则表达式 匹配 形式了 ~ /regexp/

# 条件控制
awkprint=$(ls -lSa | awk 'BEGIN {print "Start\n ----------- "} {if(NF>2 && $5==4096) print $9} END {print "----------- \nend-of-report"}')
# 正则表达式
awkprint=$(ls -lSa | awk 'BEGIN {print "Start\n ----------- "} {if($0 ~/-rwxr-xr-x/) print $9} END {print "----------- \nend-of-report"}')
echo "$awkprint"

#tee 命令
# 同时输出到文件和标准输出
ls -lSa | tee test.txt

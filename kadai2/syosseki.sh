#!/bin/bash
studentname="SHENGCHEN"
studentnumber="17745205"

checkfile(){
  echo ${dir}
  if [ -e ${dir}"/"$studentnumber ];then
    echo "第"${kaisu}"出席ファイルも存在しています"
  else
    echo "第"${kaisu}"出席フェイル存在しておりません"
    echo ${studentname} > ${dir}"/"${studentnumber}
    chmod 444 ${dir}"/"${studentnumber}
    echo "第"${kaisu}"会提出出来ました"
  fi
  cat ${dir}"/"${studentnumber}
}

checkdir(){
  if [ -e ${dir} ];then
    echo "第"${kaisu}"出席提出ディレクトリ存在してます"
    if [ -w ${dir} ];then
      echo "ディレクトリ書けます"
      checkfile
    else
      echo "ディレクトリ書けません"
    fi
  else
    echo "第"${kaisu}"提出ディレクトリ存在しておりません"
 fi
}

for((kaisu=1;kaisu<=15;kaisu++));do

 if [ ${kaisu} -lt 10 ];then
  dir="/home/attend/lesson0"${kaisu}
  echo ${dir}
  checkdir
 else
  dir="/home/attend/lesson"${kaisu}
  echo ${dir}
  checkdir
 fi
done;

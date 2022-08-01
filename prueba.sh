#!/bin/bash

SQL_HOST="192.168.100.53"
SQL_USER="root"
SQL_PASSWORD="temp123"
SQL_DATABASE="prueba"
SQL_ARGS="-h $SQL_HOST -u $SQL_USER --password=$SQL_PASSWORD -D $SQL_DATABASE -s -e"
declare -a StringArray=("192.168.100.52" "192.168.100.1" )
declare -a distros=("")

while :
do
for val in ${StringArray[@]}; 
do
  echo $val
  if ping -c 1 $val &> /dev/null
  then
    echo "Encendido"
    distros=(Encendido "${distros[@]}")
  else 
    echo "Apagado"
    distros=(Apagado "${distros[@]}")
  fi
done
echo ${distros[@]}
mysql $SQL_ARGS "INSERT INTO estados (servidor_1, servidor_2, fecha) VALUES ( '${distros[0]}', '${distros[1]}', now() );"
sleep 30
distros=("")
done
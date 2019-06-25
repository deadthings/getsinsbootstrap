#!/bin/bash
apt update && apt install zip unzip
fileid="1hALfM3T_qR5OIkHgslEIc7V2HHJKOLLm"
filename="bootstrap.dat.zip"
curl -c ./cookie -s -L "https://drive.google.com/uc?export=download&id=${fileid}" > /dev/null
curl -Lb ./cookie "https://drive.google.com/uc?export=download&confirm=`awk '/download/ {print $NF}' ./cookie`&id=${fileid}" -o ${filename}
unzip ${filename}
rm ${filename} cookie

#!/bin/bash
#rdl

merah=$(tput setaf 1)
ijo=$(tput setaf 2)
dasar=$(tput sgr0)
biru=$(tput setaf 4)

echo "${ijo}1.Base 64 ${dasar}"
echo -n "Masukan Pilihan : "

read pilihan 

 if [[ $pilihan = "1" ]]; then
 	echo "${biru}1.Decode ${dasar}"
 	echo "${merah}2.Encode ${dasar}"
 	echo "Anda akan apa ?"
 	read akan

 	if [[ $akan -eq 1 ]]; then
 		echo "Masukan yang akan di Decode : "
 		read decode
 		echo $decode | base64 --decode

 	elif [[ $akan -eq 2 ]]; then
 			echo "Masukan yang akan di encode : "
 			read encode
 			clear
 			echo $encode | base64
 	fi


 fi

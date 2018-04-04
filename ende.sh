#!/bin/bash
#rdl

merah=$(tput setaf 1)
ijo=$(tput setaf 2)
dasar=$(tput sgr0)
biru=$(tput setaf 4)


echo -e "${biru}              0000_____________0000________0000000000000000__000000000000000000+\n            00000000_________00000000______000000000000000__0000000000000000000+\n           000____000_______000____000_____000_______0000__00______0+\n          000______000_____000______000_____________0000___00______0+\n         0000______0000___0000______0000___________0000_____0_____0+\n         0000______0000___0000______0000__________0000___________0+\n         0000______0000___0000______0000_________000___0000000000+\n         0000______0000___0000______0000________0000+\n          000______000_____000______000________0000+\n           000____000_______000____000_______00000+\n            00000000_________00000000_______0000000+\n              0000_____________0000________000000007;${dasar}"

Ev
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

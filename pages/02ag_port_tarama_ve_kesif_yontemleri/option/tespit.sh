#!/bin/bash

banner() {
clear
printf "\n"
printf "\n"
printf "\e[1;77m   _   _   _   _   _   _   _     _   _   _   _   _   _   _     _   _   _   _   _   _   _  \e[0m\n"
printf "\e[1;77m  / \ / \ / \ / \ / \ / \ / \   / \ / \ / \ / \ / \ / \ / \   / \ / \ / \ / \ / \ / \ / \ \e[0m\n"
printf "\e[1;77m ( İ ( ş ( l ( e ( t ( i ( m ) ( S ( i ( s ( t ( e ( m ( i ) ( T ( e ( s ( p ( i ( t ( i )\e[0m\n"
printf "\e[1;77m  \_/ \_/ \_/ \_/ \_/ \_/ \_/   \_/ \_/ \_/ \_/ \_/ \_/ \_/   \_/ \_/ \_/ \_/ \_/ \_/ \_/ \e[0m\n"

printf "\n"
printf "\e[1;93m           .:.:.\e[0m\e[1;77m Cyber Security Tool coded by:  𝑪 𝒆 𝒚 𝒔  \e[0m\e[1;93m.:.:.\e[0m\n"
printf "\n"
printf "  \e[101m\e[1;77m::   		İşletim Sistemi Tespiti yapan kısımdır!                      ::\e[0m\n"
printf "  \e[101m\e[1;77m::        Geliştirici herhangi bir zarardan sorumlu değildir!               ::\e[0m\n"
printf "\n" 
printf "\n" 

}

menu(){ # Ana Menü Görünümü ve Seçenekler
printf " \e[101m\e[1;77m														\e[0m\n"
printf "\e[	1;92m[\e[0m\e[1;77m00\e[0m\e[1;92m]\e[0m\e[1;93m 	GERİ \n"
printf "\e[	1;92m[\e[0m\e[1;77m01\e[0m\e[1;92m]\e[0m\e[1;93m 	Normal Tarama \n"
printf "\e[	1;92m[\e[0m\e[1;77m02\e[0m\e[1;92m]\e[0m\e[1;93m 	Detaylı Tarama \n"
printf "\e[	1;92m[\e[0m\e[1;77m03\e[0m\e[1;92m]\e[0m\e[1;93m 	Portu açık olan sistem tespiti \n"
printf "\e[	1;92m[\e[0m\e[1;77m04\e[0m\e[1;92m]\e[0m\e[1;93m 	Belli miktarda sistem tarama \n"
printf "\e[	1;92m[\e[0m\e[1;77m99\e[0m\e[1;92m]\e[0m\e[1;93m 	ÇIKIŞ \n"
printf " \e[101m\e[1;77m														\e[0m\n"
read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Bir Seçenek Seçiniz! \e[0m\en' option

#seçimler

if [[ $option == 99 ]]; then

exit 1


elif [[ $option == 0 || $option == 00 ]]; then
cd $HOME/cyberhunter/pages/02ag_port_tarama_ve_kesif_yontemleri
clear
bash agportkesif.sh

#Normal Tarama
elif [[ $option == 1 || $option == 01 ]]; then
read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Bir IP  giriniz!(192.168.227.0) \e[0m\en' ip
nmap -O ip

#Detaylı Tarama
elif [[ $option == 2 || $option == 02 ]]; then
read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Bir IP  giriniz!(192.168.227.0) \e[0m\en' ip
nmap -O --osscan-guess ip


#Portu açık olan sistem tespiti
elif [[ $option == 3 || $option == 03 ]]; then
read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Bir IP  giriniz!(192.168.227.0/24) \e[0m\en' ip
nmap -O --osscan-limit ip


#Belli miktarda sistem tarama
elif [[ $option == 4 || $option == 04 ]]; then
read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Bir IP  giriniz!(192.168.227.0/24) \e[0m\en' ip
read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Bir sayı giriniz! \e[0m\en' adet
nmap -O --osscan-retries adet ip


else 
printf "\e[1;93m [!] Yanlış bir seçenek seçtiniz. Lütfen tekrar deneyiniz! \e[0m\n"

sleep 1
clear
banner
menu
fi

}
banner
menu


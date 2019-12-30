#!/bin/bash

banner() {
clear
printf "\n"
printf "\n"
printf "\e[1;77m ____  __   ____   __   _  _   __     ____  ____  ___  ____  __ _  ____  __ _  __    ____  ____  __  \e[0m\n"
printf "\e[1;77m(_  _)/ _\ (  _ \ / _\ ( \/ ) / _\   / ___)(  __)/ __)(  __)(  ( \(  __)(  / )(  )  (  __)(  _ \(  ) \e[0m\n"
printf "\e[1;77m  )( /    \ )   //    \/ \/ \/    \  \___ \ ) _)( (__  ) _) /    / ) _)  )  ( / (_/\ ) _)  )   / )(  \e[0m\n"
printf "\e[1;77m (__)\_/\_/(__\_)\_/\_/\_)(_/\_/\_/  (____/(____)\___)(____)\_)__)(____)(__\_)\____/(____)(__\_)(__) \e[0m\n"
printf "\n"
printf "\e[1;93m       .:.:.\e[0m\e[1;77m Cyber Security Tool coded by:  𝑪 𝒆 𝒚 𝒔   \e[0m\e[1;93m.:.:.\e[0m\n"
printf "\n"
printf "  \e[101m\e[1;77m::    Tarama Seçeneklerinin Bulunduğu kısımdır!    ::\e[0m\n"
printf "  \e[101m\e[1;77m:: Geliştirici herhangi bir zarardan sorumlu değildir! ::\e[0m\n"
printf "\n"

}


menu(){ 
# Ana Menü Görünümü ve Seçenekler

printf " \e[101m\e[1;77m														\e[0m\n"
printf "\e[	1;92m[\e[0m\e[1;77m00\e[0m\e[1;92m]\e[0m\e[1;93m 	GERİ \n"
printf "\e[	1;92m[\e[0m\e[1;77m01\e[0m\e[1;92m]\e[0m\e[1;93m 	TCP SYN Scan \n"
printf "\e[	1;92m[\e[0m\e[1;77m02\e[0m\e[1;92m]\e[0m\e[1;93m 	ACK Scan \n"
printf "\e[	1;92m[\e[0m\e[1;77m03\e[0m\e[1;92m]\e[0m\e[1;93m 	FİN Scan \n"
printf "\e[	1;92m[\e[0m\e[1;77m04\e[0m\e[1;92m]\e[0m\e[1;93m 	Window Scan \n"
printf "\e[	1;92m[\e[0m\e[1;77m05\e[0m\e[1;92m]\e[0m\e[1;93m 	TCP Connect Scan \n"
printf "\e[	1;92m[\e[0m\e[1;77m06\e[0m\e[1;92m]\e[0m\e[1;93m 	Ping Scan \n"
printf "\e[	1;92m[\e[0m\e[1;77m07\e[0m\e[1;92m]\e[0m\e[1;93m 	UDP Scan \n"
printf "\e[	1;92m[\e[0m\e[1;77m08\e[0m\e[1;92m]\e[0m\e[1;93m 	Version Detection / SynCookie Bypass \n"
printf "\e[	1;92m[\e[0m\e[1;77m09\e[0m\e[1;92m]\e[0m\e[1;93m 	IP Protocol Scan \n"
printf "\e[	1;92m[\e[0m\e[1;77m99\e[0m\e[1;92m]\e[0m\e[1;93m 	ÇIKIŞ \n"
printf " \e[101m\e[1;77m														\e[0m\n"
read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Bir Seçenek Seçiniz! \e[0m\en' option

if [[ $option == 99 ]]; then
exit 1


elif [[ $option == 0 || $option == 00 ]]; then
cd $HOME/cyberhunter/pages/02ag_port_tarama_ve_kesif_yontemleri
clear
bash agportkesif.sh

#TCP SYN Scan
elif [[ $option == 1 || $option == 01 ]]; then
read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Bir Ip Adresi giriniz! \e[0m\en' ip
nmap -sS ip

#ACK Scan
elif [[ $option == 2 || $option == 02 ]]; then
read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Bir Ip Adresi giriniz! \e[0m\en' ip
read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Bir port numarası giriniz! (-p5432)\e[0m\en' port
nmap -sA ip port

#FIN Scan
elif [[ $option == 3 || $option == 03 ]]; then
read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Bir Ip Adresi giriniz! \e[0m\en' ip
read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Bir port numarası giriniz! (-p5432)\e[0m\en' port
nmap -sF ip port

#Window Scan
elif [[ $option == 4 || $option == 04 ]]; then
read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Bir Ip Adresi giriniz! \e[0m\en' ip
nmap -sW ip

#TCP Connect Scan
elif [[ $option == 5 || $option == 05 ]]; then
read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Bir Ip Adresi giriniz! \e[0m\en' ip
nmap -sT ip

#Ping Scan
elif [[ $option == 6 || $option == 06 ]]; then
read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Bir Ip Adresi giriniz! \e[0m\en' ip
nmap -sP ip

#UDP Scan
elif [[ $option == 7 || $option == 07 ]]; then
read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Bir Ip Adresi giriniz! \e[0m\en' ip
nmap -sU ip

#Version Detection / SynCookie Bypass
elif [[ $option == 8 || $option == 08 ]]; then
read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Bir Ip Adresi giriniz! \e[0m\en' ip
nmap -sV ip
nmap -sV -p21 ip

#IP Protocol Scan
elif [[ $option == 9 || $option == 09 ]]; then
read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Bir Ip Adresi giriniz! \e[0m\en' ip
nmap -sO ip


else 
printf "\e[1;93m [!] Yanlış bir seçenek seçtiniz. Lütfen tekrar deneyiniz! \e[0m\n"

sleep 1
clear
menu
fi


}

banner
menu


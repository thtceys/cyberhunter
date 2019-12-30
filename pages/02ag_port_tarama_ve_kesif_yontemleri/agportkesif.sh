#!/bin/bash

banner() {
printf "\n"
printf "\n"
printf "\e[1;77m   _   _   _   _   _   _   _     _   _   _   _   _   _   _   _   _   _   _   _     _   _   _   _   _   _   _   _   _   _  \e[0m\n"
printf "\e[1;77m  / \ / \ / \ / \ / \ / \ / \   / \ / \ / \ / \ / \ / \ / \ / \ / \ / \ / \ / \   / \ / \ / \ / \ / \ / \ / \ / \ / \ / \ \e[0m\n"
printf "\e[1;77m ( A ( g ( - ( P ( o ( r ( t ) ( T ( a ( r ( a ( m ( a ( - ( K ( e ( s ( i ( f ) ( Y ( o ( n ( t ( e ( m ( l ( e ( r ( i )\e[0m\n"
printf "\e[1;77m  \_/ \_/ \_/ \_/ \_/ \_/ \_/   \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/   \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \e[0m\n"

printf "\n"
printf "\e[1;93m       .:.:.\e[0m\e[1;77m Cyber Security Tool coded by:  𝑪 𝒆 𝒚 𝒔  \e[0m\e[1;93m.:.:.\e[0m\n"
printf "\n"
printf "  \e[101m\e[1;77m::   Ağ, Port Tarama ve Keşif Yöntemleri Araçlarının Bulunduğu kısımdır!    ::\e[0m\n"
printf "  \e[101m\e[1;77m::        Geliştirici herhangi bir zarardan sorumlu değildir!               ::\e[0m\n"
printf "\n" 
printf "\n" 

}

menu(){ # Ana Menü Görünümü ve Seçenekler
printf " \e[101m\e[1;77m														\e[0m\n"
printf "\e[	1;92m[\e[0m\e[1;77m00\e[0m\e[1;92m]\e[0m\e[1;93m 	GERİ \n"
printf "\e[	1;92m[\e[0m\e[1;77m01\e[0m\e[1;92m]\e[0m\e[1;93m 	Host Keşfi \n"
printf "\e[	1;92m[\e[0m\e[1;77m02\e[0m\e[1;92m]\e[0m\e[1;93m 	Tarama Seçenekleri \n"
printf "\e[	1;92m[\e[0m\e[1;77m03\e[0m\e[1;92m]\e[0m\e[1;93m 	İşletim Sistemi Tespiti \n"
printf "\e[	1;92m[\e[0m\e[1;77m04\e[0m\e[1;92m]\e[0m\e[1;93m 	Hping3 \n"
printf "\e[	1;92m[\e[0m\e[1;77mB\e[0m\e[1;92m]\e[0m\e[1;93m 	Seçenekler hakkında bilgi alma  \n"
printf "\e[	1;92m[\e[0m\e[1;77m99\e[0m\e[1;92m]\e[0m\e[1;93m 	ÇIKIŞ \n"
printf " \e[101m\e[1;77m														\e[0m\n"
read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Bir Seçenek Seçiniz! \e[0m\en' option

#seçimler

if [[ $option == 99 ]]; then

exit 1


elif [[ $option == 0 || $option == 00 ]]; then
cd $HOME/cyberhunter/
clear
bash cyberhunter.sh

#hostkesfi
elif [[ $option == 1 || $option == 01 ]]; then
read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Bir hız giriniz!(-T1...-T5 şeklinde) \e[0m\en' hiz
read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Bir IP  giriniz!(192.168.227.0/24) \e[0m\en' ip
nmap -sP hiz ip

#taramasecenekleri
elif [[ $option == 2 || $option == 02 ]]; then
cd $HOME/cyberhunter/pages/02ag_port_tarama_ve_kesif_yontemleri/option
bash taramasecenekleri.sh

#İşletim Sistemi Tespiti
elif [[ $option == 3 || $option == 03 ]]; then
cd $HOME/cyberhunter/pages/02ag_port_tarama_ve_kesif_yontemleri/option
bash tespit.sh

#Hping3
elif [[ $option == 4 || $option == 04 ]]; then
hping3 -h

#bilgi
elif [[ $option == 'b' || $option == 'B' ]]; then
cd $HOME/cyberhunter/pages/02ag_port_tarama_ve_kesif_yontemleri
gedit bilgi
clear

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


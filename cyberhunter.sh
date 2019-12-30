#!/bin/bash

trap 'printf "\n";stop;exit 1' 2
banner() {
clear
printf "\n\n"
printf "\e[1;77m ▄████▄  ▓██   ██▓ ▄▄▄▄   ▓█████  ██▀███      ██░ ██  █    ██  ███▄    █ ▄▄▄█████▓▓█████  ██▀███  \e[0m\n"
printf "\e[1;77m▒██▀ ▀█   ▒██  ██▒▓█████▄ ▓█   ▀ ▓██ ▒ ██▒   ▓██░ ██▒ ██  ▓██▒ ██ ▀█   █ ▓  ██▒ ▓▒▓█   ▀ ▓██ ▒ ██▒\e[0m\n"
printf "\e[1;77m▒▓█    ▄   ▒██ ██░▒██▒ ▄██▒███   ▓██ ░▄█ ▒   ▒██▀▀██░▓██  ▒██░▓██  ▀█ ██▒▒ ▓██░ ▒░▒███   ▓██ ░▄█ ▒\e[0m\n"
printf "\e[1;77m▒▓▓▄ ▄██▒  ░ ▐██▓░▒██░█▀  ▒▓█  ▄ ▒██▀▀█▄     ░▓█ ░██ ▓▓█  ░██░▓██▒  ▐▌██▒░ ▓██▓ ░ ▒▓█  ▄ ▒██▀▀█▄  \e[0m\n"
printf "\e[1;77m▒ ▓███▀ ░  ░ ██▒▓░░▓█  ▀█▓░▒████▒░██▓ ▒██▒   ░▓█▒░██▓▒▒█████▓ ▒██░   ▓██░  ▒██▒ ░ ░▒████▒░██▓ ▒██▒\e[0m\n"
printf "\e[1;77m░ ░▒ ▒  ░   ██▒▒▒ ░▒▓███▀▒░░ ▒░ ░░ ▒▓ ░▒▓░    ▒ ░░▒░▒░▒▓▒ ▒ ▒ ░ ▒░   ▒ ▒   ▒ ░░   ░░ ▒░ ░░ ▒▓ ░▒▓░\e[0m\n"
printf "\e[1;77m  ░  ▒    ▓██ ░▒░ ▒░▒   ░  ░ ░  ░  ░▒ ░ ▒░    ▒ ░▒░ ░░░▒░ ░ ░ ░ ░░   ░ ▒░    ░     ░ ░  ░  ░▒ ░ ▒░\e[0m\n"
printf "\e[1;77m░         ▒ ▒ ░░   ░    ░    ░     ░░   ░     ░  ░░ ░ ░░░ ░ ░    ░   ░ ░   ░         ░     ░░   ░ \e[0m\n"
printf "\e[1;77m░ ░       ░ ░      ░         ░  ░   ░         ░  ░  ░   ░              ░             ░  ░   ░     \e[0m\n"
printf "\e[1;77m░         ░ ░           ░                                                                 v1.0    \e[0m\n"
printf "\n"
printf "\e[1;93m       .:.:.\e[0m\e[1;77m Cyber Security Tool coded by:  𝑪 𝒆 𝒚 𝒔 \e[0m\e[1;93m.:.:.\e[0m\n"
printf "\n"
printf "  \e[101m\e[1;77m::       .:Türk Yapımı Siber Güvenlik Aracı:.          ::\e[0m\n"
printf "  \e[101m\e[1;77m:: Geliştirici herhangi bir zarardan sorumlu değildir! ::\e[0m\n"
printf "\n"
}

menu(){ # Ana Menü Görünümü ve Seçenekler


printf "\e[1;92m[\e[0m\e[1;77m01\e[0m\e[1;92m]\e[0m\e[1;93m Bilgi Toplama Araçları \n"
printf "\e[1;92m[\e[0m\e[1;77m02\e[0m\e[1;92m]\e[0m\e[1;93m Ağ, Port Tarama ve Keşif Yöntemleri \n"
printf "\e[1;92m[\e[0m\e[1;77m03\e[0m\e[1;92m]\e[0m\e[1;93m Web Application Scanners \n"
printf "\e[1;92m[\e[0m\e[1;77m04\e[0m\e[1;92m]\e[0m\e[1;93m Web Exploitation Tools \n"
printf "\e[1;92m[\e[0m\e[1;77m05\e[0m\e[1;92m]\e[0m\e[1;93m Yerel Ağ Saldırıları \n"
printf "\e[1;92m[\e[0m\e[1;77m06\e[0m\e[1;92m]\e[0m\e[1;93m Kablosuz Ağlara Yönelik Saldırılar \n"
printf "\e[1;92m[\e[0m\e[1;77m07\e[0m\e[1;92m]\e[0m\e[1;93m Password Attacks \n"
printf "\e[1;92m[\e[0m\e[1;77m08\e[0m\e[1;92m]\e[0m\e[1;93m Favori Araçlar \n"
printf "\e[1;92m[\e[0m\e[1;77m99\e[0m\e[1;92m]\e[0m\e[1;93m ÇIKIŞ \n"

read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Bir Seçenek Seçiniz! \e[0m\en' option

#Seçenekleri seçme ve ilgili sayfalarına yönlendirme

if [[ $option == 99 ]]; then

exit 1

elif [[ $option == 1 || $option == 01 ]]; then
cd $HOME/cyberhunter/pages/01bilgi_toplama
clear
bash bilgi.sh

elif [[ $option == 2 || $option == 02 ]]; then
cd $HOME/cyberhunter/pages/02ag_port_tarama_ve_kesif_yontemleri
clear
bash agportkesif.sh

elif [[ $option == 3 || $option == 03 ]]; then
cd $HOME/cyberhunter/pages/03web_application_scanner
clear
bash webappscan.sh

elif [[ $option == 4 || $option == 04 ]]; then
cd $HOME/cyberhunter/pages/04web_exploitaton_tools
clear
bash webexptools.sh

elif [[ $option == 5 || $option == 05 ]]; then
cd $HOME/cyberhunter/pages/05yerel_ag_saldirilari
clear
bash yerelagsaldirilari.sh


elif [[ $option == 6 || $option == 06 ]]; then
cd $HOME/cyberhunter/pages/06kablosuz_aglara_yonelik_saldirilar
clear
bash kablosuzsaldirilar.sh

elif [[ $option == 7 || $option == 07 ]]; then
cd $HOME/cyberhunter/pages/07password_attacks
clear
bash passattaks.sh





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

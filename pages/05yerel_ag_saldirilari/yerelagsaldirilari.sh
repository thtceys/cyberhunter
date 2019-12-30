#!/bin/bash

banner() {
clear
printf "\n\n"
printf "\e[1;77m▀▄    ▄ ▄███▄   █▄▄▄▄ ▄███▄   █         ██     ▄▀         ▄▄▄▄▄   ██   █     ██▄   ▄█ █▄▄▄▄ ▄█ █     ██   █▄▄▄▄ ▄█ \e[0m\n"
printf "\e[1;77m  █  █  █▀   ▀  █  ▄▀ █▀   ▀  █         █ █  ▄▀          █     ▀▄ █ █  █     █  █  ██ █  ▄▀ ██ █     █ █  █  ▄▀ ██ \e[0m\n"
printf "\e[1;77m   ▀█   ██▄▄    █▀▀▌  ██▄▄    █         █▄▄█ █ ▀▄      ▄  ▀▀▀▀▄   █▄▄█ █     █   █ ██ █▀▀▌  ██ █     █▄▄█ █▀▀▌  ██ \e[0m\n"
printf "\e[1;77m   █    █▄   ▄▀ █  █  █▄   ▄▀ ███▄      █  █ █   █      ▀▄▄▄▄▀    █  █ ███▄  █  █  ▐█ █  █  ▐█ ███▄  █  █ █  █  ▐█ \e[0m\n"
printf "\e[1;77m ▄▀     ▀███▀     █   ▀███▀       ▀        █  ███                    █     ▀ ███▀   ▐   █    ▐     ▀    █   █    ▐ \e[0m\n"
printf "\e[1;77m                 ▀                        █                         █                  ▀               █   ▀       \e[0m\n"
printf "\e[1;77m                                         ▀                         ▀                                  ▀            \e[0m\n"
printf "\n"                                                                                                                                     
printf "\e[1;93m                                    .:\e[0m\e[1;77m Cyber Security Tool coded by:  𝑪 𝒆 𝒚 𝒔 \e[0m\e[1;93m:.\e[0m\n"                                               
printf "\n"
printf " \e[101m\e[1;77m::                           Yerel Ağ Saldırıları Araçlarının Bulunduğu Kısımdır!                            ::\e[0m\n"
printf " \e[101m\e[1;77m::                           Geliştirici herhangi bir zarardan sorumlu değildir!                             ::\e[0m\n"
printf "\n"  
printf "\n" 

}

menu(){ # Ana Menü Görünümü ve Seçenekler
printf " \e[101m\e[1;77m														\e[0m\n"
printf "\e[	1;92m[\e[0m\e[1;77m00\e[0m\e[1;92m]\e[0m\e[1;93m	 GERİ(Bir Önceki Menüye Döner) \n"
printf "\e[	1;92m[\e[0m\e[1;77m01\e[0m\e[1;92m]\e[0m\e[1;93m	 Arp Spoofing vd Sslstrip ile Araya Girme \n"
printf "\e[	1;92m[\e[0m\e[1;77m02\e[0m\e[1;92m]\e[0m\e[1;93m	 Dns Spoofing \n"
printf "\e[	1;92m[\e[0m\e[1;77m03\e[0m\e[1;92m]\e[0m\e[1;93m	 Girilen Web Sitelerini Log'lama \n"
printf "\e[	1;92m[\e[0m\e[1;77m04\e[0m\e[1;92m]\e[0m\e[1;93m	 Web Üzerinden Görünen Görselleri Kaydetme\n"
printf "\e[	1;92m[\e[0m\e[1;77m05\e[0m\e[1;92m]\e[0m\e[1;93m	 Ghost Phisler \n"
printf "\e[	1;92m[\e[0m\e[1;77m99\e[0m\e[1;92m]\e[0m\e[1;93m	 ÇIKIŞ \n"
printf " \e[101m\e[1;77m														\e[0m\n"
printf "\e[1;93m [!!!] Ağ kartından kaynaklanan sorun endeniyle version 2.0 ' da sizlerle... \e[0m\n"
read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Bir Seçenek Seçiniz! \e[0m\en' option

printf "\e[1;93m [!] Ağ kartından kaynaklanan sorun endeniyle version 2.0 ' da sizlerle... \e[0m\n"

#seçimler

if [[ $option == 99 ]]; then

exit 1


elif [[ $option == 0 || $option == 00 ]]; then
cd $HOME/cyberhunter/
clear
bash cyberhunter.sh

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


#!/bin/bash

banner() {
clear
printf "\n"
printf "\n"
printf "\e[1;77m             _                          _ _                 _                                                            \e[0m\n"
printf "\e[1;77m            | |                        | (_)           _   (_)                                                           \e[0m\n"
printf "\e[1;77m _ _ _  ____| | _      ____ ____  ____ | |_  ____ ____| |_  _  ___  ____      ___  ____ ____ ____  ____   ____  ____ ___ \e[0m\n"
printf "\e[1;77m| | | |/ _  ) || \    / _  |  _ \|  _ \| | |/ ___) _  |  _)| |/ _ \|  _ \    /___)/ ___) _  |  _ \|  _ \ / _  )/ ___)___)\e[0m\n"
printf "\e[1;77m| | | ( (/ /| |_) )  ( ( | | | | | | | | | ( (__( ( | | |__| | |_| | | | |  |___ ( (__( ( | | | | | | | ( (/ /| |  |___ |\e[0m\n"
printf "\e[1;77m \____|\____)____/    \_||_| ||_/| ||_/|_|_|\____)_||_|\___)_|\___/|_| |_|  (___/ \____)_||_|_| |_|_| |_|\____)_|  (___/ \e[0m\n"
printf "\e[1;77m                           |_|   |_|                                                                                     \e[0m\n"
printf "\n"
printf "\e[1;93m                        .:\e[0m\e[1;77m Cyber Security Tool coded by:  𝑪 𝒆 𝒚 𝒔  \e[0m\e[1;93m:.\e[0m\n"
printf "\n"
printf "  \e[101m\e[1;77m::   Web Uygulamalarının Tarama Araçlarının Bulunduğu kısımdır!    ::\e[0m\n"
printf "  \e[101m\e[1;77m::      Geliştirici herhangi bir zarardan sorumlu değildir!        ::\e[0m\n"
printf "\n" 
printf "\n" 

}

menu(){ # Ana Menü Görünümü ve Seçenekler

printf " \e[101m\e[1;77m														\e[0m\n"

printf "\e[	1;92m[\e[0m\e[1;77m00\e[0m\e[1;92m]\e[0m\e[1;93m 	GERİ(Bir Önceki Menüye Döner) \n"
printf "\e[	1;92m[\e[0m\e[1;77m01\e[0m\e[1;92m]\e[0m\e[1;93m 	W3af \n"
printf "\e[	1;92m[\e[0m\e[1;77m02\e[0m\e[1;92m]\e[0m\e[1;93m 	Vega \n"
printf "\e[	1;92m[\e[0m\e[1;77m03\e[0m\e[1;92m]\e[0m\e[1;93m 	Nikto \n"
printf "\e[	1;92m[\e[0m\e[1;77m04\e[0m\e[1;92m]\e[0m\e[1;93m 	JoomScan \n"
printf "\e[	1;92m[\e[0m\e[1;77m05\e[0m\e[1;92m]\e[0m\e[1;93m 	Wapiti \n"
printf "\e[	1;92m[\e[0m\e[1;77m06\e[0m\e[1;92m]\e[0m\e[1;93m 	SkipFish \n"
printf "\e[	1;92m[\e[0m\e[1;77m07\e[0m\e[1;92m]\e[0m\e[1;93m 	WpScan \n"
printf "\e[	1;92m[\e[0m\e[1;77m08\e[0m\e[1;92m]\e[0m\e[1;93m 	ProxyStrike \n"
printf "\e[	1;92m[\e[0m\e[1;77m09\e[0m\e[1;92m]\e[0m\e[1;93m 	UniScan \n"
printf "\e[	1;92m[\e[0m\e[1;77mB \e[0m\e[1;92m]\e[0m\e[1;93m 	Araçlar hakkında bilgi alma  \n"
printf "\e[	1;92m[\e[0m\e[1;77m99\e[0m\e[1;92m]\e[0m\e[1;93m 	ÇIKIŞ \n"

printf " \e[101m\e[1;77m														\e[0m\n"

read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Bir Seçenek Seçiniz! \e[0m\en' option

#seçimler

if [[ $option == 99 ]]; then

exit 1

#geri
elif [[ $option == 0 || $option == 00 ]]; then
cd $HOME/cyberhunter/
clear
bash cyberhunter.sh

#w3af
elif [[ $option == 1 || $option == 01 ]]; then
cd $HOME/cyberhunter/pages/03web_application_scanner
git clone https://github.com/andresriancho/w3af
printf "\e[1;93m [!] Kurulum Tamamlandı... \e[0m\n"
cd $HOME/cyberhunter/pages/03web_application_scanner/w3af
clear
printf "\e[1;92m[\e[0m\e[1;77m01\e[0m\e[1;92m]\e[0m\e[1;93m Aracı Konsolda Çalıştır \n"
printf "\e[1;92m[\e[0m\e[1;77m02\e[0m\e[1;92m]\e[0m\e[1;93m Aracı GUI'de Çalıştır \n"
printf "\e[1;92m[\e[0m\e[1;77m99\e[0m\e[1;92m]\e[0m\e[1;93m GERİ \n"
#printf "\e[1;93m [!] Bir Domain Giriniz! \e[0m\n"
read -p $'\n\e[1;93m [!] Bir Seçenek Giriniz! \e[0m\en' option
if [[ $option == 1 || $option == 01 ]]; then
#console
python w3af_console

elif [[ $option == 2 || $option == 02 ]]; then
#gui
python w3af_gui
printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Araç Çalıştırılıyor... \e[0m\en \n"
#geri
elif [[ $option == 99 ]]; then
cd $HOME/cyberhunter/pages/03web_application_scanner
clear
bash webappscan.sh

sleep 1 
clear
fi
#w3af sonlandı
#------------------------
#vega
elif [[ $option == 2 || $option == 02 ]]; then
vega

#Nikto
elif [[ $option == 3 || $option == 03 ]]; then 
cd $HOME/cyberhunter/pages/03web_application_scanner
git clone https://github.com/sullo/nikto
printf "\e[1;93m [!] Kurulum Tamamlandı... \e[0m\n"
cd $HOME/cyberhunter/pages/03web_application_scanner/nikto
printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Araç Çalıştırılıyor... \e[0m\en \n"
printf "\e[1;93m [!] Bir Domain Giriniz! \e[0m\n"
read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] http://www.example.com şeklinde olmalıdır.\e[0m\en \n' domain
nikto -h domain

#JoomScan
elif [[ $option == 4 || $option == 04 ]]; then
cd $HOME/cyberhunter/pages/03web_application_scanner
git clone https://github.com/rezasp/joomscan
printf "\e[1;93m [!] Kurulum Tamamlandı... \e[0m\n"
cd $HOME/cyberhunter/pages/03web_application_scanner/joomscan
printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Araç Çalıştırılıyor... \e[0m\en \n"
printf "\e[1;93m [!] Bir Domain Giriniz! \e[0m\n"
read -p $'\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] http://www.site.com şeklinde olmalıdır.\e[0m\en \n' domain
perl joomscan.pl -u domain

#Wapiti
elif [[ $option == 5 || $option == 05 ]]; then
cd $HOME/cyberhunter/pages/03web_application_scanner
git clone https://github.com/IFGHou/wapiti
printf "\e[1;93m [!] Kurulum Tamamlandı... \e[0m\n"
cd $HOME/cyberhunter/pages/03web_application_scanner/wapiti
printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Araç Çalıştırılıyor... \e[0m\en \n"
printf "\e[1;93m [!] Bir Domain Giriniz! \e[0m\n"
read -p $'\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] http://www.site.com şeklinde olmalıdır.\e[0m\en \n' domain
python make_exe.py domain

#SkipFish
elif [[ $option == 6 || $option == 06 ]]; then
cd $HOME/cyberhunter/pages/03web_application_scanner
git clone https://github.com/spinkham/skipfish
printf "\e[1;93m [!] Kurulum Tamamlandı... \e[0m\n"
cd $HOME/cyberhunter/pages/03web_application_scanner/skipfish
printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Araç Çalıştırılıyor... \e[0m\en \n"
#printf "\e[1;93m [!] Bir Domain Giriniz! \e[0m\n"
#read -p $'\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] http://www.site.com şeklinde olmalıdır.\e[0m\en \n' domain
skipfish -h

#WpScan
elif [[ $option == 7 || $option == 07 ]]; then
cd $HOME/cyberhunter/pages/03web_application_scanner
git clone https://github.com/wpscanteam/wpscan
printf "\e[1;93m [!] Kurulum Tamamlandı... \e[0m\n"
cd $HOME/cyberhunter/pages/03web_application_scanner/wpscan
printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Araç Çalıştırılıyor... \e[0m\en \n"
printf "\e[1;93m [!] Bir Domain Giriniz! \e[0m\n"
read -p $'\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] http://www.site.com şeklinde olmalıdır.\e[0m\en \n' domain
wpscan --url domain

#ProxyStrike
elif [[ $option == 8 || $option == 08 ]]; then
cd $HOME/cyberhunter/pages/03web_application_scanner
git clone https://github.com/bincker/proxystrike
printf "\e[1;93m [!] Kurulum Tamamlandı... \e[0m\n"
cd $HOME/cyberhunter/pages/03web_application_scanner/proxystrike
printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Araç Çalıştırılıyor... \e[0m\en \n"
python proxystrike.py


#UniScan
elif [[ $option == 9 || $option == 09 ]]; then
cd $HOME/cyberhunter/pages/03web_application_scanner
git clone https://github.com/poerschke/Uniscan
printf "\e[1;93m [!] Kurulum Tamamlandı... \e[0m\n"
cd $HOME/cyberhunter/pages/03web_application_scanner/Uniscan
printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Araç Çalıştırılıyor... \e[0m\en \n"
printf ""
read -p $'\e[1;93m [!] Bir Domain veya IP Giriniz! \e[0m\n' domain
perl uniscan.pl -u domain -qwds

#bilgi
elif [[ $option == 'b' || $option == 'B' ]]; then
cd $HOME/cyberhunter/pages/03web_application_scanner
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


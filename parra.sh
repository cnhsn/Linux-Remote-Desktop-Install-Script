#!/bin/sh
IP=$(ip addr | grep 'state UP' -A2 | tail -n1 | awk '{print $2}' | cut -f1  -d'/')
sudo apt-get update -y && sudo apt-get install xrdp -y && sudo apt-get install xfce4 -y && echo xfce4-session >~/.xsession && sudo apt-get install firefox -y && clear && sudo service xrdp restart
echo 
echo !!!!!!!!!!!!!!!!!!!!!!!!
echo !! Kurulum tamamlandi.!!
echo !!!!!!!!!!!!!!!!!!!!!!!!
echo
echo '           Kurulum Bilgileri'
echo '###########################################'
echo "   Sunucu adresi: $IP"
echo 'Kullanici adi ve sifreniz putty e giris yaptiginiz bilgilerle ayni.'
echo 'Parra'yi kullandiginiz icin tesekkurler.'
echo '###########################################'

exit

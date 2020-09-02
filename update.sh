#!/bin/bash

check=$(curl https://raw.githubusercontent.com/ZechBron/Nakaw-Load-Script-Generator/zNLSG/update)

zChB="Version 0.6"

if [ "$check" = "$zChB" ]; then
   echo -e "\e[32mThe latest version of NLSG is $check. Do you want to update NLSG (y/n)?"
   read opt

   if [ "$opt" = "y" ]; then
      rm -r README.md setup.sh zNLSG.sh
      cd -
      rm -rf Nakaw-Load-Script-Generator

      git clone https://github.com/ZechBron/Nakaw-Load-Script-Generator
      cd Nakaw-Load-Script-Generator
      chmod +x setup.sh
      chmod +x update.sh
      chmod +x zNLSG.sh

   elif [ "$opt" = "n" ]; then
      exit
   else
      echo -e "\e[31mWrong input. Please enter small letter y or n\e[0m"
   fi
else
   echo "The current version you are using is 0.5 There is no latest update."
fi

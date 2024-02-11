#!/bin/bash
clear
touch By_tienanh109
echo "
█ █▀▄▀█ █▀▀   ▀█▀ █▀█   █▀▀ █▀▄
█ █░▀░█ █▄█   ░█░ █▄█   █▄█ █▄▀"


echo ""
echo ""

echo -e "\e[1;33mNOTES: Move photos into this folder to convert, 500 =< pixels recommended\e[0m"
echo ""
echo -e "1 = \e[1;33mSetup\e[0m"
echo -e "2 = \e[1;33mRun\e[0m"
echo ""
echo "==================="
echo "Name: IMG to GD Converter"
echo "Version: V0.0.1_Alpha"
echo "For Android/Linux/Windows"
echo "By tienanh109 & Nodejs code by GDColon"
echo "==================="
echo ""
echo ""

read -p $'\e[1;32m> \e[0m' choice

case $choice in
    1)
        clear
        echo -e "\e[1;33mRunning...\e[0m"
        sleep 3
        clear
        echo "Create a new data..."
        rm ./Save/CCGameManager.dat
        rm ./Save/CCLocalLevels.dat
        cp ./Data/CCGameManager.dat ./Save
        cp ./Data/CCLocalLevels.dat ./Save
        clear
        echo -e "\e[1;33mUpdate...\e[0m"
        apt update -y
        pkg upgrade -y
        clear
        echo -e "\e[1;32mDone!\e[0m"
        clear
        echo -e "\e[1;32mInstalling NodeJs\e[0m"
        pkg install nodejs -y
        pkg install nodejs-lts -y
        clear
        echo -e "\e[1;32mDone! Download the required package...\e[0m"
        npm install jimp --no-bin-links
        clear
        echo -e "\e[1;32mSetup successful!\e[0m"
        clear
        sleep 3
        ;;
    2)
        clear
        echo -e "\e[1;33mRunning...\e[0m"
        echo "Create a new data..."
        rm ./Save/CCGameManager.dat
        rm ./Save/CCLocalLevels.dat
        cp ./Data/CCGameManager.dat ./Save
        cp ./Data/CCLocalLevels.dat ./Save
        sleep 2
        clear
        node ./Data/img.js
        echo -e "\e[1;32mDone!\e[0m"
        sleep 3
        clear
        ;;

    *)
        echo -e "\e[1;31mWrong!\e[0m"
        sleep 1.3
        Bash Main.sh
esac

# Reset to initial screen
clear
echo -e "\e[1;34mLoading...\e[0m"
bash Main.sh
# Add other initial screen content here

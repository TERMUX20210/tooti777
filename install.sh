#echo "NAME=$PROC" > ~/.username
TNAME="$PROC";
col=$(tput cols)
echo ;
#figlet -f ASCII-Shadow "$PROC" | lolcat;
bash ~/T-Header/.banner.sh ${col} ${TNAME}
echo "";
#echo -e '\e[0;35m+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+\e[00m';
#echo -e '\033[1;43;30m### SUBSCRIBE MY RUBIKA PAGE  ### \033[0m';
#echo -e '\e[0;35m+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+\e[00m';
echo "";
#This Script id created by TERMUX20210
#Don't copy or modify code Read License First
#Subscribe me on APARAT=> aparat.com/AMIR13870631
clear
echo ""
echo -e "         \e[1;91m__\e[1;92m,-\e[1;93m////\e[1;92m, "
echo -e "        \e[1;91m/__\e[1;92m) (\e[1;93mo\e[1;92m) ) "
echo -e "          /.,--. \       "
echo -e "         /,-'/.\. \      "
echo -e "         \.  \.\ \ \     "
echo -e "          \.  \\\ \  /   "
echo -e "      \e[1;93m=====\e[1;91m((\e[1;93m=\e[1;91m((\e[1;92m\\e[1;93m=====.=== "
echo -e "           \e[1;92m    \ \ \.\   "
echo -e "                \ \ \'     "
echo -e "                 \ \'      "
echo -e "                  \ \     "
echo -e "                   '-'    \e[1;97m "
echo ""
echo -e "\e[1;91m [+] created by: \e[1;92mAMIR"
echo -e "\e[1;91m [+] Github: \e[1;92mTERMUX20210\e[1;97m"
echo ""
read -p " Does you want to install Parrot Shell in Termux?(Yes/No) : " input

if [[ $input == Yes || $input == yes || $input == y || $input == Y ]]; then
    clear
    cp bash.bashrc $HOME
    cd /data/data/com.termux/files/usr/etc
    rm -rf motd
    rm -rf bash.bashrc
    cd $HOME
    mv bash.bashrc /data/data/com.termux/files/usr/etc
    echo -e "\e[1;91mSuccessfully Installed"
    echo -e "Restart Termux"
    exit  3
elif [[ $input == No || $input == no || $input == n || $input == N ]]; then
exit 2
else
echo -e "\e[1;91mInvalid Option"
exit 1
fi

clear
#echo "NAME=$PROC" > ~/.username
TNAME="$PROC";
col=$(tput cols)
echo ;
#figlet -f ASCII-Shadow "$PROC" | lolcat;
bash ~/T-Header/.banner.sh ${col} ${TNAME}
echo "";
#echo -e '\e[0;35m+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+\e[00m';
#echo -e '\033[1;43;30m### SUBSCRIBE MY RUBIKA PAGE ^__^ ### \033[0m';
#echo -e '\e[0;35m+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+\e[00m';
echo "";
echo -e "
command_not_found_handle() {
             /data/data/com.termux/files/usr/libexec/termux/command-not-found "$1"
}
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

PS1='\[\e[91m\]┌─[\[\e[97m\]\T\[\e[91m\]]─────\e[1;91m[\e[1;92m$TNAME\e[1;91m]\e[0;91m───[\e[1;96m\#\e[1;91m]\n|\n\e[0;91m└─[\[\e[91m\]\e[0;95m\W\[\e[91m\]]──►\e[1;93m'

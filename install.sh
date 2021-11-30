read -p "Pleas enter Name : " PROC
tput sgr 0
if [[ ${#PROC} -gt 8 ]]; then
	echo -e "\e[1;34m[*] \033[32mToo long  characters You have input...\033[0m"
	echo ""
	echo -e "\033[32mPlz enter less than \033[33m9 \033[32mcharacters Name\033[0m" | pv -qL 10;
	echo ""
	sleep 4
	clear
echo -e "\033[01;32m
Remo773 (2020)
	menu
+---------------------------*/
.......Terminal-Header......
+---------------------------*/
oh-my-zsh users only....
\033[0m";
	echo ""
	echo -e "\e[1;34m \033[32mPlease enter less than 9 characters...\033[0m"
	echo ""
else
	ok=1
fi
clear
#echo "NAME=$PROC" > ~/.username
TNAME="$PROC";
col=$(tput cols)
echo ;
#figlet -f ASCII-Shadow "$PROC" | lolcat;
bash ~/T-Header/.banner.sh ${col} ${TNAME}
echo "";
#echo -e '\e[0;35m+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+\e[00m';
#echo -e '\033[1;43;30m### SUBSCRIBE MY YOUTUBE CHANNEL ### \033[0m';
#echo -e '\e[0;35m+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+\e[00m';
echo "";
echo -e "
\033[0;31m┌─[\033[1;34m$TNAME\033[1;33m@\033[1;36mtermux\033[0;31m]─[\033[0;32m~${PWD/#"$HOME"}\033[0;31m]
\033[0;31m└──╼ \e[1;31m❯\e[1;34m❯\e[1;90m❯\033[0m "

tput setaf 3
read -p  "Do you want to setup this ? (y/n) " PROC32
tput sgr 0
if [[ ${PROC32} == [Y/y] ]]; then
	if [ -e $HOME/t-header.txt ]; then
		rm $HOME/t-header.txt;
	fi

	if [ -d $HOME/T-Header ]; then
	cd $HOME/T-Header
	fi
#if [ -e $HOME/.zshrc ]; then
#	rm -rf ~/.zshrc
#else
cat >> ~/.zshrc <<-EOF
tput cnorm
clear
## terminal banner
#figlet -f ASCII-Shadow.flf "$PROC" | lolcat;
echo
## cursor
printf '\e[4 q'
## prompt
TNAME="$PROC"
setopt prompt_subst
PROMPT=$'
%{\e[0;31m%}┌─[%{\e[1;34m%}%B%{\${TNAME}%}%{\e[1;33m%}@%{\e[1;36m%}termux%b%{\e[0;31m%}]─[%{\e[0;32m%}%(4~|/%2~|%~)%{\e[0;31m%}]%b
%{\e[0;31m%}└──╼ %{\e[1;31m%}%B❯%{\e[1;34m%}❯%{\e[1;90m%}❯%{\e[0m%}%b '
## Replace 'ls' with 'exa' (if available) + some aliases.
if [ -n "\$(command -v exa)" ]; then
        alias l='exa'
        alias ls='exa'
        alias l.='exa -d .*'
        alias la='exa -a'
        alias ll='exa -Fhl'
        alias ll.='exa -Fhl -d .*'
else
        alias l='ls --color=auto'
        alias ls='ls --color=auto'
        alias l.='ls --color=auto -d .*'
        alias la='ls --color=auto -a'
        alias ll='ls --color=auto -Fhl'
        alias ll.='ls --color=auto -Fhl -d .*'
fi
## Safety.
alias cp='cp -i'
alias ln='ln -i'
alias mv='mv -i'
alias rm='rm -i'
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=39'
ZSH_HIGHLIGHT_STYLES[comment]=fg=226,bold
cols=\$(tput cols)
bash ~/.banner.sh \${cols} \${TNAME}
EOF
#fi
COPY_FILES
chsh -s zsh;
else
	echo -e "\033[32mHope you like my work..\033[0m"
fi
exit
}

clear;
echo -e "\033[31m$(figlet -f Remo773 "T- Header")\e[0m"
echo -e "\e[1;32m
+----------------------------------*/
Remo773 : (\e[33m14.4.2021\e[32m)
1. Oh-my-zsh
2. Zsh-syntax-highlight (\e[33mplugins\e[01;32m)
3. Zsh-command-autosuggest (\e[33mplugins\e[01;32m)
4. Terminal-Header
5. Custom PS1 prompt ( \e[33mBest one\e[1;32m )
+----------------------------------*/
\033[0m";
tput setaf 3;
read -p  "Do you want to setup this ? (y/n) " PROC33

tput sgr 0
if [[ ${PROC33} == [Y/y] ]]; then


ozsh=0
if [ -d $HOME/.oh-my-zsh ]; then
	(rm -rf $HOME/.oh-my-zsh/) &> /dev/null
	(rm $HOME/.zshrc) &> /dev/null
elif [ -d $HOME/.zsh ]; then
	(rm -rf $HOME/.zsh) &> /dev/null
else
	echo -e "\e[1;34m[*] \e[32mYou hvnt oh-my-zsh...\e[0m";
fi
while [ $ozsh = 0 ];
do
	echo -e "\e[1;34m[*] \e[32mOh-my-zsh new setup....\e[0m";
	echo "";

	( rm -rf ~/.zshrc;git clone --depth 1 git://github.com/robbyrussell/oh-my-zsh.git $HOME/.oh-my-zsh;cp "$HOME/.oh-my-zsh/templates/zshrc.zsh-template" "$HOME/.zshrc";termux-wake-unlock; ) &> /dev/null & spin;
	chsh -s zsh;
if [ -d $HOME/.oh-my-zsh ];
then
	ozsh=1
else
	echo -e "\e[1;34m[*] \e[32mdownload fail no.2..i ll try again..\e[0m";

fi
done

echo -e "\e[1;34m[*] \e[32mZsh-autosuggestion plugins setup..\e[0m";

zshau=0
(rm -rf ~/.plugins) &> /dev/null

mkdir -p ~/.plugins/zsh-autosuggestions
mkdir -p ~/.plugins/zsh-syntax-highlighting
#cd $HOME/.plugins/

while [ $zshau = 0 ];
do
	( git clone --depth 1 https://github.com/zsh-users/zsh-autosuggestions.git ~/.plugins/zsh-autosuggestions; echo "source ~/.plugins/zsh-autosuggestions/zsh-autosuggestions.zsh" >> $HOME/.zshrc; ) &> /dev/null & spin
	if [ -d $HOME/.plugins/zsh-autosuggestions ];
then
	zshau=1

else

echo -e "\e[1;34m[*] \e[32mdownload fail..i ll try again..\e[0m";

fi
done
zshsyx=0

#cd $HOME/.plugins/

while [ $zshsyx = 0 ];
do
echo -e "\e[1;34m[*] \e[32mZsh-syntax-highlighter setup....\e[0m";
	( git clone --depth 1 https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.plugins/zsh-syntax-highlighting; echo "source ~/.plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> $HOME/.zshrc; ) &> /dev/null & spin

if [ -d $HOME/.plugins/zsh-syntax-highlighting ];then
	zshsyx=1
else
	echo -e "\e[1;34m[*] \e[32mdownload fail..i ll try again..\e[0m";

fi
done




	THEADER
	
	
else
	echo -e "\e[1;34m[*] \033[32mHope you like my work..\033[0m"
	exit
fi
exit 0
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

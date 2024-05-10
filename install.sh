if [ "$EUID" -ne 0 ];then
	echo "Please run as root."
	exit 0
fi
confirm=""
echo "Welcome to the TerminalGoogle Setup"
read -p "Would you like to install it (Y/n)? " confirm
if [ $confirm == "y" ] | [ $confirm == "Y" ];then 
	echo "Compiling Code..."
	make
	make clean
	echo "Installing..."
	make install
	echo "Done! You may now run it by typing: tgoogle <search>"
	echo "To remove, run the uninstall.sh script."
        exit 0
fi
echo "Abort."

if [ "$EUID" -ne 0 ];then
	echo "Please run as root."
	exit 0
fi

echo "Welcome to the TerminalGoogle Setup"
echo "Compiling Code..."
make
rm *.o
echo "Installing..."
sudo make install

echo "Done! You may now run it by typing: tgoogle <search>"
echo "To remove, run the uninstall.sh script"

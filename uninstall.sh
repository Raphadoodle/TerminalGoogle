if [ "$EUID" -ne 0 ];then 
    echo "Please run as root."
    exit 0
fi

confirm=""
read -p "Are you sure (Y/n)? " confirm


if [ $confirm == "y" ] | [ confirm == "Y" ];then
    echo "Removing..."
    rm "/usr/local/bin/tgoogle"
    echo "Successfully removed."
fi

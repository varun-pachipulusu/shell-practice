userid =$(id -u)

if [userid -ne 0]

echo "please run the script with root user access"

fi

echo "installing nginx"
dnf install ngnix -y
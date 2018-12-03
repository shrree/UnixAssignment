echo -e  "\nCHECKING THE Network CONNECTIVITY \n"
if ping -q -c 1 -W 1 www.google.com >/dev/null; then
echo "network is up"
else
echo "network is down"
fi


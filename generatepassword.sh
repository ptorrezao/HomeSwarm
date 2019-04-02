sudo apt-get install apache2-utils -qqy
echo $(htpasswd -nbB $1 "$2") | sed -e s/\\$/\\$\\$/g
apt-get update
apt-get install -y apache2
service apache2 start
if ! [ -L /var/www ]; then
  rm -rf /var/www
  ln -fs /vagrant /var/www
fi
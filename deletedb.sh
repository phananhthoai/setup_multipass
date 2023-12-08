dpkg -l | grep mysql
sudo apt purge mysql-client-8.0 -y
sudo apt purge mysql-server-8.0 -y
sudo apt purge mysql-common -y
sudo apt purge mysql-server -y
sudo apt purge mysql-client-core-8.0 -y
sudo apt purge mysql-server-core-8.0 -y
sudo rm -rf /etc/mysql
sudo rm -rf /var/lib/mysql
sudo rm -rf /u01/share/mysql
sudo service mysql status

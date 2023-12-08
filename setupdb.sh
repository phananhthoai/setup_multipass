set -x

sudo apt update
sudo systemctl status mysql

a=$(nc -z localhost 3306 && echo "OK")
echo $a
if [ -z $a ]; then
  sudo apt install mysql-server -y
  sudo mv /var/lib/mysql /u01/share/mysql  
fi
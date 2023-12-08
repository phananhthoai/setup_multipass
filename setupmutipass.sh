echo "Today is" `date`

printf "CPU: "
read cpu
printf "Memory: "
read memory
printf "Disk: "
read disk
printf "Hostname: "                      
read hostname

multipass launch -c "${cpu}" -m "${memory}G" -d "${disk}G" -n "${hostname}" 20.04

ip_address=$(multipass exec "${hostname}" -- hostname -I)
#trim_string()
#{
 #   Usage: trim_string "   example   string    "
    #trim_string "${ip_address}"
    #: "${1#"${1%%[![:space:]]*}"}"
    #: "${_%"${_##*[![:space:]]}"}"
    #printf "%s\n" "$_"
#}
echo "$ip_address"
multipass shell "${hostname}"
#sudo apt update
#sudo apt install micro -y
#sudo passwd ubuntu
#sudo systemctl restart ssh
#ip="$_"
#while ! nc -z "${ip}" 22; do
 # sleep 1
#done

#ssh-keyscan -H "${ip_address}" | tee -a ~/.ssh/known_hosts

#ssh ubuntu@"${ip_address}"

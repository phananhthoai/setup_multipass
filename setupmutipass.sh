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
echo "$ip_address"
multipass shell "${hostname}"

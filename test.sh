set -x

if [ -z "$(which docker)" ]; then
  sudo apt update
  sudo apt install docker.io -y
  sudo usermod -aG docker ubuntu
 
fi

if [ -z "$(docker service ls | grep portainer_portainer)" ]; then
 sudo docker stack deploy -c ./portainer.yml portainer
fi

if [ -z "$(docker service ls | grep traefik_traefik)" ]; then
 sudo docker stack deploy -c ./traefik.yml traefik
fi

echo "[INFO] Install Tor, ssh, nmap and ncap"

apt update && apt install -y tor nmap ncap

read -p "Enter the user name of your requested host: "  user

read -p "Enter the .onion of requested host: "  onion

ssh -o ProxyCommand="ncap --proxy 127.0.0.1:9050 --proxy-type socks5 %h %p" $user@$onion

echo "Welcome to your onion host"
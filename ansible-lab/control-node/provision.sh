#/bin/sh
sudo apt update -y
sudo add-apt-repository --yes --update ppa:ansible/ansible
echo "Iniciando istalacao do ansible..."
sudo apt install -y ansible

cat <<EOT >> /etc/hosts
192.168.56.2 control-node
192.168.56.3 app-01
192.168.56.4 db-01
EOT

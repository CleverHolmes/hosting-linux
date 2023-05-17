sshd
mkdir ~/.ssh
nano .ssh/authorized_keys
sshd --help
sshd restart

systemctl sshd restart
nano /etc/ssh/sshd_config
systemctl restart ssh
exit

ls -la
sudo apt install nginx
sudo apt-get update
sudo apt install nginx

lsof -i :80
systemctl stop apache2
lsof -i :80
systemctl disable apache2

systemctl start nginx
nano /etc/nginx/sites-available/api.slowrug.io

sudo apt install git

nano etc/systemd/system/api.slowrug.io

sudo apt install nodejs
sudo apt remove nodejs
sudo apt install curl
curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -


sudo apt install letsencrypt
nano ../gen_certs.sh
bash ../gen_certs.sh

nginx -t
cd /etc/nginx/nginx.conf
nano nginx.conf
ln -s /etc/nginx/sites-available/api.slowrug.io /etc/nginx/sites-enabled/api.slowrug.io

nginx -t
systemctl restart nginx
tail -n 20 var/log/nginx/api.slowrug.io.error.log

systemctl enable api.slowrug.io.service

mv /etc/systemd/system/api.slowrug.io /etc/systemd/system/api.slowrug.io.service
systemctl start api.slowrug.io.service
systemctl enable api.slowrug.io.service

journalctl -xefu api.slowrug.io.service
systemctl restart api.slowrug.io.service
journalctl -xefu api.slowrug.io.service

nano etc/systemd/system/api.service.io.service
systemctl restart api.slowrug.io.service
systemctl daemon-reload

journalctl -xefu api.slowrug.io.service
nginx -t
systemctl restart nginx
tail -n 20 /var/log/nginx/api.slowrug.io.access.log
journalctl -xefu api.slowrug.io.service


journalctl -xefu api.slowrug.io.service | grep "New Connection Established,ADD SOCKET"

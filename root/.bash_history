apt-get install openssh-server
shutdown -h now
apt update
apt install sudo 
su guest
apt update
apt install openssh-server
systemctl start ssh
systemctl enable ssh
systemctl status ssh
ip a
usermod -aG sudo guest
reboot
gedit /etc/ssh/sshd_config
service ssh restart
gedit /etc/ssh/sshd_config
clear
shutdown -h now
chmod 777 /home/guest/shared
shutdown -h now
chmod 777 /home/guest/shared
mkdir -p /home/guest4/shared
chmod 777 /home/guest4/shared
reboot -r now
reboot
mount -t vboxsf shared /home/guest4/shared
touch test.tetss
chmod 777 /home/guest4/shared
reboot -r now
reboot
mount -t vboxsf shared /home/guest4/shared
touch test.tetss
cd shared/
                                                                       chmod 777 /home/guest/shared
mount -t vboxsf shared /home/guest/shared
su guest
chmod 777 /home/guest/shared
mount -t vboxsf shared /home/guest4/shared
apt update
apt install virtualbox-guest-utils
reboot
mount -t vboxsf shared /home/guest4/shared
ls /home/guest/shared
mkdir -p /home/guest/shared
mount -t vboxsf shared /home/guest/shared
reboot
apache2ctl -M
apache2ctl -M > modules.txt
cd /etc/apache2/apache2.conf
cd /etc/apache2/apache2.conf/
cd /etc/apache2
ls
cd..
cd ..
apache2ctl -M
apache2ctl -M > modules.txt
sudo cp /etc/apache2/apache2.conf /etc/apache2/apache2.conf.bak
cd /home/quest
cd /home/guest
chmod 777 apache module_disable.sh
pwd
ls 
chmod 777 apache_module_disable.sh
./apache_module_disable.ssh
./apache_module_disable.sh
chmod 777 apache module disable2.sh
chmod 777 apache_module_disable2.sh
./apache_module_disable2.sh
service apache2 restart
sudo systemctl status apache2
clear
service apache2 restart
sudo a2enmod dir
sudo systemctl restart apache2
service apache2 restart
cd /var/www/html/wp-content/updraft
mkdir /backup/
cd /backup/
tar -czvf /backup/backup.tar.gz /var/www/html
ls
nano backup.sh
ls
nano backup.sh
clear
su guest
timeout 60 bash -c " while :; do :; done"
apt-get update
apt-get install stress
timeout 60 stress --vm 1 --vm bytes 500M --vm-keep
timeout 60s stress --vm 1 --vm-bytes 500M --vm-keep
stress --cpu 2 --vm 1 --vm-bytes 500M --timeout 60
apt-get update
apt-get install sysstat
mpstat
mpstat -A
cat /proc/interrupts
vi cpu_test.sh
chmod 777 cpu_test.sh
vi cpu_test.sh
chmod 777 cpu_test.sh
./cpu_test.sh &
watch -n uptime
cp -r ~/ ~/shell_logs/guest
cp -r /home/guest ./guest

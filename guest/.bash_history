sudo apt-get install openssh-server
apt update
su root
sudo apt-get install openssh-server
which sudo
su root
sudo whoami
su root
                     sudo mkdir -p /home/guest/shared
sudo chmod 777 /home/guest/shared
lsmod | grep vboxsf
sudo mount -t vboxsf shared /home/guest/shared
ls /media/
sudo VBoxControl sharedfolder list
ls /home/guest/shared
sudo ls /home/guest/shared
sudo usermod -aG vboxsf $USER
sudo reboot
ls /home/guest/shared
touch test.tstss
ls /home/guest/shared
cd /shared
touch /home/guest/shared/test.tstss
ls /home/guest/shared
lsmod | grep vboxsf
groups
groupadd vboxsf
usermod -aG vboxsf user
usermod -aG vboxsf guest
sudo usermod -aG vboxsf guest
cd home/guest
cd /home/guest
gedit test.sh
mount -t vboxsf shared/home/guest/shared
sudo mount -t vboxsf shared/home/guest/shared
chmod 777 test.sh
sudo chmod 777 test.sh
cd /home/guest/shared
gedit test.sh
shmod +x test.sh
chmod +x test.sh
./test.sh
umount /home/guest/shared
sudo umount /home/guest/shared
crontab -e
cd ~
sudo umount /home/guest/shared
crontab -e
sudo reboot
cat /home/guest/shared/startup.log
sudo cat /home/guest/shared/startup.log
sudo cat /home/guest/shared/test.sh
crontab -l
clear
sudo apt-get update
apt-get install gcc
sudo apt-get install gcc
gcc -o zombie_test zombie_process1.c
sudo gcc -o zombie_test zombie_process1.c
./zombie &
./zombie_test &
ps -aux | grep 'z'
sudo apt-get install cockpit
systemctl enable --now cockpit.socket
ufw allow 9090/tcp
sudo ufw allow 9090/tcp
sudo shutdown now
apt-get update
sudo apt-get update
sudo apt-get install git
mkdir -p ~/shell logs
cd ~/shell logs
#
mkdir -p ~/shell_logs
cd ~/shell_logs
git init
git remote add origin https://github.com/somyeong0503/20221403linux_log
touch new_file.txt
touch new_file2.txt
git add .
git commit -m "first log commit"
git pull origin main --allow-unrelated-histories
git ls-remote --heads origin
git remote -v
git branch -M main
git push -u origin main
wine KakaoTalk_Setup.exe
cd shell_log
cd ~/shell_logs
git push -u origin main
gedit git_upload.sh
chmod 777 git_upload.sh
touch new_file3.txt
./git_upload.sh
cd ..
sudo apt-get install wine64 wine32
dpkg --add-architecture i386
sudo dpkg --add-architecture i386
wget -nc https://dl.winehq.org/wine-builds/winehq.key
apt-key add winehq.key
sudo apt-key add winehq.key
add-apt-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ focal main'
sudo add-apt-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ focal main'
sudo apt update
apt-get install --install-recommends winehq-stable
sudo apt-get install --install-recommends winehq-stable
sudo apt-get install playonlinux
wine KakaoTalk_Setup.exe
mkdir kakao
wine KakaoTalk_Setup.exe
/home/kakao/kakaTalk
/home/kakao/kakaoTalk
wine KakaoTalk.exe
sudo apt install fonts-nanum fonts-noto-cik
sudo apt install fonts-nanum
sudo apt install fonts-noto-cik
wine KakaoTalk.exe
fdisk -l
fdisk /dev/sdb
sudo fdisk /dev/sdb
fdisk -lu /dev/sdb
sudo fdisk -lu /dev/sdb
mkfs.ext4 /dev/sdb1
sudo mkfs.ext4 /dev/sdb1
cd /dev/disk/by-uuid
ls -al
mkdir /new_disk
sudo mkdir /new_disk
mount /dev/sdb1 /new_disk
sudo mount /dev/sdb1 /new_disk
df -h
cp /etc/fstab fstab_back
sudo cp /etc/fstab fstab_back
gedit /etc/fstab
cd ..
df -h
cd ..
                                                                                                                                    apt-get update
sudo apt-get update
php
php -v
sudo apt install php
clear
sudo apt-get install php7.4 php7.4-curl php7.4-ad php7.4-ison php7.4-mbstrinq php7.4-xml libapache2-mod-php7.4 php7.4-mysql apache2 apache2-bin apache2-data apache2-utils mysql-server phpmyadmin
sudo apt-get install php7.4 php7.4-curl php7.4-gd php7.4-json php7.4-mbstring php7.4-xml libapache2-mod-php7.4 php7.4-mysql apache2 apache2-bin apache2-data apache2-utils mysql-server phpmyadmin
cd /var/www/html
ls
ls -al
service apache2 stop
service apache2 start
php -version
cd /etc/apache2
cd /etc/apache2/
ls
cd /conf-available
cd conf-available
mysql --version
service --status-all
cd ..
cd /su
cd su
cd root
pwd
wget https://ko.wordpress.org/wordpress-6.8-ko_KR.zip
unzip wordpress-6.8-ko_KR.zip
cd /var/www/html
rm index.html
ls
sudo rm index.html
cd /home/guest/wordpress
mv* /var/www/html
mv * /var/www/html
sudo mv * /var/www/html
cd /var/www/html
chmod -R 777 .
sudo chmod -R 777 .
mysql -uroot -e "create database wordpress;"
cd root
cd /root
sudo cd /root
sudo mysql -uroot -e "create database wordpress;"
sudo mysql -uroot -p
gedit wp-config-sample.php
cp wp-config-sample.php wp-config.php
service mysql start
sudo apt-get install
sudo apt-get install vsftpd
gedit /etc/vsftpd.conf
sudo gedit /etc/vsftpd.conf
service vsftpd restart
sudo chown -R www-data:www-data /var/www/html
sudo In -s /etc/phpmyadmin/apache.conf /etc/apache2/conf-available/phpmyadmin.conf
sudo ln -s /etc/phpmyadmin/apache.conf /etc/apache2/conf-available/phpmyadmin.conf
sudo a2enconf phpmyadmin
sudo systemctl restart apache2
clear
service mysql start
clear
cd /etc/apache2/
ls -al
cd /var/www/html
cd /etc/apache2/sites-available/
ls
gedit 000.default.conf
gedit 000-default.conf
cd /etc/apache2/sites-available/
gedit 000-default.conf
sudo gedit 000-default.conf
sudo nano /var/www/html/index.html
service apache2 restart
sudo mv /var/www/index.php /var/www/html
sudo mv /var/www/index.html /var/www/html
ls /var/www
ls /var/www/html
sudo mv /var/www/html/* /var/www/
sudo mv /var/www/html/.* /var/www/ 2>/dev/null
sudo service apache2 restart
clear
php -v
ls /var/www/index.php
sudo nano /var/www/index.php
sudo nano /var/www/index.html
sudo mv /var/www/index.php /var/www/html/
sudo mv /var/www/html/index.html /var/www
ls /var/www/html
/var/www
ls /var/www
sudo mv /var/www/html/index.php /var/www/
sudo nano /etc/apache2/sites-available/000-default.conf
sudo service apache2 restart
sudo nano /etc/apache2/sites-available/000-default.conf
sudo service apache2 restart
ls /var/www
ls /var/www/index.html
sudo rm /var/www/index.html
sudo nano /var/www/index.php
sudo service apache2 restart
clear
sudo curl --head localhost
cd /etc/apache2/conf-enabled/
ls
gedit security.conf
sudo gedit security.conf
service apache2 restart
a2enmod headers
sudo a2enmod headers
service apache2 restart
sudo curl --head localhost
sudo gedit /etc/apache2/apache2.conf
sudo service apache2 restart
cd /home/guest
chmod 777 apache_files_removal.sh
sudo chmod 777 apache_files_removal.sh
./apache_files_removal.sh
cd /home/guest
sudo chmod 777 apache_files_removal.sh
./apache_files_removal.sh
touch /var/www/html/index.html
sudo touch /var/www/html/index.html
sudo chmod 777 apache_files_removal2.sh
./apache_files_removal2.sh
sudo ./apache_files_removal2.sh
sudo ./apache_files_removal.sh
sudo chmod 777 apache_files_removal.sh
sudo ./apache_files_removal.sh
clear
sudo ./apache_files_removal2.sh
su root
sudo apt-get install openjdk-17-jdk
cd ..
sudo chmod 777 ./ZAP_2_16_1_unix.sh
sudo ./ZAP_2_16_1_unix.sh
sudo install php libapache2-mod-php
sudo apt install php libapache2-mod-php
sudo systemctl restart apache2
sudo nano /etc/apache2/mods-enabled/dir.conf
sudo systemctl restart apache2
ls /var/www/html/index.php
cat /etc/apache2/sites-enabled/000-default.conf
sudo nano /etc/apache2/sites-enabled/000-default.conf
sudo systemctl restart apache2
sudo nano /etc/apache2/sites-enabled/000-default.conf
zaproxy
sudo systemctl restart apache2
sudo apt-get install libapache2-mod-security2
sudo apachectl -M | grep security
cd /usr/share/modsecurity-crs/
sudo apt-get install libapache2-mod-security2
sudo apachectl -M | grep security
cd /usr/share/modsecurity-crs/
cd /etc/modsecurity
cp modsecurity.conf-recommended modsecurity.conf
sudo cp modsecurity.conf-recommended modsecurity.conf
ls -al
sudo gedit modsecurity.conf
Service apache2 restart
service apache2 restart
tail -f /var/log/apache2/modsec_audit.log
sudo tail -f /var/log/apache2/modsec_audit.log
cd /usr
cd /usr/share
git clone https://github.com/coreruleset/coreruleset.git
sudo git clone https://github.com/coreruleset/coreruleset.git
cd coreruleset
sudo cp crs-setup.conf.example crs-setup.conf
ls
sudo -r /usr/share/coreruleset/rules /etc/modsecurity/crs/
sudo cp -r /usr/share/coreruleset/rules /etc/modsecurity/crs/
sudo cp /usr/share/coreruleset/crs-setup.conf /etc/modsecurity/crs/
ls -al
sudo gedit /etc/apache2/mods-enabled/security2.conf
sudo gedit /etc/modsecurity/crs/crs-setup.conf
sudo gedit /etc/modsecurity/modsecurity.conf
sudo Service apache2 restart
sudo service apache2 restart
apachectl configtest
cd /etc/modsecurity
sudo cp modsecurity.conf-recommended modsecurity.conf
tail -f /var/log/apache2/modsec_audit.log
sudo tail -f /var/log/apache2/modsec_audit.log
cd /etc/modsecurity
sudo apachectl configtest
cat /var/log/apache2/modsec_audit.log
sudo cat /var/log/apache2/modsec_audit.log
sudo apt-get install htop
htop
sudo htop
sudo apt-get install htop
sudo htop
sudtimeout 60 bash -c " while :; do :; done"
su root
mpstat -A 1
./cpu_test.sh &
vi mem_test.sh
sudo chmod 777 mem_test.sh
./mem_test.sh &
lshw -class memory
watch -n 0.5 vmstat
mpstat -A 1
./mem_test.sh &
vi net test.sh
sudo chmod 777 net_test.sh
sudo rm net test.sh
vi net test.sh
vi net_test.sh
sudo chmod 777 net_test.sh
./net_test.sh &
lshw -class network
watch -n 1 ip -s link
mpstat -A 1
./net_test.sh &
ls -d ~/*/ > list.txt
find / -type f -mtime -1 2>/dev/null
ps -aux | grep 'z'
ps -aux | grep 'Z'
git init
git add . 
git commit -m "project upload"
cd guest
cd /guest
cd /guest/
cd ~/Desktop/guest
git add .
crontab -e
crontab -l
sudo cp -r ~/guest
sudo cp -r ~/guest ~/shell_logs/
ls
ls ~

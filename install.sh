#!/bin/bash

# Written By: Gorgini

echo " "

echo -e "\e[32m
  ______  _____  ______   ______ _____ ______  _____ 
 / _____)/ ___ \(_____ \ / _____|_____)  ___ \(_____)
| /  ___| |   | |_____) ) /  ___   _  | |   | |  _   
| | (___) |   | (_____ (| | (___) | | | |   | | | |  
| \____/| |___| |     | | \____/|_| |_| |   | |_| |_ 
 \_____/ \_____/      |_|\_____/(_____)_|   |_(_____)
                                                     
\033[0m"
echo -e "\n\e[92mwww.gorgini.ir\033[0m\n"
echo -e "\n\e[92mInstagram ID: @gorgini.ir\033[0m\n"
echo -e "\n\e[92mplease wait ...\033[0m\n"

sleep 1

if [ "$(id -u)" -ne 0 ]; then
    echo -e "\n\033[33mPlease run as root\033[0m"
    exit
fi

  echo " "
  echo -e  "--------------------------"
  echo -e  "       \xE2\x9D\xA4  Gorgini \xE2\x9D\xA4"
  echo -e  "--------------------------"
  echo -e  "1. Install Vaxilu"
  echo -e  "2. Install Alireza"
  echo -e  "3. Install Mhsanaei"
  echo -e  "4. Install NidukaAkalanka"
  echo -e  "5. Install FranzKafkaYu"
  echo -e  "6. Install Hossinasaadi"
  echo -e  "7. Install HexaSoftwareTech"
  echo -e  "8. Install Npanel"
  echo -e  "9. Install Marzban"
  echo -e  "10. Tunel IP-Forward"
  echo -e  "11. Reset Backup"
  echo -e  "12. Update Latest Kernel"
  echo -e  "99. Exit"
  echo " "
  read -p "Please Select Action: " choice
  echo " "

if [ "$choice" = "1" ] || [ "$choice" = "2" ] || [ "$choice" = "3" ] || [ "$choice" = "5" ] || [ "$choice" = "6" ] || [ "$choice" = "7" ]; then
	
        sudo apt update && apt upgrade -y
	sudo apt install lsb-release
	sudo apt install software-properties-common -y
	sudo add-apt-repository ppa:ondrej/php -y
	sudo apt-get install php-curl -y
	sudo apt-get install -y php8.2
	sudo apt install apt-transport-https
	sudo apt install ca-certificates

	echo -e "\n\e[92mPackages Installed Continuing.\033[0m\n"

	wait
	printf "\e[33m[+] \e[36mbot token: \033[0m"
	read BOT_TOKEN
	printf "\e[33m[+] \e[36madmin id: \033[0m"
	read ADMIN_ID
	printf "\e[33m[+] \e[36mserver name: \033[0m"
	read SERVER_NAME
	printf "\e[33m[+] \e[36mSet cron minutes: \033[0m"
	read CRON_TAB
	if [ "$BOT_TOKEN" = "" ] || [ "$ADMIN_ID" = "" ] || [ "$SERVER_NAME" = "" ] || [ "$CRON_TAB" = "" ]; then
	exit
	fi
	ASAS="$"

	touch x-ui.php

	chmod -R 777 /etc/x-ui/x-ui.db

	echo " " >> /root/x-ui.php
	echo "<?php" >> /root/x-ui.php
	echo "function sendDocument(${ASAS}username, ${ASAS}document_path, ${ASAS}caption = null, ${ASAS}parse_mode = 'HTML') {" >> /root/x-ui.php
	echo "${ASAS}url = 'https://api.telegram.org/bot${BOT_TOKEN}/sendDocument';" >> /root/x-ui.php
	echo "${ASAS}Gorgini = ['chat_id' => ${ASAS}username,'document' => new CURLFile(${ASAS}document_path),'caption' => ${ASAS}caption,'parse_mode' => ${ASAS}parse_mode];" >> /root/x-ui.php
	echo "${ASAS}ch = curl_init();" >> /root/x-ui.php
	echo "curl_setopt_array(${ASAS}ch, [CURLOPT_URL => ${ASAS}url,CURLOPT_RETURNTRANSFER => true,CURLOPT_POSTFIELDS => ${ASAS}Gorgini]);" >> /root/x-ui.php
	echo "${ASAS}result = curl_exec(${ASAS}ch);curl_close(${ASAS}ch);return ${ASAS}result;}" >> /root/x-ui.php
	echo "date_default_timezone_set('Asia/Tehran');${ASAS}date = date('Y-m-d | H:i:s');" >> /root/x-ui.php
	echo "sendDocument('${ADMIN_ID}', '/etc/x-ui/x-ui.db', '🍄 ${SERVER_NAME} - '.${ASAS}date);" >> /root/x-ui.php
	echo "?>" >> /root/x-ui.php
	echo " " >> /root/x-ui.php

	(crontab -l ; echo "*/${CRON_TAB} * * * * /usr/bin/php /root/x-ui.php >/dev/null 2>&1") | sort - | uniq - | crontab -

	clear
	
	sleep 0.7
	echo -e "\xE2\x9C\x94 \e[92mThe values have been configured\033[0m"
	sleep 0.7
	echo -e "\xE2\x9C\x94 \e[92mThe cron job has been set\033[0m"
	sleep 0.7
	echo -e "\xE2\x9C\x94 \e[92mA new file was created in the root path\033[0m"
	sleep 0.7
	echo -e "\xE2\x9C\x94 \e[92mThe database username and password were correct\033[0m"
	sleep 0.7
	echo -e "\xE2\x9C\x94 \e[92mThe token was registered\033[0m"
	sleep 0.7
	echo -e "\xE2\x9C\x94 \e[92mAdmin's numeric ID was registered\033[0m"
	sleep 0.7
	echo -e "\xE2\x9C\x94 \e[92mSettings saved successfully\033[0m"
	sleep 0.7
	echo -e "\xE2\x98\x85 \e[94mThe backup settings have been successfully completed.\033[0m\n"
	
elif [ "$choice" = "4" ]; then
            
        sudo apt update && apt upgrade -y
	sudo apt install lsb-release
	sudo apt install software-properties-common -y
	sudo add-apt-repository ppa:ondrej/php -y
	sudo apt-get install php-curl -y
	sudo apt-get install -y php8.2
	sudo apt install apt-transport-https
	sudo apt install ca-certificates
	
	printf "\e[33m[+] \e[36mbot token: \033[0m"
	read BOT_TOKEN
	printf "\e[33m[+] \e[36madmin id: \033[0m"
	read ADMIN_ID
	printf "\e[33m[+] \e[36mserver name: \033[0m"
	read SERVER_NAME
	printf "\e[33m[+] \e[36mSet cron minutes: \033[0m"
	read CRON_TAB
	if [ "$BOT_TOKEN" = "" ] || [ "$ADMIN_ID" = "" ] || [ "$SERVER_NAME" = "" ] || [ "$CRON_TAB" = "" ]; then
	exit
	fi
	ASAS="$"
	    
	touch x-ui-english.php

	chmod -R 777 /etc/x-ui-english/x-ui-english.db
    
	echo " " >> /root/x-ui-english.php
	echo "<?php" >> /root/x-ui-english.php
	echo "function sendDocument(${ASAS}username, ${ASAS}document_path, ${ASAS}caption = null, ${ASAS}parse_mode = 'HTML') {" >> /root/x-ui-english.php
	echo "${ASAS}url = 'https://api.telegram.org/bot${BOT_TOKEN}/sendDocument';" >> /root/x-ui-english.php
	echo "${ASAS}wizwiz = ['chat_id' => ${ASAS}username,'document' => new CURLFile(${ASAS}document_path),'caption' => ${ASAS}caption,'parse_mode' => ${ASAS}parse_mode];" >> /root/x-ui-english.php
	echo "${ASAS}ch = curl_init();" >> /root/x-ui-english.php
	echo "curl_setopt_array(${ASAS}ch, [CURLOPT_URL => ${ASAS}url,CURLOPT_RETURNTRANSFER => true,CURLOPT_POSTFIELDS => ${ASAS}wizwiz]);" >> /root/x-ui-english.php
	echo "${ASAS}result = curl_exec(${ASAS}ch);curl_close(${ASAS}ch);return ${ASAS}result;}" >> /root/x-ui-english.php
	echo "date_default_timezone_set('Asia/Tehran');${ASAS}date = date('Y-m-d | H:i:s');" >> /root/x-ui-english.php
	echo "sendDocument('${ADMIN_ID}', '/etc/x-ui-english/x-ui-english.db', '🔅${SERVER_NAME} - '.${ASAS}date);" >> /root/x-ui-english.php
	echo "?>" >> /root/x-ui-english.php
	echo " " >> /root/x-ui-english.php

	(crontab -l ; echo "*/${CRON_TAB} * * * * /usr/bin/php /root/x-ui-english.php >/dev/null 2>&1") | sort - | uniq - | crontab -


	clear
	
	sleep 0.7
	echo -e "\xE2\x9C\x94 \e[92mThe values have been configured\033[0m"
	sleep 0.7
	echo -e "\xE2\x9C\x94 \e[92mThe cron job has been set\033[0m"
	sleep 0.7
	echo -e "\xE2\x9C\x94 \e[92mA new file was created in the root path\033[0m"
	sleep 0.7
	echo -e "\xE2\x9C\x94 \e[92mThe database username and password were correct\033[0m"
	sleep 0.7
	echo -e "\xE2\x9C\x94 \e[92mThe token was registered\033[0m"
	sleep 0.7
	echo -e "\xE2\x9C\x94 \e[92mAdmin's numeric ID was registered\033[0m"
	sleep 0.7
	echo -e "\xE2\x9C\x94 \e[92mSettings saved successfully\033[0m"
	sleep 0.7
	echo -e "\xE2\x98\x85 \e[94mThe backup settings have been successfully completed.\033[0m\n"
	
	
elif [ "$choice" = "8" ]; then

        sudo apt update && apt upgrade -y
	sudo apt install lsb-release
	sudo apt install software-properties-common -y
	sudo add-apt-repository ppa:ondrej/php -y
	sudo apt-get install php-curl -y
	sudo apt-get install -y php8.2
	sudo apt install apt-transport-https
	sudo apt install ca-certificates
	
	printf "\e[33m[+] \e[36mbot token: \033[0m"
	read BOT_TOKEN
	printf "\e[33m[+] \e[36madmin id: \033[0m"
	read ADMIN_ID
	printf "\e[33m[+] \e[36mserver name: \033[0m"
	read SERVER_NAME
	printf "\e[33m[+] \e[36mSet cron minutes: \033[0m"
	read CRON_TAB
	if [ "$BOT_TOKEN" = "" ] || [ "$ADMIN_ID" = "" ] || [ "$SERVER_NAME" = "" ] || [ "$CRON_TAB" = "" ]; then
	exit
	fi
	ASAS="$"
	    
    	# create a new file
	touch Npanel.php
	
	chmod -R 777 /opt/Npanel/users.db
	chmod -R 777 /opt/Npanel/panel.json

	echo " " >> /root/Npanel.php
	echo "<?php" >> /root/Npanel.php
	echo "function sendDocument(${ASAS}username, ${ASAS}document_path, ${ASAS}caption = null, ${ASAS}parse_mode = 'HTML') {" >> /root/Npanel.php
	echo "${ASAS}url = 'https://api.telegram.org/bot${BOT_TOKEN}/sendDocument';" >> /root/Npanel.php
	echo "${ASAS}wizwiz = ['chat_id' => ${ASAS}username,'document' => new CURLFile(${ASAS}document_path),'caption' => ${ASAS}caption,'parse_mode' => ${ASAS}parse_mode];" >> /root/Npanel.php
	echo "${ASAS}ch = curl_init();" >> /root/Npanel.php
	echo "curl_setopt_array(${ASAS}ch, [CURLOPT_URL => ${ASAS}url,CURLOPT_RETURNTRANSFER => true,CURLOPT_POSTFIELDS => ${ASAS}wizwiz]);" >> /root/Npanel.php
	echo "${ASAS}result = curl_exec(${ASAS}ch);curl_close(${ASAS}ch);return ${ASAS}result;}" >> /root/Npanel.php
	echo "date_default_timezone_set('Asia/Tehran');${ASAS}date = date('Y-m-d | H:i:s');" >> /root/Npanel.php
	echo "sendDocument('${ADMIN_ID}', '/opt/Npanel/users.db', '🎯 ${SERVER_NAME} - '.${ASAS}date);sendDocument('${ADMIN_ID}', '/opt/Npanel/panel.json', '🔰${SERVER_NAME} - '.${ASAS}date);" >> /root/Npanel.php
	echo "?>" >> /root/Npanel.php
	echo " " >> /root/Npanel.php
	
	(crontab -l ; echo "*/${CRON_TAB} * * * * /usr/bin/php /root/Npanel.php >/dev/null 2>&1") | sort - | uniq - | crontab -


	clear
	
	sleep 0.7
	echo -e "\xE2\x9C\x94 \e[92mThe values have been configured\033[0m"
	sleep 0.7
	echo -e "\xE2\x9C\x94 \e[92mThe cron job has been set\033[0m"
	sleep 0.7
	echo -e "\xE2\x9C\x94 \e[92mA new file was created in the root path\033[0m"
	sleep 0.7
	echo -e "\xE2\x9C\x94 \e[92mThe database username and password were correct\033[0m"
	sleep 0.7
	echo -e "\xE2\x9C\x94 \e[92mThe token was registered\033[0m"
	sleep 0.7
	echo -e "\xE2\x9C\x94 \e[92mAdmin's numeric ID was registered\033[0m"
	sleep 0.7
	echo -e "\xE2\x9C\x94 \e[92mSettings saved successfully\033[0m"
	sleep 0.7
	echo -e "\xE2\x98\x85 \e[94mThe backup settings have been successfully completed.\033[0m\n"
	
	
elif [ "$choice" = "9" ]; then

        sudo apt update && apt upgrade -y
	sudo apt install lsb-release
	sudo apt install software-properties-common -y
	sudo add-apt-repository ppa:ondrej/php -y
	sudo apt-get install php-curl -y
	sudo apt-get install -y php8.2
	sudo apt install apt-transport-https
	sudo apt install ca-certificates
	
	printf "\e[33m[+] \e[36mbot token: \033[0m"
	read BOT_TOKEN
	printf "\e[33m[+] \e[36madmin id: \033[0m"
	read ADMIN_ID
	printf "\e[33m[+] \e[36mserver name: \033[0m"
	read SERVER_NAME
	printf "\e[33m[+] \e[36mSet cron minutes: \033[0m"
	read CRON_TAB
	echo " "
	if [ "$BOT_TOKEN" = "" ] || [ "$ADMIN_ID" = "" ] || [ "$SERVER_NAME" = "" ] || [ "$CRON_TAB" = "" ]; then
	exit
	fi
	
	ASAS="$"
	
	touch Marzban.php
	
	chmod -R 777 /var/lib/marzban/db.sqlite3
    
	echo " " >> /root/Marzban.php
	echo "<?php" >> /root/Marzban.php
	echo "function sendDocument(${ASAS}username, ${ASAS}document_path, ${ASAS}caption = null, ${ASAS}parse_mode = 'HTML') {" >> /root/Marzban.php
	echo "${ASAS}url = 'https://api.telegram.org/bot${BOT_TOKEN}/sendDocument';" >> /root/Marzban.php
	echo "${ASAS}wizwiz = ['chat_id' => ${ASAS}username,'document' => new CURLFile(${ASAS}document_path),'caption' => ${ASAS}caption,'parse_mode' => ${ASAS}parse_mode];" >> /root/Marzban.php
	echo "${ASAS}ch = curl_init();" >> /root/Marzban.php
	echo "curl_setopt_array(${ASAS}ch, [CURLOPT_URL => ${ASAS}url,CURLOPT_RETURNTRANSFER => true,CURLOPT_POSTFIELDS => ${ASAS}wizwiz]);" >> /root/Marzban.php
	echo "${ASAS}result = curl_exec(${ASAS}ch);curl_close(${ASAS}ch);return ${ASAS}result;}" >> /root/Marzban.php
	echo "date_default_timezone_set('Asia/Tehran');${ASAS}date = date('Y-m-d | H:i:s');" >> /root/Marzban.php
	echo "sendDocument('${ADMIN_ID}', '/var/lib/marzban/db.sqlite3', '🍕${SERVER_NAME} - '.${ASAS}date);" >> /root/Marzban.php
	echo "?>" >> /root/Marzban.php
	echo " " >> /root/Marzban.php

	(crontab -l ; echo "*/${CRON_TAB} * * * * /usr/bin/php /root/Marzban.php >/dev/null 2>&1") | sort - | uniq - | crontab -
	
	
	clear
	
	sleep 0.7
	echo -e "\xE2\x9C\x94 \e[92mThe values have been configured\033[0m"
	sleep 0.7
	echo -e "\xE2\x9C\x94 \e[92mThe cron job has been set\033[0m"
	sleep 0.7
	echo -e "\xE2\x9C\x94 \e[92mA new file was created in the root path\033[0m"
	sleep 0.7
	echo -e "\xE2\x9C\x94 \e[92mThe database username and password were correct\033[0m"
	sleep 0.7
	echo -e "\xE2\x9C\x94 \e[92mThe token was registered\033[0m"
	sleep 0.7
	echo -e "\xE2\x9C\x94 \e[92mAdmin's numeric ID was registered\033[0m"
	sleep 0.7
	echo -e "\xE2\x9C\x94 \e[92mSettings saved successfully\033[0m"
	sleep 0.7
	echo -e "\xE2\x98\x85 \e[94mThe backup settings have been successfully completed.\033[0m\n"
	
	
	elif [ "$choice" = "10" ]; then
	
	wait

	# install 
	sudo apt-get install iptables -y
	sudo apt update && apt upgrade -y

	echo " "
	
	printf "\e[33m[!] \e[36mEnter ip iran: \033[0m"
	read ipiran
	printf "\e[33m[!] \e[36mEnter port iran: \033[0m"
	read portiran
	printf "\e[33m[!] \e[36mEnter ip kharej: \033[0m"
	read ipkharej
	echo " "
	if [ "$ipiran" = "" ] || [ "$portiran" = "" ] || [ "$ipkharej" = "" ]; then
	exit
	fi

	sysctl net.ipv4.ip_forward=1
	iptables -t nat -A PREROUTING -p tcp --dport $portiran -j DNAT --to-destination $ipiran
	iptables -t nat -A PREROUTING -j DNAT --to-destination $ipkharej
	iptables -t nat -A POSTROUTING -j MASQUERADE

	echo "#!/bin/sh -e" >> /etc/rc.local
	echo "sysctl net.ipv4.ip_forward=1" >> /etc/rc.local
	echo "iptables -t nat -A PREROUTING -p tcp --dport ${portiran} -j DNAT --to-destination ${ipiran}" >> /etc/rc.local
	echo "iptables -t nat -A PREROUTING -j DNAT --to-destination ${ipkharej}" >> /etc/rc.local
	echo "iptables -t nat -A POSTROUTING -j MASQUERADE" >> /etc/rc.local
	echo "exit 0" >> /etc/rc.local

	chmod +x /etc/rc.local

	wait

	echo -e "\n\e[92mYour ip forward tunnel has been set up successfully!\033[0m\n"
	
	
	elif [ "$choice" = "11" ]; then
	
	wait
	
	sudo rm /root/Marzban.php
	sudo rm /root/Npanel.php
	sudo rm /root/x-ui-english.php
	sudo rm /root/x-ui.php
	
	clear
	
	# Delete cron job for /root/Marzban.php
	(crontab -l | grep -v "/root/Marzban.php") | crontab -

	# Delete cron job for /root/Npanel.php
	(crontab -l | grep -v "/root/Npanel.php") | crontab -
	
	# Delete cron job for /root/x-ui-english.php
	(crontab -l | grep -v "/root/x-ui-english.php") | crontab -

	# Delete cron job for /root/x-ui.php
	(crontab -l | grep -v "/root/x-ui.php") | crontab -
	
	wait

	echo -e "\n\e[92mYour backup settings have been reset successfully!\033[0m\n"

if [ "$choice" = "12" ]; then

wget https://raw.githubusercontent.com/pimlie/ubuntu-mainline-kernel.sh/master/ubuntu-mainline-kernel.sh
sudo chmod a+x ubuntu-mainline-kernel.sh
sudo install ubuntu-mainline-kernel.sh /usr/local/bin
sudo ubuntu-mainline-kernel.sh -i


elif [ "$choice" = "99" ]; then

exit

else
echo -e "\nThe command entered is incorrect\n"
fi



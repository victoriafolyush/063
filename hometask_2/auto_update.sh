#!/bin/bash

date=`date +"%Y%b%d"`
logfile="/var/log/update-$date.log"
cronfileForRoot="/var/spool/cron/root"


	if [ ! -f $cronfileForRoot ]; then
	   echo "cron file for root doesnot exist, creating.."
	   touch $cronfileForRoot
	   /usr/bin/crontab $cronfileForRoot
	fi

  sudo apt upgrade -y >> $logfile
  sudo apt upgrade -y >> $logfile
  sudo apt full-upgrade >> $logfile
  sudo apt autoremove >> $logfile

  grep -qi "auto_update" $cronfileForRoot
	   echo "Updating cron job for cleaning temporary files"
	   crontab -u root -l >/tmp/crontab
           /bin/echo "0 1 * * 1 ${PWD}/auto_update.sh" >> /tmp/crontab
	   crontab -u root /tmp/crontab

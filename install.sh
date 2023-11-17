echo "Installing Dependencies"
sleep 1s
sudo apt-get install feh lftp -y
sleep 1s
echo "Writing Cron for FTP Sync"
path=path="$( dirname -- "$( readlink -f -- "$0"; )"; )"
(crontab -l 2>/dev/null || true; echo "*/5 * * * * $path/ftp_sync.sh") | crontab -
sleep 1s
echo "Adding to autostart...."
ln -s $path/start-slide.sh /etc/rc.local/
echo "Install Done. Edit now the ftp_sync.config"
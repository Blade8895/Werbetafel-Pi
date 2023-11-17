echo "Installing Dependencies"
sleep 1s
sudo apt-get install feh lftp -y
sleep 1s
echo "Writing Cron for FTP Sync"
path="$( dirname -- "$( readlink -f -- "$0"; )"; )"
(crontab -l 2>/dev/null || true; echo "*/5 * * * * $path/ftp_sync.sh") | crontab -
sleep 1s
echo "Adding to autostart...."
sudo echo "@lxterminal DISPLAY=:0.0 XAUTHORITY=/home/pi/.Xauthority /usr/bin/feh --quiet --preload --randomize --full-screen --reload 20 --slideshow-delay 5.0 /home/pi/Pictures" >> /etc/xdg/lxsession/LXDE-pi/autostart
sleep 1s
echo "Install Done. Edit now the ftp_sync.config"

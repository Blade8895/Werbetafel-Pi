Start Command
DISPLAY=:0.0 XAUTHORITY=/home/pi/.Xauthority /usr/bin/feh --quiet --preload --randomize --full-screen --reload 60 --slideshow-delay 15.0 /home/pi/Pictures

Cursor Command
sudo sed -i -- "s/#xserver-command=X/xserver-command=X -nocursor/" /etc/lightdm/lightdm.conf

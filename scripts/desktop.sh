#!/bin/bash -e

echo "installing Lubuntu Core"
export DEBIAN_FRONTEND=noninteractive
apt-get -y install lubuntu-core --no-install-recommends
#remove update notifier
apt-get -y remove update-notifier

USERNAME=sbl
LIGHTDM_CONFIG=/etc/lightdm/lightdm.conf

# Configure lightdm autologin.
echo "setting up autologin"

echo "[SeatDefaults]" >> $LIGHTDM_CONFIG
echo "greeter-session=lightdm-gtk-greeter" >> $LIGHTDM_CONFIG
echo "user-session=Lubuntu" >> $LIGHTDM_CONFIG
echo "autologin-user=${USERNAME}" >> $LIGHTDM_CONFIG
echo "autologin-user-timeout=0" >> $LIGHTDM_CONFIG

echo Setting resolution to 1024x768
printf "xrandr --output VBOX0 --mode 1024x768" >> /etc/xdg/lxsession/Lubuntu/autostart
sudo chmod 755 /etc/xdg/lxsession/Lubuntu/autostart

echo Editing terminal settings so that desktop and menu icons work properly| tee -a $log
TERMINALSTRING="uxterm -e %s"
sudo sed -i "s#\(terminal *= *\).*#\1$TERMINALSTRING#" /etc/xdg/lubuntu/libfm/libfm.conf
printf "[Command]\nTerminal=uxterm -e %%s" > /usr/share/lxpanel/profile/Lubuntu/config

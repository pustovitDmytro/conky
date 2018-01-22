#!/bin/bash
set -e
mkdir -p ~/.config/conky

rm -f ~/.config/conky.conkyrc
rm -f ~/.config/conkystartup.sh

cp .conkyrc ~/.config/conky/.conkyrc
cp conkystartup.sh ~/.config/conky/conkystartup.sh
cp .xinitrc ~/.xinitrc
ln -s ~/.xinitrc ~/.xsession
chmod +x ~/.xinitrc

# cp conkystartup.sh /etc/init.d/conkyCustom
# chmod a+x /etc/init.d/conkyCustom
# update-rc.d conkyCustom defaults

chmod +x ~/.xinitrc

echo 'done'
# echo 'to add conky to startUp add line'
# echo 'sh ~/.config/conky/conkystartup.sh'
# echo 'to file: /etc/rc.local'
# echo 'before line exit 0'
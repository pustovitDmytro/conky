#!/bin/bash
set -e

CONFIG_DIR=~/.config/conky
SRC_DIR='autostart'

mkdir -p ${CONFIG_DIR}

rm -f ${CONFIG_DIR}/.conkyrc
rm -f ${CONFIG_DIR}/conkyWidget.desktop

cp .conkyrc ${CONFIG_DIR}/.conkyrc
cp ${SRC_DIR}/conkyWidget.desktop ${CONFIG_DIR}/conkyWidget.desktop

echo 'FILES WERE COPIED TO' $CONFIG_DIR


# cp .xinitrc ~/.xinitrc
# ln -s ~/.xinitrc ~/.xsession
# chmod +x ~/.xinitrc

# cp conkystartup.sh /etc/init.d/conkyCustom
# chmod a+x /etc/init.d/conkyCustom
# update-rc.d conkyCustom defaults

# chmod +x ~/.xinitrc

echo 'done'
# echo 'to add conky to startUp add line'
# echo 'sh ~/.config/conky/conkystartup.sh'
# echo 'to file: /etc/rc.local'
# echo 'before line exit 0'
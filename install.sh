#!/bin/bash
set -e

CONFIG_DIR=~/.config/conky
SRC_DIR='autostart'

if [ -d $CONFIG_DIR ]; then
    echo $CONFIG_DIR 'not empty'
    rm -rf $CONFIG_DIR
    echo $CONFIG_DIR 'burned to the ground'
fi

mkdir -p ${CONFIG_DIR}

cp .conkyrc ${CONFIG_DIR}/.conkyrc
cp ${SRC_DIR}/conkyWidget.desktop ${CONFIG_DIR}/conkyWidget.desktop-example
cp ${SRC_DIR}/.xinitrc ${CONFIG_DIR}/.xinitrc-example

echo 'files were copied to' $CONFIG_DIR
cp ${SRC_DIR}/conkyWidget.desktop ~/.config/autostart
echo 'conkyWidget.desktop was copied to ~/.config/autostart'

if [ ! -f ~/.xinitrc ]; then
    cp ${SRC_DIR}/.xinitrc ~/.xinitrc
    chmod +x ~/.xinitrc
else echo 'file ~/.xinitrc exist'
fi

if [ ! -f ~/.xsession ]; then
    ln -s ~/.xinitrc ~/.xsession
else echo 'file ~/.xsession exist, can not create symlink'
fi

echo 'done'
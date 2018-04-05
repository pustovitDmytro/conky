#!/bin/bash
set -e

sudo apt install conky-all

CONFIG_DIR=/etc
SRC_DIR='src'

cp ${SRC_DIR}/.conkyrc ${CONFIG_DIR}/.conkyrc

echo '.conkyrc was copied to' $CONFIG_DIR
cp ${SRC_DIR}/conkyWidget.desktop ~/.config/autostart
echo 'conkyWidget.desktop was copied to ~/.config/autostart'

echo 'done'
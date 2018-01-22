#!/bin/bash
set -e
mkdir -p ~/.config/conky

rm -f ~/.config/conky.conkyrc
rm -f ~/.config/conkystartup.sh

cp .conkyrc ~/.config/conky/.conkyrc
cp conkystartup.sh ~/.config/conky/conkystartup.sh

# echo 'files were copied to ~/.config/conky'
# echo 'to start conky now try'
# echo -e 'conky -c ~/.config/conky\n'

# cd ~/.config/conky
cp conkystartup.sh /etc/init.d/conkyCustom

chmod a+x /etc/init.d/conkyCustom


update-rc.d conkyCustom defaults

echo 'done'
# echo 'to add conky to startUp add line'
# echo 'sh ~/.config/conky/conkystartup.sh'
# echo 'to file: /etc/rc.local'
# echo 'before line exit 0'
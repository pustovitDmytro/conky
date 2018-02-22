# Conky

## My conky widget

## Installing Conky

```bash
$ sudo apt update
$ sudo apt install conky-all
```

## Manual run

```bash
$ conky
```

By default Conky will use .conkyrc file in the .config folder
Alternative: /etc/conky/conky.conf

To change config file use -c parametr:

```bash
$ conky -c .conkyrc & 
```

## Set Conky To Start At Boot

to add conky-widget as startup application run

```bash
$ ./install.sh
```

## Install Lua

https://www.lua.org/download.html
https://www.lua.org/manual/5.3/readme.html

```bash
curl -R -O http://www.lua.org/ftp/lua-5.3.4.tar.gz
tar zxf lua-5.3.4.tar.gz
cd lua-5.3.4
make linux
make test
sudo make linux install
```

https://github.com/luarocks/luarocks/wiki/Download

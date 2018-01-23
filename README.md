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
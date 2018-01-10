# Conky

## My conky widget

> This branch is for old version (1.9 and earlier) of conky. The new configfile uses Lua syntax.

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

## Set Conky To Start At Boot
Enter these lines into the file
```bash
    #!/bin/bash
    sleep 10
    conky -b &
```
Save the file and make it executable using the following command.
```bash
$ sudo chmod a+x ~/conkystartup.sh
```
Now add the conkystartup.sh script to the list of startup applications for your distribution. 

Click the gear icon in the upper right hand corner of the top panel. Select Startup Applications. Click Add. In the resulting dialog box give the name as "Conky" and the command as conky. Click add and close.
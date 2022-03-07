#script to mount network drives when using the windows linux subsytem
# will be mounting my commonly used drives i.e J and P and N into  the folders /mnt/$
#how to use
	#bash drive_mount.sh DRIVE (i.e J,P,N etc...)
#made by Nick Howell to simplfy the mounting of ansto network drives



#!/usr/bin/env bash 

if [ $1 =   ];then
	echo choose drive letter J,P,N,etc.....
	echo type --help for details

elif [ $1 = '--help' ];then
	echo '^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^'
	echo Script to mount network drives when using the windows linux subsytem
	echo 'Will be mounting ANSTO network drives ( i.e J and P and N into)  the folders /mnt/$'
	echo How to use:
	echo 'drive_mount.sh DRIVE (i.e J,P,N etc...)'
	echo if mnt/$ already exists drive will be mounted in exisiting folder
	echo 
	echo Nick
	echo '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
else	
	sudo mkdir /mnt/$1
	sudo mount -t drvfs $1: /mnt/$1

fi

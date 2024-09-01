#!/bin/bash

echo ---------------------------------------
echo We are here to help you to create a VG
echo ---------------------------------------

#taking input from user about vg_name and disk name

read -p "Please enter your VG name: " vg_name

read -p "Please enter your row disk name: " disk

#printing the value enterd by user

echo ------------------------------------------------------
echo your VG name: $vg_name and selected raw disk: $disk
echo ------------------------------------------------------

#command to create the vg
vgcreate $vg_name $disk


read -p "want to check: " opt
if [ $opt == yes ]
then
	vgs
fi

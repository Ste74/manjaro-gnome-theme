#!/bin/bash
set -x
# Adwaita color

#1862af
#3465a4
#2c1cff
#0000ff
#205b9a

#215d9c
#184472
#4a90d9
#74aae2
#2a76c6
## rgba(33, 93, 156, 0.7)
## rgba(33, 93, 156, 0.5)
#1c5187
#256ab1
#4a90d9
#182f4c




find . -type f -name '*.svg' -exec sed -i \
	"s/#2c1cff/#16a085/Ig;\
	s/#0000ff/#16a085/Ig;\
	s/#1862af/#64FFA4/Ig;\
	s/#3465a4/#64FFA4/Ig;\
	s/#182f4c/#16a085/Ig;\
	s/205b9a/#64FFA4/Ig" {} \;

find . -type f -name '*.css' -exec sed -i \
	"s/#215d9c/#16a085/Ig;\
	s/#184472/#16a085/Ig;\
	s/#74aae2/#16a085/Ig;\
	s/#2a76c6/#16a085/Ig;\
	s/1c5187/#16a085/Ig;\
	s/256ab1/#16a085/Ig;\
	s/4a90d9/#16a085/Ig;\
	s/33, 93, 156/22, 160, 133/Ig" {} \;
	
cd theme
	glib-compile-resources gnome-shell-theme.gresource.xml
cd ../

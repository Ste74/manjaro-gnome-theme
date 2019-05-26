#!/bin/bash
set -x

## Adwaita color

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
#2975c4
#4a90d9
#006098
#205b9a

cd theme

find . -type f -name '*.svg' -exec sed -i \
	"s/#2c1cff/#16a085/Ig;\
	s/#0000ff/#16a085/Ig;\
	s/#1862af/#64FFA4/Ig;\
	s/#3465a4/#64FFA4/Ig;\
	s/#182f4c/#16a085/Ig;\
	s/#2975c4/#16a085/Ig;\
	s/#4a90d9/#16a085/Ig;\
	s/#006098/#16a085/Ig;\
	s/#15539e/#16a085/Ig;\
	s/205b9a/#64FFA4/Ig" {} \;

find . -type f -name '*.css' -exec sed -i \
	"s/#15539e/#16a085/Ig;\
	s/#0f3b71/#138f76;/Ig;\
	s/#3583e3/#16a085/Ig;\
	s/#629fea/#16a085/Ig;\
	s/#1c5187/#16a085/Ig;\
	s/#3584e4/#16a085/Ig;\
	s/#4a90d9/#16a085/Ig;\
	s/#185fb4/#16a085/Ig;\
	s/#1b6acb/#16a085/Ig;\
	s/21, 83, 158/22, 160, 133/Ig" {} \;

	
	glib-compile-resources gnome-shell-theme.gresource.xml
cd ../

# Written by Muhammad Aliff Muazzam (Tester2009)
# https://facebook.com/Tester2009
# https://github.com/alepcat1710
# Date: August 26, 2015
# Updated: September 14, 2015. 1.0v
# Tested on: Ubuntu 14.04 LTS
# Feel free to use. Do not change copyright, mastah !

: '
The MIT License (MIT)
Copyright (c) [2015] [Muhammad Aliff Muazzam]
Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:
The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
'
dkmrVer="dekomoriAtom 1.0v"
clear &&
echo "	$dkmrVer Copyright (c) 2015 Muhammad Aliff Muazzam August 26, 2015"
echo "	First on ubuntu? Let me install basic software!"
echo "	Written by @Tester2009"
echo "	Make my life easier !"

read -p "	Before proceed. Please makesure you have a STABLE INTERNET CONNECTION! PROCEED ? [Y/n] " confirm
if [ "$confirm" = "y" ]
then

echo "	Updating system.."
echo "	Please enter your password to continue"
sudo apt-get update &&
sudo apt-get upgrade &&
sudo apt-get autoremove &&
sudo apt-get clean &&
sudo apt-get install -f &&
sudo apt-get dist-upgrade &&
echo "	Done update! Now proceed to installing.."

read -p "	Install ubuntu restricted extras? (You can play restricted formats using Totem and Rythmbox) [Y/n] " restricted_prompt
if [ "$restricted_prompt" = "y" ]
then
	sudo apt-get install ubuntu-restricted-extras
	echo "	Ubuntu restricted extras installed!"
fi

echo "	Installing VLC" &&
sudo apt-get install vlc &&
echo "	VLC installed!"

echo "	Installing GIMP" &&
sudo apt-get install gimp &&
echo "	GIMP installed!"

echo "	Installing whois" && # updated August 29, 2015
sudo apt-get install whois &&
echo "	whois installed!"

echo "	Installing gparted" && #updated August 29, 2015
sudo apt-get install gparted &&
echo "	gparted installed!"

read -p "	Do you want to install Aircrack-ng? [Y/n] " aircrack_prompt
if [ "$aircrack_prompt" = "y" ]
then
	sudo apt-get install aircrack-ng
	echo "	Aircrack-ng installed!"
fi

read -p "	Do you want to install Nmap? [Y/n] " nmap_prompt
if [ "$nmap_prompt" = "y" ]
then
	sudo apt-get install nmap
	echo "	Nmap installed!"
fi

read -p "	Rename bluetooth? (Please makesure your bluetooth is enabled!) [Y/n] " bluetooth_prompt
if [ "$bluetooth_prompt" = "y" ]; then
	read -p "	Name ? " nameB
	sudo hciconfig hci0 name $nameB
	echo "	Bluetooth renamed to: $nameB !"
fi

echo "	Last thing..."
echo "	Cleaning up..."
sudo apt-get -f install &&
sudo apt-get autoremove &&
sudo apt-get -y autoclean &&
sudo apt-get -y clean
echo "	$dkmrVer completed!"

# if user dont want to continue
else echo "You can try $dkmrVer next time :')"
fi

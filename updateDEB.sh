#!/usr/bin/env bash

# UpdateDEB v1.2 (GNU/Linux x86_64).
# Copyright (C) 2021 egrullon <Amix>.
# License GPLv3+: GNU GPL version 3 or later <https://www.gnu.org/licenses/gpl-3.0.html>.
# This program comes with ABSOLUTELY NO WARRANTY.
# This is free software and you are free to change and redistribute it.

# Author: egrullon <Amix>
# Date: 2021-04-08
# egrullon@cystrong.com
# www.cystrong.com
# Description: Bash Script for Update, Upgrade and Dist-Upgrade any pure Debian GNU/Linux Distribution.


: '

 █████  █████               █████            █████             ██████████   ██████████ ███████████ 
░░███  ░░███               ░░███            ░░███             ░░███░░░░███ ░░███░░░░░█░░███░░░░░███
 ░███   ░███  ████████   ███████   ██████   ███████    ██████  ░███   ░░███ ░███  █ ░  ░███    ░███
 ░███   ░███ ░░███░░███ ███░░███  ░░░░░███ ░░░███░    ███░░███ ░███    ░███ ░██████    ░██████████ 
 ░███   ░███  ░███ ░███░███ ░███   ███████   ░███    ░███████  ░███    ░███ ░███░░█    ░███░░░░░███
 ░███   ░███  ░███ ░███░███ ░███  ███░░███   ░███ ███░███░░░   ░███    ███  ░███ ░   █ ░███    ░███
 ░░████████   ░███████ ░░████████░░████████  ░░█████ ░░██████  ██████████   ██████████ ███████████ 
  ░░░░░░░░    ░███░░░   ░░░░░░░░  ░░░░░░░░    ░░░░░   ░░░░░░  ░░░░░░░░░░   ░░░░░░░░░░ ░░░░░░░░░░░  
              ░███                                                                                 
              █████                                                                                
             ░░░░░                                                                                 v1.2

'

# Remove unnecessary packages from the cache.

apt autoclean && 


# Remove unnecessary packages including older kernel images.

apt autoremove &&


# Update the list of repositories.

echo
echo "First - Update" 
echo
apt -y update && 


# Update the list of available packages.

echo
echo "Second - Upgrade"
echo
apt -y upgrade &&


# Make inquiries about the configuration of packages and kernel components.	

echo
echo "Third - Dist-Upgrade"
echo
apt -y dist-upgrade &&
apt -y full-upgrade && 
apt autoclean &&

echo
echo "Clean Display"
sleep 2
clear

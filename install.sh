#!/bin/bash
#SSShot

DIR=$(pwd)
GREEN='\e[1;32m'
YELLOW='\e[1;33m'
NC='\e[0m'

echo -e "[${YELLOW}INFO${NC}] Updating apt cache...";
sudo apt update > /dev/null
echo -e "[${GREEN}OK${NC}] Updated apt cache.";

if ! [ -x "$(command -v xdotool)" ]; then
  echo -e "[${YELLOW}INFO${NC}] xdotool is not installed. Installing now...";
  sudo apt install xdotool > /dev/null
  echo -e "[${GREEN}OK${NC}] Installed xdotool!";
fi
if ! [ -x "$(command -v xclip)" ]; then
  echo -e "[${YELLOW}INFO${NC}] xclip is not installed. Installing now...";
  sudo apt install xclip > /dev/null
  echo -e "[${GREEN}OK${NC}] Installed xclip!";
fi
if ! [ -x "$(command -v imagemagick)" ]; then
  echo -e "[${YELLOW}INFO${NC}] imagemagick is not installed. Installing now...";
  sudo apt install imagemagick > /dev/null
  echo -e "[${GREEN}OK${NC}] Installed imagemagick!";
fi

sudo scp ${DIR}/ssshot /usr/bin/
sudo scp -r ${DIR}/SSShot /usr/bin/


echo -e "[${YELLOW}INFO${NC}] If you want to enable features like remote server uploading, please edit the config at '/usr/bin/SSShot/ssshot.config'";
echo -e "[${GREEN}OK${NC}] SSShot is now installed! Give it a try with 'ssshot -h'";

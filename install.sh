#!/bin/bash
#SSShot

DIR=$(pwd)
GREEN='\e[1;32m'
YELLOW='\e[1;33m'
NC='\e[0m'

sudo scp ${DIR}/ssshot /usr/bin/
sudo scp -r ${DIR}/SSShot /usr/bin/

echo -e "[${GREEN}OK${NC}] SSShot is now installed! Give it a try with 'ssshot -h'";
echo -e "[${YELLOW}INFO${NC}] If you want to enable features like remote server uploading, please edit the config at '/usr/bin/SSShot/ssshot.config'";
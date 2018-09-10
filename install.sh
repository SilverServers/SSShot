#!/bin/bash
#SSShot

DIR=$(pwd)
GREEN='\e[1;32m'
NC='\e[0m'

sudo scp ${DIR}/ssshot /usr/bin/
sudo scp -r ${DIR}/SSShot /usr/bin/

echo -e "[${GREEN}OK${NC}] SSShot is now installed! Please edit the config at '/usr/bin/SSShot/ssshot.config', then give it a try with 'ssshot -h'";
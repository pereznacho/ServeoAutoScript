#!/bin/bash

GREEN='\033[0;32m'
BLUE='\033[0;34m'
BWhite='\033[1;37m'
NC='\033[0m'

if command -v autossh > /dev/null 2>&1; then
    echo -e "${BLUE}AutoSSH Binary found, keep moving..." 
    echo -e "${GREEN}Please, choose your Serveo custom Port: "
    read subdom

    echo -e "${BLUE}Starting autossh with your custom Port${NC} ${BWhite}serveo.net:$subdom\n"
    ssh -R $subdom:localhost:9005 serveo.net
else
    echo -e "${GREEN}Program does not exist. We will install it!"
    sudo apt install -y autossh > /dev/null 2>&1 
    echo -e "${BLUE}AutoSSH has been installed successfully. Running the script again, please wait a few seconds..."
    bash ./serveo.sh
fi

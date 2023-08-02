#!/bin/bash

GREEN='\033[0;32m'
BLUE='\033[0;34m'
BWhite='\033[1;37m'
NC='\033[0m'

if command -v autossh > /dev/null 2>&1; then
    echo -e "${BLUE}Program exists, keep moving..." 
    echo -e "${GREEN}Please, choose your Serveo subdomain: "
    read subdom

    echo -e "${BLUE}Starting autossh with your custom SubDomain${NC} ${BWhite}$subdom.serveo.net\n"
    autossh -M 0 -R $subdom.serveo.net:80:localhost:8080 serveo.net
else
    echo -e "${GREEN}Program does not exist. We will install it!"
    sudo apt install -y autossh > /dev/null 2>&1 
    echo -e "${BLUE}Please re-run the script again, config your API key and you will be ready to setup your own Serveo Subdomain."
fi

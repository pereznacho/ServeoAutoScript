#!/bin/bash

GREEN='\033[0;32m'
BLUE='\033[0;34m'
BWhite='\033[1;37m'
NC='\033[0m'

echo -e "${GREEN}Please, choose your Serveo subdomain: "
read subdom

echo -e "${BLUE}Starting autossh with your custom SubDomain${NC} ${BWhite}$subdom.serveo.net\n"
autossh -M 0 -R $subdom.serveo.net:80:localhost:8080 serveo.net

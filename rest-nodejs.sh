#!/bin/bash

# The script implements the process of creating a simple RESTful web service with nodejs.
# Environment:
#   Ubuntu 16.04 LTS
# Reference:
#   https://www.digitalocean.com/community/tutorials/how-to-install-node-js-on-ubuntu-16-04
#   https://nodejust.com/node-js-restful-api-tutorial/zh-cn/

WORKDIR=~/rest-nodejs

echo "==================Phase 1 of 3: set environment=========================="
sudo apt update
cd ~
curl -sL https://deb.nodesource.com/setup_6.x -o nodesource_setup.sh
sudo bash nodesource_setup.sh
sudo apt install vim git build-essential nodejs
#sudo apt install npm
mkdir -p $WORKDIR
cd $WORKDIR
git clone https://github.com/tridlh/rest-nodejs.git
cd rest-nodejs
echo "==================Phase 2 of 3: build===================================="
echo "!!Notice: Please hit "Enter" to use default configs"
npm init
npm install router body-parser
echo "==================Phase 3 of 3: run service=============================="
echo "To test the service, open another terminal and input commands."
echo "POST 1:"
echo "  curl -X POST --data 'buy milk' --header 'Content-Type: text/plain' http://localhost:3000/todo -v"
echo "GET 1:"
echo "  curl http://localhost:3000/todo/1"
echo "DELETE 1:"
echo "  curl -X DELETE http://localhost:3000/todo/1"
echo "GET all:"
echo "  curl http://localhost:3000/todo"
echo "PUT 1:"
echo "  curl -X PUT --data 'buy shit' --header 'Content-Type: text/plain' http://localhost:3000/todo/1"
node server.js

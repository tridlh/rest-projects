#!/bin/bash

# The script implements the process of creating a simple RESTful web service with python2.
# Environment:
#   Ubuntu 16.04 LTS
# Reference:
#   http://www.dreamsyssoft.com/python-scripting-tutorial/create-simple-rest-web-service-with-python.php

WORKDIR=~/rest-python

echo "==================Phase 1 of 2: set environment=========================="
sudo apt update
cd ~
sudo apt install vim git build-essential python python-setuptools
sudo easy_install web.py
mkdir -p $WORKDIR
cd $WORKDIR
git clone https://github.com/tridlh/rest-python.git
cd rest-python
echo "==================Phase 2 of 2: run service=============================="
echo "Use any of the following URLs to test the service:"
echo "    http://localhost:8080/users"
echo "    http://localhost:8080/users/1"
echo "    http://localhost:8080/users/2"
echo "    http://localhost:8080/users/3"
./rest.py

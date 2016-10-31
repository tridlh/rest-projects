#!/bin/bash

# The script implements the process of creating a "hello world" RESTful web service with Spring.
# Environment:
#   Ubuntu 16.04 LTS
# Reference:
#   https://spring.io/guides/gs/rest-service/
#   https://www.zhihu.com/question/28557115/answer/48094438

WORKDIR=~/rest-java

echo "==================Phase 1 of 3: set environment=========================="
sudo apt update
sudo apt install vim git openjdk-8-jdk build-essential
echo "==================Phase 2 of 3: build===================================="
mkdir -p $WORKDIR
cd $WORKDIR
git clone https://github.com/tridlh/gs-rest-service.git
cd gs-rest-service/initial
./gradlew build
echo "==================Phase 3 of 3: run service=============================="
echo "To test the service, visit http://localhost:8080/greeting, where you see"
echo "  {"id":1,"content":"Hello, World!"}"
echo "Provide a name query string parameter with http://localhost:8080/greeting?name=User"
echo "  {"id":1,"content":"Hello, User!"}"
java -jar build/libs/gs-rest-service-0.1.0.jar

#!/usr/bin/env bash

# source: http://docs.mongodb.org/manual/tutorial/install-mongodb-on-os-x/
# @TODO: Only install the parts that are not yet installed
# @TODO: Account for Linux operating system

if [ -z "$1" ]
    project='yourNewApp'
else
    project="$1"
fi

# make sure the latest and greatest are available
brew update

# install MongoDB
brew install mongodb --devel

# create a location for Mongo to store DBs
sudo mkdir -p /data/db
chown -R "$USER" /data/db

# install the MEAN commandline tool
sudo npm install -g mean-cli 
sudo chown -R "$USER" ~/.npm

# start a new MEAN project
mean init "${project}"
cd "${project}"

# install dependencies
bower install
npm install

# start MongoDB
mongod

# start Gulp
gulp

# visit the newly created MEAN project
open http://localhost:3000/

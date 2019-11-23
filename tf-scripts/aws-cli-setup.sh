#!bin/bash

#running an update 
apt-get update && apt-get upgrade

#installing aws-cli
apt-get install aws-cli 

#configuring awscli
aws configure


#!bin/bash

#deleting previos installs
rm -rf tf-bin/

#creating directory in /opt for installation
mkdir tf-bin/
cd tf-bin/

#downloading terraform package and unzipping it
wget https://releases.hashicorp.com/terraform/0.12.16/terraform_0.12.16_linux_amd64.zip
unzip *.zip

echo $PATH

#setting the path for the terraform binary
export PATH=$PATH:$(pwd)
source /etc/environment/
echo $PATH

#testing version
terraform -v

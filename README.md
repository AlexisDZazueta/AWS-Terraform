# AWS Terraform
Example project to deploy an AWS architecture with Terraform

## Steps to make a Terraform / Ansible instalation for AWS
* Enter in root mode
  ```console
  user@domain:~$ sudo su
  ```
* Check that Python was intalled
  ```console
  root@domain:/home/user# python --version
  ```
* Make an update
  ```console
  root@domain:/home/user# apt-get update
  ```
* Install Python Pip
  ```console
  root@domain:/home/user# apt-get install python-pip
  ```
* Upgrade Python Pip
  ```console
  root@domain:/home/user# pip install --upgrade pip
  ```
* Download and install Terraform
  ```console
  root@domain:/home/user# curl -O https://releases.hashicorp.com/terraform/0.11.11/terraform_0.11.11_linux_amd64.zip
  root@domain:/home/user# mkdir /bin/terraform
  root@domain:/home/user# unzip terraform_0.11.11_linux_amd64.zip -d /bin/terraform
  root@domain:/home/user# export PATH=$PATH:/bin/terraform
  root@domain:/home/user# terraform --version
  ```
* Install the AWS CLI
  ```console
  root@domain:/home/user# pip install awscli --upgrade
  root@domain:/home/user# aws --version
  ```
* Install Software Commons
  ```console
  root@domain:/home/user# apt-get install sowftware-properties-common
  ```
* Install Ansible
  ```console
  root@domain:/home/user# apt-add-repository ppa:ansible/ansible
  root@domain:/home/user# apt-get update
  root@domain:/home/user# apt-get install ansible
  root@domain:/home/user# ansible --version
  ```
* Generate a SSH Key
  ```console
  root@domain:/home/user# ssh-keygen
  Enter file in which to save the key (/root/.ssh/id_rsa): /root/.ssh/{keyname}
  Enter passphrase (empty for no passphrase):
  Enter same passphrase again:
  root@domain:/home/user# ssh-agent bash
  root@domain:/home/user# ssh-add ~/.ssh/{keyname}
  root@domain:/home/user# ssh-add -l
  ```
* Edit the ansible.cfg file
  ```console
  root@domain:/home/user# vim /etc/ansible/ansible.cfg
  (Uncomment the "#host_key_checking = false" line)
  ```
* Add an user in AWS IAM and download the credentials.csv
* Prepare a domain (if you not have one, buy it preferably in AWS Route53)
* Configure the AWS CLI with a profile
  ```console
  root@domain:/home/user# aws configure --profile {profilename}
  AWS Access Key ID [****ABCD]: {Access Key ID from credentials.csv}
  AWS Secret Access Key [****1a2b]: {Secret Access Key from credentials.csv}
  Default region name [us-east-1]: {Region from your project}
  Default output format [None]:
  root@domain:/home/user# aws ec2 describe-instances --profile {profilename}
  root@domain:/home/user# aws route53 create-reusable-delegation-set --caller-reference 1234 --profile {profilename}
  (Save the response of this command, for example in an file with "vim route53")
  ```
* Edit your domain in AWS Console to change the Name Servers to the Name Servers of the last command, then check that the name servers of the hosted zone was changed
* Make a git clone of this repository, make a file named "terraform.tfvars" to set your variables and let's begin with the project
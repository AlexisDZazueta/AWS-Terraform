# AWS-Terraform
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
  (Uncomment the "#host_key_cheking = false" line)
  ```
* Make the project folder
  ```console
  root@domain:/home/user# mkdir terransible
  root@domain:/home/user# cd terransible
  ```
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
  root@domain:/home/user# apt install python-pip
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
#!/bin/bash
yum update -y
yum install nginx -y
amazon-linux-extras install -y nginx1.12
systemctl enable nginx
systemctl start nginx
systemctl enable nginx

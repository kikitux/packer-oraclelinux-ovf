#!/usr/bin/env bash
set -e

rpm -q git &>/dev/null || yum install -y git

service oracle-xe configure responseFile=/vagrant/provision/xe.rsp

usermod -a -G vagrant oracle

if [ ! -d /home/oracle/odpi ]; then
  cd /home/oracle
  git clone https://github.com/oracle/odpi.git
  cp /vagrant/provision/oracle_profile .bash_profile
  chown -R oracle: odpi
fi

sudo su - oracle /vagrant/test.sh 2>&1

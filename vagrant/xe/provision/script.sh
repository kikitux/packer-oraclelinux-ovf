#!/usr/bin/env bash
set -e

service oracle-xe configure responseFile=/vagrant/provision/xe.rsp
usermod -a -G vagrant oracle

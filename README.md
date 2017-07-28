# packer-oraclelinux-ovf

![travis](https://api.travis-ci.org/kikitux/packer-oraclelinux-ovf.svg?branch=master)

POC of packer using virtualbox-ovf that allow us start from an existing box.

read about packer [virtualbox-ovf here](https://www.packer.io/docs/builders/virtualbox-ovf.html)

requirements:
- [packer](https://packer.io)
- [vagrant](https://vagrantup.com)
- oracle-xe 11.2 rpm and place it on `sw/oracle-xe-11.2.0-1.0.x86_64.rpm`

## how to use:

### Make

A makefile is provided to help with different tasks.

`make` will build all the boxes from template.

`make clean` will remove the `file.box`

`make cleanall` will remove the `file.box` and the download ova from `packer_cache`

`make removebox` will remove the boxes from vagrant


### Manually


```
packer build oraclelinux7.json
cd vagrant/default
vagrant up
```

Packer will download the ova, and run the provisioning scripts defined in the template.
At the end, it will create `oraclelinux7.box` file that can be used with vagrant.

This example used the ova box available here:
https://github.com/kikitux/packer-oraclelinux-ovf/releases

## xe

There is a packer box for oracle-xe database (Express)


using packer, we will create a local vagrant box `xe.box` with our rpm installed.

### Packer
```
packer build xe.json
```

### Vagrant

on first vagrant up, our db will be configured.
```
cd vagrant/xe
vagrant up
```

## odpi

Using the same `xe` box, there is a sample aplication, oracle odpi C/CPP driver.

### Packer
```
packer build xe.json
```

### Vagrant

on first vagrant up, our db will be configured.

```
cd vagrant/odpi
vagrant up
```

this will:
- configure xe database
- clone odpi repo
- compile
- run all the test

Sample run [log here](https://gist.github.com/kikitux/01642587d88a54137724546e39cf24cb)

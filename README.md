# packer-oracle-ovf

POC of packer using virtualbox-ovf that allow us start from an existing box.

read about packer [virtualbox-ovf here](https://www.packer.io/docs/builders/virtualbox-ovf.html)

requirements:
- [packer](https://packer.io)
- [vagrant](https://vagrantup.com)

how to use:

```
packer build template.json
vagrant up
```

Packer will download the ova, and run the provisioning scripts defined in the template.
At the end, it will create `oraclelinux7.box` file that can be used with vagrant.

This example used the ova box available here:
http://www.oracle.com/technetwork/server-storage/linux/downloads/vm-for-hol-1896500.html

## xe

There is a packer box for oracle-xe database (Express)

download `oracle-xe` 11.2 rpm and place it on `sw/oracle-xe-11.2.0-1.0.x86_64.rpm`


### Packer

```
packer build xe.json
```

### Vagrant
Test 

```
cd vagrant/xe
vagrant up
```

## odpi

Using the same `xe` box, there is a sample aplication, oracle odpi C/CPP driver.

### Vagrant
Test 

```
cd vagrant/odpi
vagrant up
```


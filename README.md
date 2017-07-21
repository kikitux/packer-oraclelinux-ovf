#

POC of packer using virtualbox-ovf that allow us start from an existing box.

how to use:

```
packer build template.json
vagrant up
```


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


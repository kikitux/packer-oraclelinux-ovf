# packer-oracle-ovf

POC of packer using virtualbox-ovf that allow us start from an existing box.

read about packer [virtualbox-ovf here](https://www.packer.io/docs/builders/virtualbox-ovf.html)


how to use:

```
packer build template.json
vagrant up
```

Packer will download the ova, and run the provisioning scripts defined in the template.
At the end, it will create `oraclelinux7.box` file that can be used with vagrant.


This example used the ova box available here:
http://www.oracle.com/technetwork/server-storage/linux/downloads/vm-for-hol-1896500.html

#

This is a Vagrant project that uses Oracle-XE DB and the cx_Oracle Python driver.

The python used is 2.7 and we install pip from there.

```
#pip
which pip 2>/dev/null || yum install -y python27-python-pip.noarch

source /opt/rh/python27/enable
pip install --upgrade pip
python -m pip install cx_Oracle --upgrade
```

In order to use our XE database and this python environment, we can use:
```
#set new python environment
source /opt/rh/python27/enable

#set environment for oracle
PATH=$PATH:$HOME/bin
PATH=$PATH:/u01/app/oracle/product/11.2.0/xe/bin
export PATH
ORACLE_SID=XE
ORAENV_ASK=NO source oraenv


#run sample
python /vagrant/sample.py
```


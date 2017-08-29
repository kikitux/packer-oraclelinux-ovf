#

```
#pip
which pip 2>/dev/null || yum install -y python27-python-pip.noarch

source /opt/rh/python27/enable
pip install --upgrade pip
python -m pip install cx_Oracle --upgrade

#set environment for oracle
PATH=$PATH:$HOME/bin
PATH=$PATH:/u01/app/oracle/product/11.2.0/xe/bin
export PATH
ORACLE_SID=XE
ORAENV_ASK=NO source oraenv

#install cx_Oracle
python -m pip install cx_Oracle --upgrade

#run sample
python /vagrant/sample.py
```


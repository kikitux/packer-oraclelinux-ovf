#!/usr/bin/env bash

ORACLE_BASE=/home/oracle
ORACLE_SID=XE
ORAENV_ASK=NO source oraenv
sqlplus / as sysdba @/home/oracle/odpi/test/sql/SetupTest.sql

cd /home/oracle/odpi/
make
cd /home/oracle/odpi/test/
make

/home/oracle/odpi/test/build/TestSuiteRunner

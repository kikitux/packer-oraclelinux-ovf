#!/usr/bin/env python2

import sys
import cx_Oracle
import time

def printf (format,*args):
  sys.stdout.write (format % args)
  sys.stdout.write ("\n")

def printException (exception):
  error, = exception.args
  printf ("Error code = %s",error.code);
  printf ("Error message = %s",error.message);

try:
  connection = cx_Oracle.connect('system','Password1')
except cx_Oracle.DatabaseError, exception:
  printf ('Failed to connect to %s',databaseName)
  printException (exception)
  exit (1)

cursor = connection.cursor ()

query="select sysdate from dual"
printf(query)

try:
  cursor.execute (query)
except cx_Oracle.DatabaseError, exception:
  printf ('Failed to select ')
  printException (exception)
  exit (1)

count = cursor.fetchone ()[0]
print count

#connection.commit()
cursor.close ()
connection.close ()

exit (0)

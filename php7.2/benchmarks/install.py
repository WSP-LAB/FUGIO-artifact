#!/usr/bin/python3

import os
import sys

app_info = {
    'TCPDF-6.3.4.tar.gz': '',
    'drupal-7.78.tar.gz': 'drupal.sql',
    'SwiftMailer-5.4.12.tar.gz': '',
    'SwiftMailer-6.0.0.tar.gz': '',
    'Monolog-1.7.0.tar.gz': '',
    'Monolog-1.18.0.tar.gz': '',
    'Monolog-2.0.0.tar.gz': '',
    'Laminas.tar.gz': '',
    'Yii.tar.gz': '',
    'typo3_9.3.0.tar.gz': 'typo3.sql'
}

if len(sys.argv) < 2:
  print ('[Usage] {} [app_tar_gz]'.format(sys.arg[0]))
  sys.exit()

APP = sys.argv[1]
if APP in app_info:
  os.system('tar xvf {} -C /app'.format(APP))
  if app_info[APP]:
    dbfile = app_info[APP]
    dbname = dbfile.split('.')[0]
    os.system('mysql -uroot -e "drop database if exists {}"'.format(dbname))
    os.system('mysql -uroot -e "create database {}"'.format(dbname))
    os.system('mysql -uroot {} < db/{}'.format(dbname, dbfile))
elif APP == "all":
  for app in app_info:
    os.system('tar xvf {} -C /app'.format(app))
    if app_info[app]:
      dbfile = app_info[app]
      dbname = dbfile.split('.')[0] 
      os.system('mysql -uroot -e "drop database if exists {}"'.format(dbname))  
      os.system('mysql -uroot -e "create database {}"'.format(dbname))   
      os.system('mysql -uroot {} < db/{}'.format(dbname, dbfile))  
else:
  print ('Not supporting application: {}'.format(APP))

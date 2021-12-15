#!/usr/bin/python3

import os
import sys

app_info = {
  'wordpress-PHPExcel-1.8.1.tar.gz': 'phpexcel181.sql',
  'wordpress-PHPExcel-1.8.2.tar.gz': 'phpexcel182.sql',
  'wordpress-Dompdf.tar.gz': 'dompdf.sql',
  'wordpress-Guzzle.tar.gz': 'guzzle.sql',
  'wordpress-WooCommerce-2.6.0.tar.gz': 'woo260.sql',
  'wordpress-WooCommerce-3.4.0.tar.gz': 'woo340.sql',
  'wordpress-Emailsubscribers.tar.gz': 'emailsub.sql',
  'wordpress-EverestForms.tar.gz': 'everest.sql',
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

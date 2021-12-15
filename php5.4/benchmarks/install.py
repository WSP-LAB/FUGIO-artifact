#!/usr/bin/python3

import os
import sys

app_info = {
  'contao-3.2.4.tar.gz': 'contao.sql',
  'piwik-0.4.5.tar.gz': 'piwik.sql',
  'glpi-0.83.9.tar.gz': 'glpi.sql',
  'joomla-3.0.2.tar.gz': 'joomla.sql',
  'cubecart-5.2.0.tar.gz': 'cubecart.sql',
  'cmsmadesimple-1.11.9.tar.gz': 'cms.sql',
  'owa-1.5.6.tar.gz': 'owa.sql',
  'vanilla-2.0.18.5.tar.gz': 'vanilla.sql',
  'SwiftMailer-5.0.1.tar.gz': '',
  'SwiftMailer-5.1.0.tar.gz': '',
  'smarty-3.1.28.tar.gz': '',
  'ZendFramework-1.12.20.tar.gz': ''
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

# For cuebecart
if APP == "cubecart-5.2.0.tar.gz" or APP == "all":
  os.system('wget -O /tmp/ioncube_loaders_lin_x86-64.tar.gz https://downloads.ioncube.com/loader_downloads/ioncube_loaders_lin_x86-64.tar.gz')
  os.system('tar xzf /tmp/ioncube_loaders_lin_x86-64.tar.gz -C /tmp/')
  os.system('cp /tmp/ioncube/ioncube_loader_lin_5.4.so /usr/local/lib/php/extensions/no-debug-non-zts-20100525/ioncube_loader_lin_5.4.so')
  os.system('grep -qF -- "; zend_extension=/usr/local/lib/php/extensions/no-debug-non-zts-20100525/ioncube_loader_lin_5.4.so" /usr/local/lib/php.ini || echo "; zend_extension=/usr/local/lib/php/extensions/no-debug-non-zts-20100525/ioncube_loader_lin_5.4.so" >> /usr/local/lib/php.ini')

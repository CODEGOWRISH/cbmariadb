#
#
#  Attributes file
#
#

#default['softwareStageDir'] = '/vagrant/MariaDB'
default['softwareStageDir'] = '/mariadb-rpms'

# Test line
#default['rpmsToInstall'] = [
#'MariaDB-10.1.11-centos7-x86_64-common.rpm'
#]

default['packagesToRemove'] = [
  'postfix'
]

default['preReqPakages'] = [
  'boost-program-options',
  'unixODBC',
  'lsof',
  'perl-DBI'
]

# DO NOT change the order of rpms below
default['rpmsToInstall'] = [
'galera-25.3.12-1.rhel7.el7.centos.x86_64.rpm',
'jemalloc-3.6.0-1.el7.x86_64.rpm',
'jemalloc-devel-3.6.0-1.el7.x86_64.rpm',
'MariaDB-10.1.11-centos7-x86_64-common.rpm',
'MariaDB-10.1.11-centos7-x86_64-client.rpm',
'MariaDB-10.1.11-centos7-x86_64-compat.rpm',
'MariaDB-10.1.11-centos7-x86_64-devel.rpm',
'MariaDB-10.1.11-centos7-x86_64-server.rpm',
'MariaDB-10.1.11-centos7-x86_64-connect-engine.rpm',
'MariaDB-10.1.11-centos7-x86_64-gssapi-client.rpm',
'MariaDB-10.1.11-centos7-x86_64-gssapi-server.rpm',
'MariaDB-10.1.11-centos7-x86_64-shared.rpm',
'MariaDB-10.1.11-centos7-x86_64-test.rpm'
]

# HR DB SQL File
default['crDbHrSqlFile'] = 'create_db_hr.sql'
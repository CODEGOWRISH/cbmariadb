#
#  Run mysql_secure_install
#
#  After:  initial instllation
#  Before: further configuration
#
#  To:
#  set root password, remove unnecessary databases, disallowing remote login etc
#
#  Reference:  http://www.tecmint.com/install-mariadb-in-linux/
#


bash 'Secure the installation' do
  user 'root'

  code <<-EOH
    mysql_secure_installation <<EOF

    Y
    root
    root
    Y
    Y
    Y
    Y
    EOF

    /etc/init.d/mysql restart
    
  EOH

end


#
#
#  create_server_cnf.rb
#
#

# Backup original configuration file

serverConfigFile = node[:serverConfigFile]

execute "backup current #{serverConfigFile}" do
  user "root"
  command "mv #{serverConfigFile} #{serverConfigFile}.orig"
  #not_if File.exist?("#{serverConfigFile}.orig")

  not_if do ::File.exists?("#{serverConfigFile}.orig") end
end

template node[:serverConfigFile] do
  source 'server_cnf.erb'
   owner 'root'
   group 'root'
    mode '0755'

  variables({
    :binlogName     => node[:binlogName],
    :expireLogDays  => node[:expireLogDays],
    :binlogFormat   => node[:binlogFormat]
    })

end
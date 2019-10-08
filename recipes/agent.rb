package 'zabbix-agent' do
  action [:install, :upgrade]
end


# Install configuration
template 'zabbix_agentd.conf' do
  path '/etc/zabbix/zabbix_agentd.conf'
  source 'zabbix_agentd.conf.erb'
  owner 'root'
  group 'root'
  mode '644'
 # notifies :restart, 'service[zabbix-agent]'
end


execute "apt-get-update-periodic" do
command "apt-get update"
end


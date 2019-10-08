remote_file '/tmp/zabbix-agent_4.4.0~beta1-1+xenial_amd64.deb' do
  source 'http://repo.zabbix.com/zabbix/4.3/ubuntu/pool/main/z/zabbix/zabbix-agent_4.4.0~beta1-1%2Bxenial_amd64.deb'
  owner 'root'
  group 'root'
  mode '0644'
  action :create_if_missing
end

dpkg_package 'zabbix-agent_4.4.0~beta1-1+xenial_amd64.deb' do
  source "/tmp/zabbix-agent_4.4.0~beta1-1+xenial_amd64.deb"
  action :install
end


# Install configuration
template 'zabbix_agentd.conf' do
  path '/etc/zabbix/zabbix_agentd.conf'
  source 'zabbix_agentd.conf.erb'
  owner 'root'
  group 'root'
  mode '644'
end


execute "apt-get-update-periodic" do
command "apt-get update"
end


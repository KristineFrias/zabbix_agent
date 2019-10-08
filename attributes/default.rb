# Array of valid zabbix servers and active servers
default['zabbix']['agent']['config']['Server'] = ['52.33.10.142']
default['zabbix']['agent']['config']['ServerActive'] = ['52.33.10.142']
default['zabbix']['agent']['config']['Hostname'] = node['fqdn']

default['zabbix']['agent']['version']['linux']['repo']['deb'] = '4.2'

case node['platform_family']
when 'debian'
  default['zabbix']['agent']['version']['linux']['deb'] = "1:4.2.7-1+"
  default['zabbix']['agent']['conf_path'] = '/etc/zabbix/zabbix_agentd.conf'
  default['zabbix']['agent']['service_name'] = 'zabbix-agent'

  default['zabbix']['agent']['action']['linux']['deb'] = 'install'

  default['zabbix']['agent']['config']['LogFile'] = '/var/log/zabbix/zabbix_agentd.log'
  default['zabbix']['agent']['config']['PidFile'] = '/var/run/zabbix/zabbix_agentd.pid'
  default['zabbix']['agent']['config']['Include'] = '/etc/zabbix/zabbix_agentd.d/*.conf'
end

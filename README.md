**Description**

Install and configure zabbix agent from packages available from Zabbix SIA official packages.

**Cookbooks**

Declared in metadata.rb.

**Platform**

Ubuntu


**Recipes**

*default*

*Run repository and agent*

repository - Configure apt repository for the current version of zabbix agent.

agent - Install zabbix agent package.


**Usage**


Starting zabbix agent process and status:

> ```
> /etc/init.d/zabbix-agent start
> 
> /etc/init.d/zabbix-agent status
> 
> /etc/init.d/zabbix-agent restart`
> ```


name 'zabbix_agent'
maintainer 'The Authors'
maintainer_email 'kristine.frias@chromedia.com'
license 'All Rights Reserved'
description 'Installs/Configures zabbix agent'
long_description 'Installs/Configures zabbix agent'
version '0.1.0'
chef_version '>= 14.7.17'

# The `issues_url` points to the location where issues for this cookbook are
# tracked.  A `View Issues` link will be displayed on this cookbook's page when
# uploaded to a Supermarket.
#
# issues_url 'https://github.com/<insert_org_here>/zabbix_agent/issues'

# The `source_url` points to the development repository for this cookbook.  A
# `View Source` link will be displayed on this cookbook's page when uploaded to
# a Supermarket.
#
# source_url 'https://github.com/<insert_org_here>/zabbix_agent'

depends 'zabbix_agent_lite', '~> 0.1.13'
supports 'ubuntu', '>= 14.04'

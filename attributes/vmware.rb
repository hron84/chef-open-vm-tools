# default['open-vm-tools']['vmware_repository']

case node['platform_family']
when 'rhel', 'fedora'
  default['open-vm-tools']['vmware_repository'] = "http://packages.vmware.com/tools/esx/latest/rhel#{node['platform_version'].to_i}/$basearch/"
when 'debian'
  default['open-vm-tools']['vmware_repository'] = "http://packages.vmware.com/tools/esx/latest/ubuntu"
end

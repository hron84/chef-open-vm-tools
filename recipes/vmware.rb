repo_url = node['open-vm-tools']['vmware_repository']

case node['platform_family']
when 'rhel', 'fedora'
  yum_repository 'nginx' do
    description 'VMware Tools Repository'
    baseurl     repo_url
    gpgkey      'http://packages.vmware.com/tools/keys/VMWARE-PACKAGING-GPG-RSA-KEY.pub'
    action :create
  end
when 'debian'
  include_recipe 'apt::default'

  apt_repository 'nginx' do
    uri          repo_url
    distribution node['lsb']['codename']
    components   %w[main]
    deb_src      false
    key          'http://packages.vmware.com/tools/keys/VMWARE-PACKAGING-GPG-RSA-KEY.pub'
  end
end

package 'open-vm-tools' do
  action :remove
end

package 'vmware-tools-esx'


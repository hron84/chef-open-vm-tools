package "open-vm-dkms" do
  options "--no-install-recommends"
  action :install
end

package "open-vm-tools" do
  options "--no-install-recommends"
  action :install
end

[ "open-vm-dkms", "open-vm-tools" ].each do |vm_package|
  package vm_package do
    options "--no-install-recommends"
    action :install
  end
end

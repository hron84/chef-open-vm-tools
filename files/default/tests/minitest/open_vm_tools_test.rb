require "minitest/autorun"

describe_recipe "memcached::default" do
  include MiniTest::Chef::Assertions
  include MiniTest::Chef::Context
  include MiniTest::Chef::Resources

  describe "packages" do
    it "installs the open-vm-tools packages" do
      [ "open-vm-dkms", "open-vm-tools" ].each do |vm_packages|
        package(vm_package).must_be_installed
      end
    end
  end

  describe "services" do
    it "runs as a daemon" do
      service("open-vm-tools").must_be_running
    end

    it "boots on startup" do
      service("open-vm-tools").must_be_enabled
    end
  end
end

name              "open-vm-tools"
maintainer        "Hector Castro"
maintainer_email  "hectcastro@gmail.com"
license           "Apache 2.0"
description       "Installs and configures VMware Tools."
version           "0.0.3"
recipe            "open-vm-tools", "Installs and configures open-vm-tools"

%w{ ubuntu }.each do |os|
    supports os
end

#!/bin/vbash
source /opt/vyatta/etc/functions/script-template
configure

# MGMT-to-LAN
# Rule 1
Allow all connections
set firewall name MGMT-to-LAN rule 1 action accept

# LAN-to-MGMT
# Rule 1
Allow established connections
set firewall name LAN-to-MGMT rule 1 action accept
set firewall name LAN-to-MGMT rule 1 state established enable
# Rule 10
Allow established connections
set firewall name LAN-to-MGMT rule 10 action accept
set firewall name LAN-to-MGMT rule 10 state established enable
# Rule 1
Allow established connections
set firewall name LAN-to-MGMT rule 20 action accept
set firewall name LAN-to-MGMT rule 20 destination address 10.0.5.10
set firewall name LAN-to-MGMT rule 20 destination port 8089
set firewall name LAN-to-MGMT rule 20 protocol tcp

commit
save
exit
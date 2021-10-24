#WAN-to-LAN
#Rule 1
Allow established connections
set firewall name WAN-to-LAN rule 1 action accept
set firewall name WAN-to-LAN rule 1 state established enable

# DMZ-to-LAN
# Rule 1
Allow established connections
set firewall name DMZ-to-LAN rule 1 action accept
set firewall name DMZ-to-LAN rule 1 state established enable

# Rule 10
Allow traffic on 514/udp going to 10.0.5.10
set firewall name DMZ-to-LAN rule 10 action accept
set firewall name DMZ-to-LAN rule 10 destination address 10.0.5.10
set firewall name DMZ-to-LAN rule 10 destination port 514
set firewall name DMZ-to-LAN rule 10 protocol udp

# Rule 20
Allow traffic on 9997/tcp going to 10.0.5.10
set firewall name DMZ-to-LAN rule 20 action accept
set firewall name DMZ-to-LAN rule 20 destination address 10.0.5.10
set firewall name DMZ-to-LAN rule 20 destination port 9997
set firewall name DMZ-to-LAN rule 20 protocol tcp

# Rule 30
Allow traffic on 8089/tcp going to 10.0.5.10
set firewall name DMZ-to-LAN rule 30 action accept
set firewall name DMZ-to-LAN rule 30 destination address 10.0.5.10
set firewall name DMZ-to-LAN rule 30 destination port 8089
set firewall name DMZ-to-LAN rule 30 protocol tcp

# LAN-to-DMZ
# Rule 10
Allow all
set firewall name LAN-to-DMZ rule 10 action accept

# LAN-to-WAN
# Rule 1
Allow all
set firewall name LAN-to-WAN rule 1 action accept

# DMZ-to-WAN
# Rule 1
Allow all
set firewall name DMZ-to-WAN rule 1 action accept

# WAN-to-DMZ
# Rule 1
Allow established connections
set firewall name WAN-to-DMZ rule 1 action accept
set firewall name WAN-to-DMZ rule 1 state established enable
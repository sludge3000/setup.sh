# The following must be run as root.
# Writen for Debian11
#
# For scapy
cp /usr/bin/python3 /home/motoko/.python39_netraw
chown motoko /home/motoko/.python39_netraw
chmod +x,u+x /home/motoko/.python39_netraw
/sbin/setcap cap_net_raw=eip /home/motoko/.python39_netraw

#
#
# For tcpdump
/usr/sbin/groupadd pcap
/usr/sbin/usermod -a -G pcap motoko
/usr/bin/chgrp pcap /usr/bin/tcpdump
/usr/bin/chmod 750 /usr/bin/tcpdump
/sbin/setcap cap_net_raw,cap_net_admin=eip /usr/bin/tcpdump

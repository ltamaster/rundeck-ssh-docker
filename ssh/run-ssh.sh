#!/usr/bin/env bash

set -e

cat >>/etc/ssh/sshd_config <<END

#
# - Open Integration Solutions -
#
AcceptEnv RD_*

#
#
MaxSessions 200
MaxStartups 20:60:100

# Rundeck Support recommendation - avoid ssh disconnects
ClientAliveInterval 0

#
# Attempt to eliminate ssh connect issues - channel not open
#
UseDNS no

END

/usr/sbin/sshd -D -E /var/log/sshd.log && tail -f /var/log/sshd.log



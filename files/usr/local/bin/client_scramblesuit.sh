#!/bin/bash

# This command starts an obfsproxy instance which listens
# for connections on 10.0.0.10:1191
# Incoming data is obfuscated and forwarded to the
# destination server running on 45.43.000.00:15411
#
# The Raspberry PI address is 10.0.0.10
# The VPS address 45.43.000.00 example, not actual
#
# The obfsproxy client's session ticket is stored in
# /tmp/scramblesuit-client

python /usr/local/bin/obfsproxy \
--log-min-severity=info \
--data-dir=/tmp/scramblesuit-client \
scramblesuit \
--password=<obfs_password> \
--dest <server_ip>:<server_port> \
client 192.168.1.126:1191

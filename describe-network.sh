#!/bin/bash

# Collect general network interface information
echo "=== Network Interfaces Information ==="
ip addr show

# Collect bridge information
echo "=== Bridge Information ==="
brctl show

# Collect VLAN information
echo "=== VLAN Information ==="
vconfig list

# Collect Open vSwitch bridge information
echo "=== Open vSwitch Bridges ==="
ovs-vsctl show

# Collect Open vSwitch port information
echo "=== Open vSwitch Ports ==="
ovs-ofctl show

# Collect IP routes
echo "=== IP Route Information ==="
ip route show

# Collect firewall rules
echo "=== Firewall Rules ==="
iptables -L -v -n

# Collect information about current DHCP servers
echo "=== DHCP Server Information ==="
ps aux | grep dhcpd

# Collect information about current routing tables
echo "=== Routing Table Information ==="
netstat -rn

# Collect current IP addressing schemes
echo "=== IP Addressing Information ==="
ip addr show

echo "=== Script Execution Completed ==="

#!/bin/bash
ip link set dev "$1" up
ip addr add ${address}/${netmask} broadcast ${broadcast} dev "$1"

[[ -z ${gateway} ]] || {
  ip route add default via ${gateway}
  }

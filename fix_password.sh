#!/usr/bin/env bash

usage()
{
    echo "$0 $image $hostname"
}

if [ $# -ne 2 ]; then
    usage
else
   sudo virt-customize -a "$1" --root-password password:abc123 --uninstall cloud-init --hostname $2
fi

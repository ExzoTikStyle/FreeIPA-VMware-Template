#!/bin/bash
printf "%s" "waiting for network connection is up ..."
while ! timeout 0.2 ping -c 1 -n <url for service> &> /dev/null
do
    printf "%c" "."
done
sed -i '/^::1/d' /etc/hosts
/usr/sbin/ipa-client-install -U --domain=<domain> --realm=<realm> --password=<passwd> -p admin --server=freeipa-master --server=freeipa-replica --mkhomedir --no-nisdomain --no-dns-sshfp -N
exit 0
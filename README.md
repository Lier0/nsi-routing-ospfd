# nsi-routing-ospfd
Quagga ospfd env

## Requirement
* vagrant (https://www.vagrantup.com/downloads)
* virtualbox -default- (https://www.virtualbox.org/wiki/Downloads)

## Deployment
```
wget https://github.com/Lier0/nsi-routing-ospfd/archive/refs/heads/main.zip
unzip main.zip
cd nsi-routing-ospfd-main
vagrant up
```

## Extra
### local config
* Check https://github.com/Lier0/ubuntu20.04-quagga-ospfd/blob/main/setup.sh

### cli
```
telnet localhost 2604
zebra

> enable
# conf t
(config)# router ospf
(config-router)# help
...
# sh ip os route
```

### doc
https://www.quagga.net/docs/quagga.html#OSPFv2

## Practical Exercice
prefix with 192.168.
```
        72.0--[R]--84.0
        /      |       \
60.0--[R]     83.0     [R]--64.0
        \      |       /
        73.0--[R]--94.0

```

Configure ospfd on each host to enable:
```
vagrant@ubuntu-ospf1:~$ ping -I 192.168.60.1 192.168.64.4
PING 192.168.64.4 (192.168.64.4) from 192.168.60.1 : 56(84) bytes of data.
64 bytes from 192.168.64.4: icmp_seq=1 ttl=63 time=0.535 ms
```

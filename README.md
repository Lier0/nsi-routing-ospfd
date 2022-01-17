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
telnet localhost 2602
zebra

> enable
# conf t
(config)# router ospf
(config-router)# help
```

### doc
https://www.quagga.net/docs/quagga.html#OSPFv2

## Practical Exercice
192.168.
60.1, 61.1 <=> 61.2, 62.2 <=> 62.3, 63.3

Configure ospfd on each host to enable:
```
vagrant@ubuntu-ospf1:~$ ping 192.168.63.3
PING 192.168.63.3 (192.168.63.3) 56(84) bytes of data.
64 bytes from 192.168.63.3: icmp_seq=1 ttl=63 time=0.534 ms
```

# = sys =
sed "s/#net\.ipv4\.ip_forward/net.ipv4.ip_forward/g" -i /etc/sysctl.conf
sysctl -p

# = apt =
apt-get update
apt-get install -y quagga

# = etc =
cp /usr/share/doc/quagga-core/examples/zebra.conf.sample /etc/quagga/zebra.conf
service zebra restart
cat << EOF > /etc/quagga/ospfd.conf
hostname ospfd
password zebra
log stdout
!
router ospf
 redistribute connected
!
line vty
!
EOF
service ospfd restart

from ubuntu:18.04

add snx_install_linux30.sh /root
add snx.sh /root

run dpkg --add-architecture i386 && apt-get update && \
        apt-get install -y libstdc++5:i386 libpam0g:i386 libx11-6:i386 \
        expect bzip2 kmod iptables net-tools iputils-ping iproute2 openssh-client

run cd /root && bash -x snx_install_linux30.sh

run chmod +x /root/snx.sh
cmd ["/root/snx.sh"]

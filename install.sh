if [ ! -d "/link" ]; then
ln -s `pwd` /link
fi

if [ ! -f "/etc/rc.local" ]; then
echo "#!/bin/sh -e" > /etc/rc.local
chmod 777 /etc/rc.local
fi

if [ `grep -c "/link/shell/init.sh" /etc/rc.local` -eq '0' ];then
    echo -e "\n/link/shell/init.sh &\n" >> /etc/rc.local
fi

apt install libqt5core5a libqt5network5 nginx libnginx-mod-rtmp -y

if [ `grep -c "rtmp.conf" /etc/nginx/nginx.conf` -eq '0' ];then
    echo -e "\ninclude /link/config/rtmp.conf;\n" >> /etc/nginx/nginx.conf
fi

cp ./lib/* /usr/lib/ -a

sync

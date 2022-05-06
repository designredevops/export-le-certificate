#!/bin/sh
echo Pushing config
scp /root/pki/*.pem root@192.168.aaa.bbb:/etc/pki/tls/letsencrypt/
scp /root/pki/*.pem root@192.168.ccc.ddd:/etc/pki/tls/letsencrypt/
[...]
echo Restarting remote services
ssh root@192.168.aaa.bbb "systemctl restart postfix"
ssh root@192.168.aaa.bbb "systemctl restart dovecot"
ssh root@192.168.ccc.ddd "systemctl restart apache2"
[...]

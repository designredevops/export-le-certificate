#!/bin/sh
rsync --checksum -Ltve 'ssh' root@192.168.xx.yy:/etc/letsencrypt/live/[mydomain]/* /root/pki/

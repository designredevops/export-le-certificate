#!/bin/bash
function age() {
   local filename=$1
   local changed=`stat -c %Y "$filename"`
   local now=`date +%s`
   local elapsed
   let elapsed=now-changed
   echo $elapsed
}

/root/pki/fetch.sh
# push new certs if less that 7.5d old
if [ $(age "/root/pki/cert.pem") -lt 648000 ]; then
        /root/pki/push.sh
fi

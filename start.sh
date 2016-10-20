#!/bin/sh
apk update && apk add --no-cache wget openssl ca-certificates
VERSION=${VERSION:-v1.4.3}
COMPONENTS=${COMPONENTS:-"kube-apiserver kube-controller-manager kube-scheduler kubectl"}
mkdir -p /shared /tmp/download
cd /var/tmp
for i in $COMPONENTS
do
    echo "Install $VERSION/bin/linux/amd64/$i"
    wget -q https://storage.googleapis.com/kubernetes-release/release/$VERSION/bin/linux/amd64/$i
    chmod 755 $i
    cp $i /shared
done
rm -rf /tmp/download

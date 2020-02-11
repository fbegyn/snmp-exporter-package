#!/bin/env bash

./fetch.sh $1 $2

sed -i "s/vx.y.z/v$1/g" ./nfpm.yaml

nfpm pkg --target snmp_exporter-$1.$2.deb

rm -rf ./bin

rm -rf ./snmp_exporter-$1.$2.tar.gz
rm -rf ./snmp_exporter-$1.$2
rm -rf ./snmp.yml

git checkout -- nfpm.yaml

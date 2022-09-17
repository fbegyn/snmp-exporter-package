#! /usr/bin/env bash

./fetch.sh $1 $2

sed "s/vx.y.z/v$1/g" ./nfpm.yaml > ./nfpm-temp.yaml

nfpm pkg --packager deb --config="nfpm-temp.yaml"
nfpm pkg --packager rpm --config="nfpm-temp.yaml"

rm -rf ./snmp_exporter ./snmp.yml ./snmp_exporter-$1.linux-$2 \
	./snmp_exporter-$1.linux-$2.tar.gz ./nfpm-temp.yaml ./LICENSE ./NOTICE

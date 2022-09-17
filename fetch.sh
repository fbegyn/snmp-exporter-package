#! /usr/bin/env bash
curl -fSL -o "./snmp_exporter-$1.linux-$2.tar.gz" \
  "https://github.com/prometheus/snmp_exporter/releases/download/v$1/snmp_exporter-$1.linux-$2.tar.gz"
tar xzvf ./snmp_exporter-$1.linux-$2.tar.gz
cp ./snmp_exporter-$1.linux-$2/* ./

#!/bin/env bash
curl -fSL -o "./snmp_exporter-$1.$2.tar.gz" \
  "https://github.com/prometheus/snmp_exporter/releases/download/v$1/snmp_exporter-$1.$2.tar.gz"

tar xzvf ./snmp_exporter-$1.$2.tar.gz

# get binaries
mkdir ./bin
cp ./snmp_exporter-$1.$2/snmp_exporter ./bin/
cp ./snmp_exporter-$1.$2/snmp.yml ./

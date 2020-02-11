#!/bin/sh
systemctl daemon-reload
systemctl enable snmp_exporter.service

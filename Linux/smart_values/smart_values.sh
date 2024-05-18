#!/bin/bash
echo "show Health Status (passed) "
smartctl -H /dev/sda
smartctl -H /dev/sdb
smartctl -H /dev/sdc
smartctl -H /dev/sdd
smartctl -H /dev/sde
smartctl -H /dev/sdf
smartctl -H /dev/sdg
smartctl -H /dev/sdh
smartctl -H /dev/sdi
smartctl -H /dev/sdj
smartctl -H /dev/sdk
smartctl -H /dev/sdl
smartctl -H /dev/sdm
smartctl -H /dev/sdn
echo "run smart check (short)"
smartctl -t short /dev/sda
smartctl -t short /dev/sdb
smartctl -t short /dev/sdc
smartctl -t short /dev/sdd
smartctl -t short /dev/sde
smartctl -t short /dev/sdf
smartctl -t short /dev/sdg
smartctl -t short /dev/sdh
smartctl -t short /dev/sdi
smartctl -t short /dev/sdj
smartctl -t short /dev/sdk
smartctl -t short /dev/sdl
smartctl -t short /dev/sdm
smartctl -t short /dev/sdn
echo "wait 2 min"
sleep 120s
echo "show test results"
smartctl -l selftest /dev/sda
smartctl -l selftest /dev/sdb
smartctl -l selftest /dev/sdc
smartctl -l selftest /dev/sdd
smartctl -l selftest /dev/sde
smartctl -l selftest /dev/sdf
smartctl -l selftest /dev/sdg
smartctl -l selftest /dev/sdh
smartctl -l selftest /dev/sdi
smartctl -l selftest /dev/sdj
smartctl -l selftest /dev/sdk
smartctl -l selftest /dev/sdl
smartctl -l selftest /dev/sdm
smartctl -l selftest /dev/sdn
echo "finished"


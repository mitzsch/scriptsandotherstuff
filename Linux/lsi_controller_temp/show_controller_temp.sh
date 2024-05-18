#!/bin/bash
echo "controller /c0"
./storcli/MegaRAID/storcli/storcli64 /c0 show all | grep -i "Temp"
sleep 1s
echo "controller /c1"
./storcli/MegaRAID/storcli/storcli64 /c1 show all | grep -i "Temp"

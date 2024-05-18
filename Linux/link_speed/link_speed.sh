#!/bin/bash
echo "show link speed"
ethtool eno1 | grep Speed

#!/bin/sh

LEVL=10

BATC=$(sed 's/%//' /sys/class/power_supply/BAT1/capacity)

test ${BATC} -le ${LEVL} && /home/stephen/bin/pop.sh Battery Level: ${BATC}%


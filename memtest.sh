#!/bin/sh
ramtotal=$(free | awk '/Mem/{print $2}')
ramusage=$(free | awk '/Mem/{print $3}')
let " rampercent=(($ramtotal * 5) / 10)"
echo "50% of memoty: $rampercent";
echo "Total RAM: $ramtotal";
echo "Usage RAM: $ramusage";
if [[ "$ramusage" -gt "$rampercent" ]]; then
echo "critical ram state"
else
echo "OK state"
fi






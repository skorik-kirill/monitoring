#!/bin/sh
ramtotal=$(free | awk '/Mem/{print $2}')
ramusage=$(free | awk '/Mem/{print $3}')
let "test = $ramtotal / 2"
echo "50% of memoty: $test";
echo "Total RAM: $ramtotal";
echo "Usage RAM: $ramusage";
if [[ "$ramusage" -gt "$test" ]]; then
echo "critical ram state"
else
echo "OK state"
fi




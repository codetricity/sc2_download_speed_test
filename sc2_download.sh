#!/bin/bash

URL=http://192.168.1.1/files/thetasc26c21a247d9055838792badc5/100RICOH/R0012311.MP4

for i in {1..5}
do
    echo "Start test $i"
    curl $URL --output R0012311.MP4
    echo "completed test $i"
    echo "-------------"
done

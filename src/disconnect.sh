#!/bin/bash

query=$1

address=`/usr/local/bin/blueutil --paired | grep "$query" | cut -d " " -f2`

clean_address=${address%?}

/usr/local/bin/blueutil --disconnect $clean_address --wait-disconnect $clean_address
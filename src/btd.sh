#!/bin/bash

cat << EOF
{
    "items": [
EOF

/usr/local/bin/blueutil --paired | grep ", connected" | cut -d\" -f2 | while read -r line; do echo '{"uid":  "'"$line"'", "arg": "'"$line"'", "title": "'$line'"}'; done | paste -sd "," -

cat << EOF
    ]
}
EOF

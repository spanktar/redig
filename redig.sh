#!/bin/bash

## Pipes the output of Redis' "client list" 
## through a sausage factory to make delicious cake.
#
## Feel free to adjust the output to your needs.
## If you want to adjust things, you'll probably
## be interested in the echo part after "sh -c"

tdbuf -oL redis-cli client list | \
    sed 's/addr=\([\.0-9]*\).*/\1/' | \
    grep -v "127.0.0.1" | \
    xargs -I % sh -c 'echo -n "% "; dig -x % +short' | \
    sed 's/.\{1\}$//' | \
    sort | \
    column -t
    
exit 0

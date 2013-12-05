redig
=====

Script for better understanding what clients are connected to a Redis instance

USAGE
-----

redig.sh

OUTPUT
------

You will receive two columns of data.

1. The IP address of the client
2. The hostname of the client

The list will be sorted by hostname. Note that localhost is excluded.

*Example*

$ ./redig.sh
10.0.0.23   chromosomes.example.com
10.0.0.42   deepthought.example.com
10.0.0.47   startrek.example.com
10.0.0.64   commodore.example.com
10.0.0.69   billandted.example.com
10.0.0.88   delorian.example.com
10.0.0.128  macintosh.example.com



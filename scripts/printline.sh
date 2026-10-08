#!/bin/bash
set -euo pipefail


head -n "$2" "$1" | tail -n 1 

#note to self: example using n=3. head prints first 3 lines, 
#then tail prints the last line of those three lines, giving you line 3
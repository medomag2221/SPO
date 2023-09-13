#!/bin/bash
#journalctl | grep -P "PID=$1" > echo
journalctl _PID=$1 > log.txt

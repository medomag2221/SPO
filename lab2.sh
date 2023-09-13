#!/bin/sh
journalctl | grep -P "PID=$1" > journal.log

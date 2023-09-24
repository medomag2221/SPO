#!/bin/bash
if [ $# == 0 ]; then
	echo "No args"
  	exit 1
fi
jrn=journalctl | grep -P "PID=$1"
if [ -z "$jrn" ]; then
   $jrn > journal.log
fi

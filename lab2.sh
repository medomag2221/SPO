#!/bin/bash
#journalctl для просмотра системного журнала или journalctl --since "2023-09-23" --until "2023-09-24"
journalctl | grep -P " $1:"

#!/bin/sh
grep "Node ID" "$1" | awk -F"=" '{print $2}' | sed 's/^[ \t]*//;s/[ \t]*$//'
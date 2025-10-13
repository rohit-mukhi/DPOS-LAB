#!/bin/bash

TOTAL_ARGS=$#
echo "Total Number of Arguments: $TOTAL_ARGS"
echo ""

echo "First Two Arguments:"

if [ -n "$1" ]; then
    echo "Argument 1 (\$1): $1"
else
    echo "Argument 1 (\$1): (None provided)"
fi

if [ -n "$2" ]; then
    echo "Argument 2 (\$2): $2"
else
    echo "Argument 2 (\$2): (None provided)"
fi

echo ""

echo "All Arguments"
echo "All Arguments (\$@): $@"

exit 0

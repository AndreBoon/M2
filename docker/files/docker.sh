#/bin/sh

if service docker status | grep "active (running)" > /dev/null
then
    echo "service running, everything is fine"
    exit 0
else
    echo "is not running"
    exit 2
fi

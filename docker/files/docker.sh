#/bin/sh
SERVICE=docker

ps ax | grep -v grep | grep -v $0 | grep $SERVICE > /dev/null
if [ $? -eq 0 ]
then
    echo "$SERVICE service running, everything is fine"
    exit 0
else
    echo "$SERVICE is not running"
    exit 2
fi

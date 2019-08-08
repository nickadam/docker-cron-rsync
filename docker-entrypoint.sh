#!/bin/sh

if [ -z "$CRON_SCHEDULE" ] ||
  [ -z "$SOURCE" ] ||
  [ -z "$DESTINATION" ]
then
  echo "Environment variables must be set"
  exit 1
fi

if [ ! -z "$PORT" ]
then
  PORT="-p $PORT"
fi

if [ ! -z "$IDENTITY_FILE" ]
then
  cp "$IDENTITY_FILE" /id_rsa
  chmod 600 /id_rsa
  command="rsync -a --delete -e 'ssh -i /id_rsa -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null $PORT' $SOURCE $DESTINATION"
else
  command="rsync -a --delete $SOURCE $DESTINATION"
fi

echo -e "$CRON_SCHEDULE $command" | crontab -

crond

sleep 3155760000

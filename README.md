# docker-cron-rsync
Run rsync on a cron schedule

This will also delete files on the destination. Be careful.

If you want to use ssh, you have to use an IDENTITY_FILE. Be warned, known host
checking is completely disabled, so this is susceptible to MITM attacks.

docker-cron-rsync is compatible with [docker-weak-ssh](https://github.com/nickadam/docker-weak-ssh).
It will get the private key from the server if `DOCKER_WEAK_SSH_HOST` is defined.

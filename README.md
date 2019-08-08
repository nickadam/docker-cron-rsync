# docker-cron-rsync
Run rsync on a cron schedule

This will also delete files on the destination. Be careful.

If you want to use ssh, you have to use an IDENTITY_FILE. Be warned, known host
checking is completely disabled, so this is susceptible to MITM attacks.

#stop postgres on Mac
pg_ctl stop -W -t 1 -s -D /usr/local/var/postgres -m f


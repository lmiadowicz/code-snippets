#create backup 
pg_dump dbname > dumpfile
pg_dump dbname | gzip > filename.gz

#restore
pg_restore -d dbname filename

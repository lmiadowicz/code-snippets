#Running multiple PostgreSQL versions simultaneously on Mac OS or Linux

#stop postgres on Mac
pg_ctl stop -W -t 1 -s -D /usr/local/var/postgres -m f

#MAC - installing multiple versions of Postgresql 
brew tap petere/postgresql
brew install postgresql-12
brew install postgresql-11
brew uninstall postgresql
brew install postgresql-common

#pg_createcluster [options] <version> <name>
pg_createcluster 9.3 main
pg_lsclusters
#start/stop/restart/reload clusters
pg_ctlcluster 9.6 main start
#delete cluster
pg_dropcluster <version> <name>
psql --cluster 9.3/main -p port


#LINUX - installing multiple versions of Postgresql
sudo apt install postgresql-9.5

sudo systemctl start postgresql@9.5-main (stop to stop)
sudo systemctl start postgresql@10-main

#find all clusters
pg_lsclusters

#version config /etc/postgresql/postgresql.conf

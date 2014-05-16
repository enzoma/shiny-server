#!/bin/sh

# errors shouldn't cause script to exit
set +e

sudo ln -f -s "/usr/local/shiny-server/bin/shiny-server" /usr/bin/shiny-server
# See if "shiny" user exists
if id -u shiny >/dev/null 2>&1;
then
   echo User "shiny" already exists
else
   echo Creating user "shiny"
   sudo useradd -r -m shiny
fi

if [ ! -d "/srv/shiny-server" ];
then
   sudo mkdir -p /srv/shiny-server
   # And seed with initial apps and index.html
   sudo ln -s /usr/local/shiny-server/samples/welcome.html /srv/shiny-server/index.html
   sudo ln -s /usr/local/shiny-server/samples/sample-apps /srv/shiny-server/sample-apps
fi

sudo mkdir -p /etc/shiny-server
if [ ! -f "/etc/shiny-server/shiny-server.conf" ];
then
   sudo cp /usr/local/shiny-server/config/default.config /etc/shiny-server/shiny-server.conf
fi

sudo mkdir -p /var/log/shiny-server

# Place the logrotate script, if applicable
if test -d /etc/logrotate.d
then
   sudo cp /usr/local/shiny-server/config/logrotate /etc/logrotate.d/shiny-server
fi

# Log dir must be writable by "shiny" user
sudo chown shiny:shiny /var/log/shiny-server

# add upstart profile or init.d script and start the server
if test -d /etc/init/
then
   # remove any previously existing init.d based scheme
   service shiny-server stop 2>/dev/null
   rm -f /etc/init.d/shiny-server

   sudo cp /usr/local/shiny-server/config/upstart/shiny-server.conf /etc/init/
   sudo initctl reload-configuration
   sudo initctl stop shiny-server 2>/dev/null
   sudo initctl start shiny-server
else
   cp /usr/local/shiny-server/config/init.d/redhat/shiny-server /etc/init.d/
   chmod +x /etc/init.d/shiny-server
   chkconfig --add shiny-server
   service shiny-server stop 2>/dev/null
   service shiny-server start
fi

# clear error termination state
set -e

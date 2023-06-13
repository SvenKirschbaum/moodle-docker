## Prerequisites

- Docker is instelled and working
- Unix based System for the automatic plugin install script
- Moodle Source code (Branch MOODLE_402_STABLE) and this repository have been cloned to the local machine

## Quick start

```bash
# Set up path to Moodle code
export MOODLE_DOCKER_WWWROOT=/path/to/moodle/code
# Choose a db server (Currently supported: pgsql, mariadb, mysql, mssql, oracle)
export MOODLE_DOCKER_DB=pgsql

# Ensure customized config.php for the Docker containers is in place
cp config.docker-template.php $MOODLE_DOCKER_WWWROOT/config.php

# Install Stack and Plugins
bin/moodle-install-stack

# Start up containers
bin/moodle-docker-compose up -d
```

You can then access the Moodle-Installer via http://localhost:8000/. Please follow the instructions on screen. 

After the installation process is completed, go to Site Administration -> Plugins -> Stack, and configure the following settings:

Platform type: Server
Maxima version: 5.44.0
URL of the Maxima Pool: http://maxima:8080/maxima

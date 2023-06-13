The content of this repository has been adapted to provide a easily deployable development and testing environment for STACK. 

## Prerequisites

- Unix based System
- Docker is installed and working
- Moodle Source code (Branch MOODLE_402_STABLE, master is currently broken),  and this repository have been cloned to the local machine

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

You can then access the Moodle-Installer via http://localhost:8000/. Please follow the instructions on screen to complete the installation. 

After the installation process is completed, run the `bin/moodle-update-stack-settings` to update the STACK configuration (psqlm mysql and mariadb only). Alternatively, you can go to Site Administration -> Plugins -> Stack, and configure the following settings:

- Platform type: Server
- Maxima version: 5.44.0
- URL of the Maxima Pool: http://maxima:8080/maxima

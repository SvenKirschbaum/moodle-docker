The content of this repository has been adapted to provide an easily deployable development and testing environment for STACK. 

## Prerequisites

- Unix based System
- Docker is installed and working
- Moodle Source code and this repository have been cloned to the local machine

## Quick start

```bash
# Set up path to Moodle code
export MOODLE_DOCKER_WWWROOT=/path/to/moodle/code
# Choose a db server (Currently supported: pgsql, mariadb and mysql, mssql and oracle will reuqire manual intervention)
export MOODLE_DOCKER_DB=pgsql

# Ensure customized config.php for the Docker containers is in place
cp config.docker-template.php $MOODLE_DOCKER_WWWROOT/config.php

# Install the Stack Plugin and its dependencies into your moodle code 
bin/moodle-install-stack-plugin

# Wait for DB to come up
bin/moodle-docker-wait-for-db

# Start up containers
bin/moodle-docker-compose up -d

# Automatically install moodle
bin/moodle-install-database
```

You can then access Moodle via http://localhost:8000/.
The automatically created account has the username *admin* and the password *admin*.

To start using STACK, please open its configuration page (Site Administration -> Plugins -> STACK) and configure the following settings:

- Platform: Linux
- Maxima Version: default

ARG MOODLE_DOCKER_PHP_VERSION
FROM moodlehq/moodle-php-apache:${MOODLE_DOCKER_PHP_VERSION}

RUN apt-get update && \
    apt-get install -y gcc maxima gnuplot

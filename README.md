# Raspberry Pi Media Server runnin on docker

## Before you begin
* Setup you RPi
* attach an external disk and mount it to the RPi (permanent mount is the better option)
* clone the repo
* update .env.example (cp .env.example .env) with your details
* docker-compose up -d (to daemonize the containers)

## Don't forget
* to test your config (docker-compose config)
* docker-compose up CONTAINER_NAME - to run a single container (all dependent containers will also trigger a run)
* to ensure that the docker user $PUID and $PGID are owners of the dir tree mounted to the docker containers (preferably setup a cron job)

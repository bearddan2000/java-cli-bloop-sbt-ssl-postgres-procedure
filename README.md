# java-cli-bloop-sbt-ssl-postgres-procedure

## Description
Creates a small database table
called `dog` with an `insert update delete after` triggers.
The trigger function `fn_trigger` calls `sp_rolling_audit`
that remmoves old entries.

All output normally
seen in a terminal will be in `java-srv/log` which will dump to the screen. The project may seem to hang but the logs from the container must be written to the project this can take up to 3 min.

Uses self-sign ssl.

Compiled and ran from build server `bloop`.

# Build note
Dependencies must be compatable with jdk8 or less.

## Tech stack
- bloop
- java
- bloop-sbt
  - log4j
  - postgres driver

## Docker stack
- alpine:edge
- postgres:alpine
- hseeberger/scala-bloop-sbt:11.0.2-oraclelinux7_1.3.5_2.12.10

## To run
`sudo ./install.sh -u`
Creates java-srv/log

## To stop
`sudo ./install.sh -d`
Removes java-srv/log

## For help
`sudo ./install.sh -h`

## Credit
[Stored procedure based on](https://www.postgresqltutorial.com/postgresql-plpgsql/postgresql-create-procedure/)

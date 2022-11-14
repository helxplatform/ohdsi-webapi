#!/bin/bash

export DATASOURCE_URL=jdbc:postgresql://${DATASOURCE_CONNECTION_HOST}:5432/${DATASOURCE_USERNAME}
echo $DATASOURCE_URL
export FLYWAY_DATASOURCE_URL=jdbc:postgresql://${FLYWAY_DATASOURCE_CONNECTION_HOST}:5432/${FLYWAY_DATASOURCE_USERNAME}
echo $FLYWAY_DATASOURCE_URL

exec java ${DEFAULT_JAVA_OPTS} ${JAVA_OPTS} \
     -cp ".:WebAPI.jar:WEB-INF/lib/*.jar${CLASSPATH}" \
     org.springframework.boot.loader.WarLauncher

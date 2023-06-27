#!/usr/bin/env bash

# setup database
superset db upgrade

# create admin user
superset fab create-admin \
            --username "${ADMIN_USERNAME}" \
            --firstname "${ADMIN_FIRSTNAME}" \
            --lastname "${ADMIN_LASTNAME}" \
            --email "${ADMIN_EMAIL}" \
            --password "${ADMIN_PASSWORD}"

# setup roles and permissions
superset superset init 

# starting server
/bin/sh -c /usr/bin/run-server.sh

#!/bin/sh

set -e
until pg_isready -h db -p 5432 -q; do
  echo "---- Waiting for database to be ready..."
  sleep 1
done

echo "---- Database is ready."

SCRIPT_FILE="/opt/pyeutl/main.py"
echo "---- Updating database settings"
sed -i "s/user=\"postgres\"/user=\"${POSTGRES_USER}\"/" ${SCRIPT_FILE}
sed -i "s/host=\"localhost\"/host=\"${POSTGRES_HOST}\"/" ${SCRIPT_FILE}
sed -i "s/db=\"eutl\"/db=\"${POSTGRES_DB}\"/" ${SCRIPT_FILE}
sed -i "s/passw=\"password\"/passw=\"${POSTGRES_PASSWORD}\"/" ${SCRIPT_FILE}
sed -i "s/port=5432/port=${POSTGRES_PORT}/" ${SCRIPT_FILE}


source /opt/venv/bin/activate

exec "$@"
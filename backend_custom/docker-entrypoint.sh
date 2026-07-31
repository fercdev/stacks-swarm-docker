#!/bin/sh

echo "Leyendo secreto de swarm"

if [ -f /run/secrets/DB_PASSWORD ]; then
    echo "Secreto encontrado, exportando variable de entorno"
    export DB_PASS=$(cat /run/secrets/DB_PASSWORD)
    echo "Variable de entorno exportada: $DB_PASS"
fi

exec "$@"
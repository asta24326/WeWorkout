#!/bin/bash
set -e

echo "Creating application database and user..."

# PostgreSQL automatically initialised system
# We need to create only DB and user
# Connecting as postgres(administrator)
# -U postgres = connect as user "postgres"

psql -v ON_ERROR_STOP=1 --username "postgres" <<-EOSQL
	CREATE DATABASE $POSTGRES_DB;
	CREATE USER $POSTGRES_USER WITH ENCRYPTED PASSWORD '$POSTGRES_PASSWORD';
	GRANT ALL PRIVELEGES ON DATABASE $POSTGRES_DB TO $POSTGRES_USER;
EOSQL

echo "Database and user created succesfully!"
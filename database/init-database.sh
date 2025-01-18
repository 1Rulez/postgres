#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    CREATE SCHEMA IF NOT EXISTS igs_non_pay;
    CREATE SCHEMA IF NOT EXISTS smclinic;
    CREATE SCHEMA IF NOT EXISTS igs_reactivation;
    CREATE SCHEMA IF NOT EXISTS igs_kis;
    CREATE SCHEMA IF NOT EXISTS igs_casco;
    CREATE SCHEMA IF NOT EXISTS integration_sravni_kasco;
    ALTER DATABASE "$POSTGRES_DB" SET TIME ZONE 'Europe/Moscow';
EOSQL
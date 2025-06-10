# dbt-training

## Setup

```bash
python3 -m venv venv
source ./venv/bin/activate # WSL
source ./venv/Scripts/activate # Git Bash
pip install -r requirements.txt
dbt --version
```

## Connexion

Créer un fichier `.env` avec les variables suivantes:

```
DBT_PROJECT_DIR=<current_directory>
DBT_PROFILES_DIR=<current_directory>
DBT_SNOWFLAKE_ACCOUNT=<TBD>
DBT_SNOWFLAKE_USER=<TBD>
DBT_SNOWFLAKE_PASSWORD=<TBD>
DBT_SNOWFLAKE_ROLE=<TBD>
DBT_SNOWFLAKE_DB=<TBD>
DBT_SNOWFLAKE_WAREHOUSE=<TBD>
DBT_SNOWFLAKE_SCHEMA=<TBD>

```

Sourcer ce document & vérifier la connexion:

```bash
set -a
source .env
set +a
dbt debug
```

# dbt-training

## Setup

```bash
python3 -m venv venv
source ./venv/bin/activate
pip install -r requirements.txt
dbt --version
```

## Connexion

Mettre à jour le fichier `.env` avec les informations de connexions.

Pour s'assurer du bon fonctionnement:

```bash
dbt debug
```

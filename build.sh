#!/usr/bin/env bash
set -o errexit

pip install -r requirements.txt

python manage.py collectstatic --no-input

python manage.py migrate

# Cria o superuser sem pedir confirmação no terminal
python manage.py createsuperuser --no-input || true
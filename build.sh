#!/usr/bin/env bash
set -o errexit

pip install -r requirements.txt

python manage.py collectstatic --no-input

python manage.py migrate

# Cria o superuser sem pedir confirmação no terminal
DJANGO_SUPERUSER_PASSWORD=1234@Ifrn python manage.py createsuperuser --noinput --username=admin --cpf=12345
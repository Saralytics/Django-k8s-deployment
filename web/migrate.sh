#!/bin/bash
DJANGO_SUPERUSER_EMAIL=${DJANGO_SUPERUSER_EMAIL:-"hello@li.com"}
cd /app/

python manage.py migrate --noinput
python manage.py createsuperuser --email $DJANGO_SUPERUSER_EMAIL --noinput || true
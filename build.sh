#!/usr/bin/env bash
# exit on error
set -o errexit

# apt-get update
# apt-get install -y graphviz

pip install -r requirements.txt

python manage.py collectstatic --no-input
python manage.py migrate

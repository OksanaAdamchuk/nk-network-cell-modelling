#!/usr/bin/env bash
# exit on error
set -o errexit

sudo apt-get update
sudo apt-get install -y graphviz

pip install -r requirements.txt

python manage.py collectstatic --no-input
python manage.py migrate

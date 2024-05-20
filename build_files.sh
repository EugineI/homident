#!/bin/bash#!/bin/bash

# Ensure pip is installed and upgrade it
pip install --upgrade pip

# Install dependencies globally
pip install -r requirements.txt

# Django specific commands
python manage.py collectstatic --noinput
python manage.py migrate

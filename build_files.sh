#!/bin/bash

# Create a virtual environment
python3 -m venv venv
source venv/bin/activate

# Upgrade pip to the latest version
venv/bin/pip install --upgrade pip

# Install dependencies
venv/bin/pip install -r requirements.txt

# Django specific commands
venv/bin/python manage.py collectstatic --noinput
venv/bin/python manage.py migrate

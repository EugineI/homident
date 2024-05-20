#!/bin/bash

# Create a virtual environment
python -m venv venv
source venv/bin/activate

# Ensure pip is available and upgrade it
venv/bin/pip install --upgrade pip

# Install dependencies
venv/bin/pip install -r requirements.txt

# Django specific commands
venv/bin/python manage.py collectstatic --noinput
venv/bin/python manage.py migrate

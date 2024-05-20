#!/bin/bash

# Use the Python installed in the Vercel environment
python3 -m venv venv
source venv/bin/activate

# Upgrade pip to the latest version
pip install --upgrade pip

# Install dependencies
pip install -r requirements.txt

# Django specific commands
python manage.py collectstatic --noinput
python manage.py migrate

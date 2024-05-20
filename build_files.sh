#!/bin/bash

# Create a virtual environment if it doesn't exist
if [ ! -d "home" ]; then
    python -m venv home
fi

# Activate the virtual environment
source home/bin/activate

# Ensure pip is available and upgrade it
pip install --upgrade pip

# Install dependencies
pip install -r requirements.txt

# Django specific commands
python manage.py collectstatic --noinput
python manage.py migrate

# Deactivate the virtual environment
deactivate

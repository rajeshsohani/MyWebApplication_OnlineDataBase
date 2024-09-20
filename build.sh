#!/usr/bin/env bash

# Exit immediately if a command exits with a non-zero status
set -o errexit

# Install dependencies
pip install -r requirements.txt

# Set environment variables for the database (if needed)
export DATABASE_URL="postgresql://rajeshsohani01_user:CAA58ry4afSWmV2CLoHrWA3QoUa9CqKH@dpg-crmltft6l47c739so26g-a/rajeshsohani01"

# Run migrations
python manage.py migrate

# Collect static files
python manage.py collectstatic --noinput

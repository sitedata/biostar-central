#!/bin/bash

# This is an example database migrations script.

source activate engine

DJANGO_SETTINGS_MODULE=conf.site.site_settings

#python manage.py flush
python manage.py migrate
python manage.py collectstatic --noinput -v 0
python manage.py project --json initial/tutorial/tutorial-project.hjson --privacy public --jobs
python manage.py project --root ../biostar-recipes --json projects/cookbook/cookbook-project.hjson --privacy public --jobs

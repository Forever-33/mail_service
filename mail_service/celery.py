# coding=utf-8
# -*- coding: utf-8 -*-

from __future__ import absolute_import, unicode_literals
import os
from celery import Celery
from celery.schedules import crontab

os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'mail_service.settings')

app = Celery('mail_service')

# Load task modules from all registered Django app configs.
# Provide the module names where your tasks are defined.
app.autodiscover_tasks(['mailapp'])  # Replace 'mailapp' with the actual module name

# Update the broker URL to use RabbitMQ
app.conf.broker_url = 'amqp://guest:guest@localhost//'  # Replace with your RabbitMQ credentials and host

# config_from_object without 'namespace'
app.config_from_object('django.conf:settings')

# config_from_object without 'namespace'
app.config_from_object('django.conf:settings')

app.conf.beat_schedule = {
    'send-scheduled-mails': {
        'task': 'mailapp.tasks.send_scheduled_mail',  # Используйте полный путь к задаче
        'schedule': crontab(minute='*/5'),
    },
}









